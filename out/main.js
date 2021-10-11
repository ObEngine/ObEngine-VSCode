var __create = Object.create;
var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getProtoOf = Object.getPrototypeOf;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __markAsModule = (target) => __defProp(target, "__esModule", { value: true });
var __export = (target, all) => {
  __markAsModule(target);
  for (var name in all)
    __defProp(target, name, { get: all[name], enumerable: true });
};
var __reExport = (target, module2, desc) => {
  if (module2 && typeof module2 === "object" || typeof module2 === "function") {
    for (let key of __getOwnPropNames(module2))
      if (!__hasOwnProp.call(target, key) && key !== "default")
        __defProp(target, key, { get: () => module2[key], enumerable: !(desc = __getOwnPropDesc(module2, key)) || desc.enumerable });
  }
  return target;
};
var __toModule = (module2) => {
  return __reExport(__markAsModule(__defProp(module2 != null ? __create(__getProtoOf(module2)) : {}, "default", module2 && module2.__esModule && "default" in module2 ? { get: () => module2.default, enumerable: true } : { value: module2, enumerable: true })), module2);
};

// src/extension.ts
__export(exports, {
  activate: () => activate,
  deactivate: () => deactivate
});
var vscode = __toModule(require("vscode"));
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
  return void 0;
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
  console.log("\xD6bEngine extension successfully activated :)");
  let disposable = vscode.commands.registerCommand("obengine.eggplant", () => {
    vscode.window.showInformationMessage("\u{1F346}");
  });
  addUserThirdPartyHints();
  context.subscriptions.push(disposable);
}
function deactivate() {
  removeUserThirdPartyHints();
}
// Annotate the CommonJS export names for ESM import in node:
0 && (module.exports = {
  activate,
  deactivate
});
//# sourceMappingURL=main.js.map
