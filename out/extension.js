"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.activate = void 0;
const vscode = require("vscode");
function getHintFolder() {
    let extension = vscode.extensions.getExtension("obengine.obengine");
    if (extension) {
        let filePrefix = "file:///";
        let hintPath = vscode.Uri.joinPath(vscode.Uri.file(extension.extensionPath), "hints").toString(true);
        if (hintPath.startsWith(filePrefix)) {
            hintPath = hintPath.slice(filePrefix.length);
        }
        return hintPath;
    }
    return undefined;
}
function addUserThirdPartyHints() {
    let luaWorkspace = vscode.workspace.getConfiguration("Lua.workspace");
    let userThirdParty = luaWorkspace.get("userThirdParty");
    let hintFolder = getHintFolder();
    if (hintFolder && !userThirdParty?.includes(hintFolder)) {
        let newValue = userThirdParty?.concat([hintFolder]);
        luaWorkspace.update("userThirdParty", newValue);
    }
}
function removeUserThirdPartyHints() {
    let luaWorkspace = vscode.workspace.getConfiguration("Lua.workspace");
    let userThirdParty = luaWorkspace.get("userThirdParty");
    let hintFolder = getHintFolder();
    if (hintFolder && userThirdParty?.includes(hintFolder)) {
        userThirdParty.forEach((element, index) => {
            if (element == hintFolder)
                userThirdParty?.splice(index, 1);
        });
        luaWorkspace.update("userThirdParty", userThirdParty);
    }
}
function activate(context) {
    console.log('ÖbEngine extension successfully activated :)');
    let disposable = vscode.commands.registerCommand('obengine.eggplant', () => {
        vscode.window.showInformationMessage('🍆');
    });
    addUserThirdPartyHints();
    context.subscriptions.push(disposable);
}
exports.activate = activate;
// this method is called when your extension is deactivated
function deactivate() {
    removeUserThirdPartyHints();
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map