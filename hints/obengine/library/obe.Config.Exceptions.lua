---@meta

obe.Config.Exceptions = {};
---@class obe.Config.Exceptions.ConfigError : obe.Exception[obe.Config.Exceptions.ConfigError]
obe.Config.Exceptions._ConfigError = {};

--- obe.Config.Exceptions.ConfigError constructor
---
---@param configFiles string[] #
---@param info obe.DebugInfo #
---@return obe.Config.Exceptions.ConfigError
function obe.Config.Exceptions.ConfigError(configFiles, info) end



---@class obe.Config.Exceptions.InvalidVersionFormat : obe.Exception[obe.Config.Exceptions.InvalidVersionFormat]
obe.Config.Exceptions._InvalidVersionFormat = {};

--- obe.Config.Exceptions.InvalidVersionFormat constructor
---
---@param detail string #
---@param info obe.DebugInfo #
---@return obe.Config.Exceptions.InvalidVersionFormat
function obe.Config.Exceptions.InvalidVersionFormat(detail, info) end



return obe.Config.Exceptions;