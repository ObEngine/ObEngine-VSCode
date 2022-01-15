---@meta

obe.Utils.File = {};
--- Get a list of directories.
---
---@param path string #Path where you want to check the directories
---@return string[]
function obe.Utils.File.getDirectoryList(path) end

--- Get a list of files.
---
---@param path string #Path where you want to check the files
---@return string[]
function obe.Utils.File.getFileList(path) end

--- Check if the file at the given path exists.
---
---@param path string #Path of the file you want to check the existence
---@return boolean
function obe.Utils.File.fileExists(path) end

--- Check if the directory at the given path exists.
---
---@param path string #Path of the directory you want to check the existence
---@return boolean
function obe.Utils.File.directoryExists(path) end

--- Creates a directory at the given path.
---
---@param path string #Path of the directory you want to create
---@return boolean
function obe.Utils.File.createDirectory(path) end

--- Create an empty file at the given path.
---
---@param path string #Path of the empty file you want to create
function obe.Utils.File.createFile(path) end

--- Copy a file.
---
---@param source string #Path of the file you want to copy
---@param target string #Path of the new copy
function obe.Utils.File.copy(source, target) end

--- Deletes a file.
---
---@param path string #Path of the file you want to delete
---@return boolean
function obe.Utils.File.deleteFile(path) end

--- Deletes an empty directory.
---
---@param path string #Path of of the directory you want to delete
---@return boolean
function obe.Utils.File.deleteDirectory(path) end

--- Get the Current Working Directory (CWD)
---
---@return string
function obe.Utils.File.getCurrentDirectory() end

--- Returns the path separator of the current OS.
---
---@return string
function obe.Utils.File.separator() end

--- Returns the path to the directory of the current executable.
---
---@return string
function obe.Utils.File.getExecutableDirectory() end

--- Returns the path of the current executable.
---
---@return string
function obe.Utils.File.getExecutablePath() end

--- Normalizes the path given in argument (replaces every separator with a forward slash)
---
---@param path string #Path to normalize
---@return string
function obe.Utils.File.normalizePath(path) end

---@param path string #
---@return string
function obe.Utils.File.canonicalPath(path) end

---@param parts string[] #
---@return string
function obe.Utils.File.join(parts) end

return obe.Utils.File;