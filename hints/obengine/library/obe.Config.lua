---@meta

obe.Config = {};
---@class obe.Config.ConfigurationManager : vili.node
obe.Config._ConfigurationManager = {};

--- obe.Config.ConfigurationManager constructor
---
---@return obe.Config.ConfigurationManager
function obe.Config.ConfigurationManager() end


function obe.Config._ConfigurationManager:load() end


---@class obe.Config.Version
---@field major number #
---@field minor number #
---@field patch number #
obe.Config._Version = {};

--- obe.Config.Version constructor
---
---@param version_major number #
---@param version_minor number #
---@param version_patch number #
---@return obe.Config.Version
function obe.Config.Version(version_major, version_minor, version_patch) end

--- obe.Config.Version constructor
---
---@param str string #
---@return obe.Config.Version
function obe.Config.Version(str) end


---@return string
function obe.Config._Version:string() end


return obe.Config;