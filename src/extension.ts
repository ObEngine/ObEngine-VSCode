import * as vscode from 'vscode';
import { LRDBConfigurationProvider } from './lrdbConfigurationProvider';
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

	const debugObEngineTask = {
		type: 'lrdb',
		request: 'attach',
		name: '[ObEngine] Debug',
		host: "localhost",
		port: 21122,
	  };

	let launchConfig = vscode.workspace.getConfiguration("launch");
	let existingConfigurations = launchConfig.get<Array<object>>("configurations", []);

	let foundExistingValue = false;
	for (const existingConf of existingConfigurations) {
		if (util.isDeepStrictEqual(existingConf, debugObEngineTask))
		{
			foundExistingValue = true;
			break;
		}
	}
	if (!foundExistingValue)
	{
		let newValue = existingConfigurations?.concat([debugObEngineTask]);
		launchConfig.update("configurations", newValue);
	}
}

export function activate(context: vscode.ExtensionContext) {
	console.log('ÖbEngine extension successfully activated :)');

	let spawnEggplantCommand = vscode.commands.registerCommand('obengine.eggplant', spawnEggplant);
	let setObEngineContextCommand = vscode.commands.registerCommand('obengine.context', setObEngineContext);

	context.subscriptions.push(spawnEggplantCommand);
	context.subscriptions.push(setObEngineContextCommand);

	context.subscriptions.push(
		vscode.debug.registerDebugConfigurationProvider(
		  'lrdb',
		  new LRDBConfigurationProvider()
		)
	  )
}

// this method is called when your extension is deactivated
export function deactivate() {
	removeUserThirdPartyHints();
}
