import * as vscode from 'vscode';
import * as path from 'path'

function createLaunchConfigFromContext(
    folder: vscode.WorkspaceFolder | undefined,
    resolve: boolean
  ): vscode.DebugConfiguration {
    const config = {
      type: 'obengine',
      request: 'attach',
      name: '[ObEngine] Debug',
      host: "localhost",
      port: 21122,
    }

    let program: string | undefined

    // try to use file open in editor
    const editor = vscode.window.activeTextEditor
    if (editor) {
      const languageId = editor.document.languageId
      if (languageId === 'lua') {
        const wf = vscode.workspace.getWorkspaceFolder(editor.document.uri)
        if (wf === folder) {
          program = vscode.workspace.asRelativePath(editor.document.uri)
          if (!path.isAbsolute(program)) {
            program = '${workspaceFolder}/' + program
          }
        }
      }
    }

    return config
  }

export class ObEngineConfigurationProvider implements vscode.DebugConfigurationProvider {
    /**
     * Returns an initial debug configuration based on contextual information, e.g. package.json or folder.
     */
    provideDebugConfigurations(
      folder: vscode.WorkspaceFolder | undefined
    ): vscode.ProviderResult<vscode.DebugConfiguration[]> {
      return [createLaunchConfigFromContext(folder, false)]
    }
  
    /**
     * Try to add all missing attributes to the debug configuration being launched.
     */
    resolveDebugConfiguration(
      folder: vscode.WorkspaceFolder | undefined,
      config: vscode.DebugConfiguration
    ): vscode.ProviderResult<vscode.DebugConfiguration> {
      // if launch.json is missing or empty
      if (!config.type && !config.request && !config.name) {
        config = createLaunchConfigFromContext(folder, true)
  
        if (!config.program) {
          const message = 'Cannot find a program to debug'
          return vscode.window.showInformationMessage(message).then(() => {
            return undefined // abort launch
          })
        }
      }
  
      // make sure that config has a 'cwd' attribute set
      if (!config.cwd) {
        if (folder) {
          config.cwd = folder.uri.fsPath
        } else if (config.program) {
          // derive 'cwd' from 'program'
          config.cwd = path.dirname(config.program)
        }
      }
  
      return config
    }
  }