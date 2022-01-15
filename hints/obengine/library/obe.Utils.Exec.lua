---@meta

obe.Utils.Exec = {};
---@class obe.Utils.Exec.RunArgsParser
obe.Utils.Exec._RunArgsParser = {};

--- Constructor of RunArgsParser takes argc and argv in parameters.
---
---@param size number #This is argc
---@param start string #This is argv
---@return obe.Utils.Exec.RunArgsParser
function obe.Utils.Exec.RunArgsParser(size, start) end


--- Check if a argument has been entered.
---
---@param arg string #Name of the argument you want to check existence
---@return boolean
function obe.Utils.Exec._RunArgsParser:argumentExists(arg) end

--- Get the given argument's value.
---
---@param arg string #Name of the argument you want to retrieve the value
---@return string
function obe.Utils.Exec._RunArgsParser:getArgumentValue(arg) end


return obe.Utils.Exec;