import * as vscode from 'vscode';
import { ObEngineConfigurationProvider } from './obengineConfigurationProvider';
const util = require('util');

function getHintFolder() : String | undefined {
	let extension = vscode.extensions.getExtension("obengine.obengine");
	if (extension)
	{
		let filePrefix = "file:///";
		let hintPath = vscode.Uri.joinPath(vscode.Uri.file(extension.extensionPath), "hints").toString(true);
		if (hintPath.startsWith(filePrefix))
		{
			hintPath = hintPath.slice(filePrefix.length);
		}
		return hintPath + "/obengine/library";
	}
	return undefined;
}

function addUserThirdPartyHints() {
	let luaWorkspace = vscode.workspace.getConfiguration("Lua.workspace");
	let userThirdParty = luaWorkspace.get<Array<String>>("userThirdParty");

	let hintFolder = getHintFolder();
	if (hintFolder && !userThirdParty?.includes(hintFolder))
	{
		let newValue = userThirdParty?.concat([hintFolder]);
		luaWorkspace.update("userThirdParty", newValue);
	}
}

function removeUserThirdPartyHints() {
	let luaWorkspace = vscode.workspace.getConfiguration("Lua.workspace");
	let userThirdParty = luaWorkspace.get<Array<String>>("userThirdParty");

	let hintFolder = getHintFolder();
	if (hintFolder && userThirdParty?.includes(hintFolder))
	{
		userThirdParty.forEach((element, index)=>{
			if(element == hintFolder) userThirdParty?.splice(index, 1);
		 });

		luaWorkspace.update("userThirdParty", userThirdParty);
	}
}

function spawnEggplant() {
	vscode.window.showInformationMessage('🍆');
}

interface Task {
	label?: string;
}

function setObEngineContext() {
	let luaWorkspace = vscode.workspace.getConfiguration("Lua.workspace");
	let workspaceLibrary = luaWorkspace.get<Array<String>>("library");

	let hintFolder = getHintFolder();
	if (hintFolder && !workspaceLibrary?.includes(hintFolder))
	{
		let newValue = workspaceLibrary?.concat([hintFolder]);
		luaWorkspace.update("library", newValue);
	}
	luaWorkspace.update("checkThirdParty", false);

	const runAndDebugObEngineTask = {
		type: 'obengine',
		request: 'attach',
		name: '[ObEngine] Run & Debug',
		host: "localhost",
		port: 21122,
		preLaunchTask: "runobengine"
	  };

	const debugObEngineTask = {
		type: 'obengine',
		request: 'attach',
		name: '[ObEngine] Debug',
		host: "localhost",
		port: 21122,
	  };

	let launchConfig = vscode.workspace.getConfiguration("launch");
	let existingConfigurations = launchConfig.get<Array<object>>("configurations", []);

	let configurationsToAdd = [runAndDebugObEngineTask, debugObEngineTask];

	for (const configurationToAdd of configurationsToAdd) {
		let foundExistingValue = false;
		for (const existingConf of existingConfigurations) {
			if (util.isDeepStrictEqual(existingConf, configurationToAdd))
			{
				foundExistingValue = true;
				break;
			}
		}
		if (!foundExistingValue)
		{
			let newValue = existingConfigurations?.concat([configurationToAdd]);
			launchConfig.update("configurations", newValue);
		}
	}

	let obengineConfig = vscode.workspace.getConfiguration("obengine");

	let obengineExecutablePath = obengineConfig.get<string>("executablePath");
	if (!obengineExecutablePath) {
		vscode.window.showWarningMessage("ÖbEngine executable path not configured, please set it at obengine.executablePath in your VS Code Settings");
	}

	let obengineWorkingDirectory = obengineConfig.get<string>("workingDirectory");
	if (!obengineWorkingDirectory) {
		vscode.window.showWarningMessage("ÖbEngine Working Directory not configured, please set it at obengine.workingDirectory");
	}

	const runObEngineTask = {
		label: "runobengine",
		type: "shell",
		command: obengineExecutablePath,
		options: {
			cwd: obengineWorkingDirectory
		},
		isBackground: true,
		problemMatcher: [
			{
				pattern: [
					{
						regexp: ".",
						file: 1,
						location: 2,
						message: 3
					}
				],
				background: {
					activeOnStart: true,
					beginsPattern: ".",
					endsPattern: ".",
				}
			}
		]
	}

	let tasksConfig = vscode.workspace.getConfiguration("tasks");
	let existingTasks: Array<Task> = launchConfig.get<Array<object>>("tasks", []);

	let foundExistingValue = false;
	for (const existingTask of existingTasks) {
		if (util.isDeepStrictEqual(existingTask, runObEngineTask))
		{
			foundExistingValue = true;
			break;
		}
	}
	if (!foundExistingValue)
	{
		let newValue = existingTasks?.concat([runObEngineTask]);
		tasksConfig.update("tasks", newValue);
	}
	else
	{
		existingTasks = existingTasks.map(item => {
			if (item.label == "runobengine") {
				return runObEngineTask;
			} else {
				return item;
			}
		 });
	}
}

export function activate(context: vscode.ExtensionContext) {
	let outputChannel = vscode.window.createOutputChannel("ObEngine");
	outputChannel.appendLine('[ObEngine] ÖbEngine extension successfully activated :)');

	let spawnEggplantCommand = vscode.commands.registerCommand('obengine.eggplant', spawnEggplant);
	let setObEngineContextCommand = vscode.commands.registerCommand('obengine.context', setObEngineContext);

	context.subscriptions.push(spawnEggplantCommand);
	context.subscriptions.push(setObEngineContextCommand);

	vscode.debug.onDidStartDebugSession((e) => {
		outputChannel.appendLine(`[ObEngine:DebugSession] Started debug session ${e.id}`);
	})

	vscode.debug.onDidReceiveDebugSessionCustomEvent(dapEvent => {
		outputChannel.appendLine(`[ObEngine:DebugSession] ${dapEvent.event}`);
    });

	context.subscriptions.push(
		vscode.debug.registerDebugConfigurationProvider(
		  'obengine',
		  new ObEngineConfigurationProvider()
		)
	  )
}

// this method is called when your extension is deactivated
export function deactivate() {
	removeUserThirdPartyHints();
}
