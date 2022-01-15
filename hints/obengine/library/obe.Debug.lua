---@meta

obe.Debug = {};

---@alias obe.Debug.Logger spdlog.logger
--- Initialize the Logger.
---
function obe.Debug.InitLogger() end

---@param content string #
function obe.Debug.trace(content) end

---@param content string #
function obe.Debug.debug(content) end

---@param content string #
function obe.Debug.info(content) end

---@param content string #
function obe.Debug.warn(content) end

---@param content string #
function obe.Debug.error(content) end

---@param content string #
function obe.Debug.critical(content) end


---@type obe.Debug.Logger
obe.Debug.Log = {};
return obe.Debug;