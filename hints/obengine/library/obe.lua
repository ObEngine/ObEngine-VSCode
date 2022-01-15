---@meta

obe = {};
---@class obe.BaseException : std.exception
obe._BaseException = {};

--- obe.BaseException constructor
---
---@return obe.BaseException
function obe.BaseException() end


---@return string
function obe._BaseException:what() end

---@return std.runtime_error[]
function obe._BaseException:traceback() end


---@class obe.DebugInfo
---@field file string #
---@field line number #
---@field function string #
obe._DebugInfo = {};

--- obe.DebugInfo constructor
---
---@param file string #
---@param line number #
---@param funcname string #
---@return obe.DebugInfo
function obe.DebugInfo(file, line, funcname) end



---@return auto
function obe.getTypeName() end

---@param surfaceWidth number #
---@param surfaceHeight number #
function obe.InitEngine(surfaceWidth, surfaceHeight) end

return obe;