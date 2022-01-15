---@meta

obe.Script.Exceptions = {};
---@class obe.Script.Exceptions.GameObjectScriptError : obe.Exception[obe.Script.Exceptions.GameObjectScriptError]
obe.Script.Exceptions._GameObjectScriptError = {};

--- obe.Script.Exceptions.GameObjectScriptError constructor
---
---@param objectType string #
---@param objectId string #
---@param callback string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.GameObjectScriptError
function obe.Script.Exceptions.GameObjectScriptError(objectType, objectId, callback, info) end



---@class obe.Script.Exceptions.InvalidScript : obe.Exception[obe.Script.Exceptions.InvalidScript]
obe.Script.Exceptions._InvalidScript = {};

--- obe.Script.Exceptions.InvalidScript constructor
---
---@param path string #
---@param error string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.InvalidScript
function obe.Script.Exceptions.InvalidScript(path, error, info) end



---@class obe.Script.Exceptions.LuaExecutionError : obe.Exception[obe.Script.Exceptions.LuaExecutionError]
obe.Script.Exceptions._LuaExecutionError = {};

--- obe.Script.Exceptions.LuaExecutionError constructor
---
---@param err std.exception #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.LuaExecutionError
function obe.Script.Exceptions.LuaExecutionError(err, info) end



---@class obe.Script.Exceptions.LuaNestedExceptionError : obe.Exception[obe.Script.Exceptions.LuaNestedExceptionError]
obe.Script.Exceptions._LuaNestedExceptionError = {};

--- obe.Script.Exceptions.LuaNestedExceptionError constructor
---
---@param err std.exception #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.LuaNestedExceptionError
function obe.Script.Exceptions.LuaNestedExceptionError(err, info) end



---@class obe.Script.Exceptions.NoSuchComponent : obe.Exception[obe.Script.Exceptions.NoSuchComponent]
obe.Script.Exceptions._NoSuchComponent = {};

--- obe.Script.Exceptions.NoSuchComponent constructor
---
---@param componentType string #
---@param objectType string #
---@param objectId string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.NoSuchComponent
function obe.Script.Exceptions.NoSuchComponent(componentType, objectType, objectId, info) end



---@class obe.Script.Exceptions.ObjectDefinitionNotFound : obe.Exception[obe.Script.Exceptions.ObjectDefinitionNotFound]
obe.Script.Exceptions._ObjectDefinitionNotFound = {};

--- obe.Script.Exceptions.ObjectDefinitionNotFound constructor
---
---@param objectType string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.ObjectDefinitionNotFound
function obe.Script.Exceptions.ObjectDefinitionNotFound(objectType, info) end



---@class obe.Script.Exceptions.ScriptFileNotFound : obe.Exception[obe.Script.Exceptions.ScriptFileNotFound]
obe.Script.Exceptions._ScriptFileNotFound = {};

--- obe.Script.Exceptions.ScriptFileNotFound constructor
---
---@param objectType string #
---@param objectId string #
---@param scriptPath string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.ScriptFileNotFound
function obe.Script.Exceptions.ScriptFileNotFound(objectType, objectId, scriptPath, info) end



---@class obe.Script.Exceptions.WrongSourceAttributeType : obe.Exception[obe.Script.Exceptions.WrongSourceAttributeType]
obe.Script.Exceptions._WrongSourceAttributeType = {};

--- obe.Script.Exceptions.WrongSourceAttributeType constructor
---
---@param objectType string #
---@param attributeName string #
---@param expectedType string #
---@param realType string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.WrongSourceAttributeType
function obe.Script.Exceptions.WrongSourceAttributeType(objectType, attributeName, expectedType, realType, info) end



return obe.Script.Exceptions;