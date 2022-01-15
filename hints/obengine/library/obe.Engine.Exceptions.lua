---@meta

obe.Engine.Exceptions = {};
---@class obe.Engine.Exceptions.BootScriptExecutionError : obe.Exception[obe.Engine.Exceptions.BootScriptExecutionError]
obe.Engine.Exceptions._BootScriptExecutionError = {};

--- obe.Engine.Exceptions.BootScriptExecutionError constructor
---
---@param functionName string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptExecutionError
function obe.Engine.Exceptions.BootScriptExecutionError(functionName, errorMessage, info) end



---@class obe.Engine.Exceptions.BootScriptLoadingError : obe.Exception[obe.Engine.Exceptions.BootScriptLoadingError]
obe.Engine.Exceptions._BootScriptLoadingError = {};

--- obe.Engine.Exceptions.BootScriptLoadingError constructor
---
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptLoadingError
function obe.Engine.Exceptions.BootScriptLoadingError(errorMessage, info) end



---@class obe.Engine.Exceptions.BootScriptMissing : obe.Exception[obe.Engine.Exceptions.BootScriptMissing]
obe.Engine.Exceptions._BootScriptMissing = {};

--- obe.Engine.Exceptions.BootScriptMissing constructor
---
---@param mountedPaths string[] #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptMissing
function obe.Engine.Exceptions.BootScriptMissing(mountedPaths, info) end



---@class obe.Engine.Exceptions.FontNotFound : obe.Exception[obe.Engine.Exceptions.FontNotFound]
obe.Engine.Exceptions._FontNotFound = {};

--- obe.Engine.Exceptions.FontNotFound constructor
---
---@param path string #
---@param mounts string[] #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.FontNotFound
function obe.Engine.Exceptions.FontNotFound(path, mounts, info) end



---@class obe.Engine.Exceptions.TextureNotFound : obe.Exception[obe.Engine.Exceptions.TextureNotFound]
obe.Engine.Exceptions._TextureNotFound = {};

--- obe.Engine.Exceptions.TextureNotFound constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.TextureNotFound
function obe.Engine.Exceptions.TextureNotFound(path, info) end



---@class obe.Engine.Exceptions.UnitializedEngine : obe.Exception[obe.Engine.Exceptions.UnitializedEngine]
obe.Engine.Exceptions._UnitializedEngine = {};

--- obe.Engine.Exceptions.UnitializedEngine constructor
---
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.UnitializedEngine
function obe.Engine.Exceptions.UnitializedEngine(info) end



return obe.Engine.Exceptions;