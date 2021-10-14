"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.LuaDebugSession = void 0;
const vscode_debugadapter_1 = require("vscode-debugadapter");
const logger = require("vscode-debug-logger");
const fs_1 = require("fs");
const path = require("path");
const lrdb_debuggable_lua_1 = require("lrdb-debuggable-lua");
function stringify(value) {
    if (value == null) {
        return 'nil';
    }
    else if (value == undefined) {
        return 'none';
    }
    else {
        return JSON.stringify(value);
    }
}
class LuaDebugSession extends vscode_debugadapter_1.DebugSession {
    /**
     * Creates a new debug adapter that is used for one debug session.
     * We configure the default implementation of a debug adapter here.
     */
    constructor() {
        super();
        // maps from sourceFile to array of Breakpoints
        this._breakPoints = new Map();
        this._breakPointID = 1000;
        this._variableHandles = new vscode_debugadapter_1.Handles();
        this._sourceHandles = new vscode_debugadapter_1.Handles();
        // this debugger uses zero-based lines and columns
        this.setDebuggerLinesStartAt1(false);
        this.setDebuggerColumnsStartAt1(false);
        logger.init(e => this.sendEvent(e), "lrdb_help.log", true);
        logger.setMinLogLevel(logger.LogLevel.Verbose);
    }
    /**
     * The 'initialize' request is the first request called by the frontend
     * to interrogate the features the debug adapter provides.
     */
    initializeRequest(response) {
        if (this._debug_server_process) {
            this._debug_server_process.kill();
            delete this._debug_server_process;
        }
        if (this._debug_client) {
            this._debug_client.end();
            delete this._debug_client;
        }
        if (response.body) {
            // This debug adapter implements the configurationDoneRequest.
            response.body.supportsConfigurationDoneRequest = true;
            response.body.supportsConditionalBreakpoints = true;
            response.body.supportsHitConditionalBreakpoints = true;
            // make VS Code to use 'evaluate' when hovering over source
            response.body.supportsEvaluateForHovers = true;
        }
        this.sendResponse(response);
    }
    setupSourceEnv(sourceRoot) {
        this.convertClientLineToDebugger = (line) => {
            return line;
        };
        this.convertDebuggerLineToClient = (line) => {
            return line;
        };
        this.convertClientPathToDebugger = (clientPath) => {
            for (let index = 0; index < sourceRoot.length; index++) {
                const root = sourceRoot[index];
                const resolvedRoot = path.resolve(root);
                const resolvedClient = path.resolve(clientPath);
                if (resolvedClient.startsWith(resolvedRoot)) {
                    return path.relative(resolvedRoot, resolvedClient);
                }
            }
            return path.relative(sourceRoot[0], clientPath);
        };
        this.convertDebuggerPathToClient = (debuggerPath) => {
            if (!debuggerPath.startsWith('@')) {
                return '';
            }
            const filename = debuggerPath.substr(1);
            if (path.isAbsolute(filename)) {
                return filename;
            }
            else {
                if (sourceRoot.length > 1) {
                    for (let index = 0; index < sourceRoot.length; index++) {
                        const absolutePath = path.join(sourceRoot[index], filename);
                        if ((0, fs_1.existsSync)(absolutePath)) {
                            return absolutePath;
                        }
                    }
                }
                return path.join(sourceRoot[0], filename);
            }
        };
    }
    attachRequest(response, oargs) {
        const args = oargs;
        this._stopOnEntry = args.stopOnEntry;
        let sourceRoot = [""];
        this.setupSourceEnv(sourceRoot);
        this._debug_client = new lrdb_debuggable_lua_1.LRDBClient.Client(new lrdb_debuggable_lua_1.LRDBAdapter.TcpAdapter(args.port, args.host));
        this._debug_client.onNotify.on((event) => {
            this.handleServerEvents(event);
        });
        this._debug_client.onClose.on(() => {
            this.sendEvent(new vscode_debugadapter_1.TerminatedEvent());
        });
        this._debug_client.onOpen.on(() => {
            this.sendEvent(new vscode_debugadapter_1.InitializedEvent());
        });
        this.sendResponse(response);
    }
    configurationDoneRequest(response) {
        this.sendResponse(response);
    }
    setBreakPointsRequest(response, args) {
        if (!this._debug_client) {
            return;
        }
        const path = (args.source.path) ? args.source.path : "";
        // read file contents into array for direct access
        const lines = (0, fs_1.readFileSync)(path).toString().split('\n');
        const breakpoints = new Array();
        const debuggerFilePath = this.convertClientPathToDebugger(path);
        this._debug_client.clearBreakPoints({ file: debuggerFilePath });
        // verify breakpoint locations
        for (const souceBreakpoint of (args.breakpoints ? args.breakpoints : [])) {
            let l = this.convertClientLineToDebugger(souceBreakpoint.line);
            let verified = false;
            while (l <= lines.length) {
                const line = lines[l - 1].trim();
                // if a line is empty or starts with '--' we don't allow to set a breakpoint but move the breakpoint down
                if (line.length == 0 || line.startsWith('--')) {
                    l++;
                }
                else {
                    verified = true; // this breakpoint has been validated
                    break;
                }
            }
            const bp = (new vscode_debugadapter_1.Breakpoint(verified, this.convertDebuggerLineToClient(l)));
            bp.id = this._breakPointID++;
            breakpoints.push(bp);
            if (verified) {
                const sendbreakpoint = {
                    line: l,
                    file: debuggerFilePath,
                    condition: undefined,
                    hit_condition: undefined,
                };
                if (souceBreakpoint.condition) {
                    sendbreakpoint.condition = souceBreakpoint.condition;
                }
                if (souceBreakpoint.hitCondition) {
                    sendbreakpoint.hit_condition = souceBreakpoint.hitCondition;
                }
                this._debug_client.addBreakPoint(sendbreakpoint);
            }
        }
        if (path) {
            this._breakPoints.set(path, breakpoints);
        }
        // send back the actual breakpoint positions
        response.body = {
            breakpoints: breakpoints,
        };
        this.sendResponse(response);
    }
    threadsRequest(response) {
        // return the default thread
        response.body = {
            threads: [new vscode_debugadapter_1.Thread(LuaDebugSession.THREAD_ID, 'thread 1')],
        };
        this.sendResponse(response);
    }
    /**
     * Returns a fake 'stacktrace' where every 'stackframe' is a word from the current line.
     */
    stackTraceRequest(response, args) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.getStackTrace().then((res) => {
            if (res.result) {
                const startFrame = typeof args.startFrame === 'number' ? args.startFrame : 0;
                const maxLevels = typeof args.levels === 'number'
                    ? args.levels
                    : res.result.length - startFrame;
                const endFrame = Math.min(startFrame + maxLevels, res.result.length);
                const frames = new Array();
                for (let i = startFrame; i < endFrame; i++) {
                    const frame = res.result[i]; // use a word of the line as the stackframe name
                    const filename = this.convertDebuggerPathToClient(frame.file);
                    const source = new vscode_debugadapter_1.Source(frame.id, filename);
                    if (!frame.file.startsWith('@')) {
                        source.sourceReference = this._sourceHandles.create(frame.file);
                    }
                    frames.push(new vscode_debugadapter_1.StackFrame(i, frame.func, source, this.convertDebuggerLineToClient(frame.line), 0));
                }
                response.body = {
                    stackFrames: frames,
                    totalFrames: res.result.length,
                };
            }
            else {
                response.success = false;
                response.message = 'unknown error';
            }
            this.sendResponse(response);
        });
    }
    scopesRequest(response, args) {
        const scopes = [
            new vscode_debugadapter_1.Scope('Local', this._variableHandles.create({
                type: 'get_local_variable',
                params: {
                    stack_no: args.frameId,
                },
            }), false),
            new vscode_debugadapter_1.Scope('Upvalues', this._variableHandles.create({
                type: 'get_upvalues',
                params: {
                    stack_no: args.frameId,
                },
            }), false),
            new vscode_debugadapter_1.Scope('Global', this._variableHandles.create({
                type: 'get_global',
                params: {},
            }), true),
        ];
        response.body = {
            scopes: scopes,
        };
        this.sendResponse(response);
    }
    variablesRequest(response, args) {
        if (!this._debug_client) {
            return;
        }
        const parent = this._variableHandles.get(args.variablesReference);
        if (parent != null) {
            const res = (() => {
                switch (parent.type) {
                    case 'get_global':
                        return this._debug_client
                            .getGlobal(parent.params)
                            .then((res) => res.result);
                    case 'get_local_variable':
                        return this._debug_client
                            .getLocalVariable(parent.params)
                            .then((res) => res.result);
                    case 'get_upvalues':
                        return this._debug_client
                            .getUpvalues(parent.params)
                            .then((res) => res.result);
                    case 'eval':
                        return this._debug_client
                            .eval(parent.params)
                            .then((res) => res.result[0]);
                    default:
                        return Promise.reject(Error('invalid'));
                }
            })();
            res
                .then((result) => this.variablesRequestResponse(response, result, parent))
                .catch((err) => {
                response.success = false;
                response.message = err.message;
                this.sendResponse(response);
            });
        }
        else {
            response.success = false;
            this.sendResponse(response);
        }
    }
    variablesRequestResponse(response, variablesData, parent) {
        const evalParam = (k) => {
            switch (parent.type) {
                case 'eval': {
                    const key = typeof k === 'string' ? `"${k}"` : `${k}`;
                    return {
                        type: 'eval',
                        params: {
                            ...parent.params,
                            chunk: `(${parent.params.chunk})[${key}]`,
                        },
                    };
                }
                default: {
                    return {
                        type: 'eval',
                        params: {
                            stack_no: 0,
                            ...parent.params,
                            chunk: `${k}`,
                            upvalue: parent.type === 'get_upvalues',
                            local: parent.type === 'get_local_variable',
                            global: parent.type === 'get_global',
                        },
                    };
                }
            }
        };
        const variables = [];
        if (variablesData instanceof Array) {
            variablesData.forEach((v, i) => {
                const typename = typeof v;
                const k = i + 1;
                const varRef = (typename == 'object') ? this._variableHandles.create(evalParam(k)) : 0;
                variables.push({
                    name: `${k}`,
                    type: typename,
                    value: stringify(v),
                    variablesReference: varRef,
                });
            });
        }
        else if (typeof variablesData === 'object') {
            for (const k in variablesData) {
                const typename = typeof variablesData[k];
                const varRef = (typename == 'object') ? this._variableHandles.create(evalParam(k)) : 0;
                variables.push({
                    name: k,
                    type: typename,
                    value: stringify(variablesData[k]),
                    variablesReference: varRef,
                });
            }
        }
        response.body = {
            variables: variables,
        };
        this.sendResponse(response);
    }
    continueRequest(response) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.continue();
        this.sendResponse(response);
    }
    nextRequest(response) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.step();
        this.sendResponse(response);
    }
    stepInRequest(response) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.stepIn();
        this.sendResponse(response);
    }
    stepOutRequest(response) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.stepOut();
        this.sendResponse(response);
    }
    pauseRequest(response) {
        if (!this._debug_client) {
            return;
        }
        this._debug_client.pause();
        this.sendResponse(response);
    }
    sourceRequest(response, args) {
        const id = this._sourceHandles.get(args.sourceReference);
        if (id) {
            response.body = {
                content: id,
            };
        }
        this.sendResponse(response);
    }
    disconnectRequest(response) {
        if (this._debug_server_process) {
            this._debug_server_process.kill();
            delete this._debug_server_process;
        }
        if (this._debug_client) {
            this._debug_client.end();
            delete this._debug_client;
        }
        this.sendResponse(response);
    }
    evaluateRequest(response, args) {
        if (!this._debug_client) {
            response.success = false;
            this.sendResponse(response);
            return;
        }
        //		if (args.context == "watch" || args.context == "hover" || args.context == "repl") {
        const chunk = args.expression;
        const requestParam = { stack_no: (args.frameId) ? args.frameId : 0, chunk: chunk, depth: 0 };
        this._debug_client.eval(requestParam).then((res) => {
            if (res.result instanceof Array) {
                const ret = res.result.map(v => stringify(v)).join('	');
                let varRef = 0;
                if (res.result.length == 1) {
                    const refobj = res.result[0];
                    const typename = typeof refobj;
                    if (refobj && typename == 'object') {
                        varRef = this._variableHandles.create({
                            type: 'eval',
                            params: requestParam,
                        });
                    }
                }
                response.body = {
                    result: ret,
                    variablesReference: varRef,
                };
            }
            else {
                response.body = {
                    result: '',
                    variablesReference: 0,
                };
                response.success = false;
            }
            this.sendResponse(response);
        });
    }
    handleServerEvents(event) {
        if (!this._debug_client) {
            return;
        }
        if (event.method == 'paused') {
            if (event.params.reason === 'entry' && !this._stopOnEntry) {
                this._debug_client.continue();
            }
            else {
                this.sendEvent(new vscode_debugadapter_1.StoppedEvent(event.params.reason, LuaDebugSession.THREAD_ID));
            }
        }
        else if (event.method == 'running') {
            this._variableHandles.reset();
            this.sendEvent(new vscode_debugadapter_1.ContinuedEvent(LuaDebugSession.THREAD_ID));
        }
        else if (event.method == 'exit') {
            // non
        }
    }
}
exports.LuaDebugSession = LuaDebugSession;
// Lua
LuaDebugSession.THREAD_ID = 1;
//# sourceMappingURL=lrdbDebug.js.map