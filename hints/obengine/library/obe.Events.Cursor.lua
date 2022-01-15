---@meta

obe.Events.Cursor = {};
---@class obe.Events.Cursor.Hold
---@field x number #
---@field y number #
---@field left boolean #
---@field middle boolean #
---@field right boolean #
---@field id string #
obe.Events.Cursor._Hold = {};



---@class obe.Events.Cursor.Move
---@field x number #
---@field y number #
---@field previousX number #
---@field previousY number #
---@field id string #
obe.Events.Cursor._Move = {};



---@class obe.Events.Cursor.Press
---@field x number #
---@field y number #
---@field left boolean #
---@field middle boolean #
---@field right boolean #
---@field id string #
obe.Events.Cursor._Press = {};



---@class obe.Events.Cursor.Release
---@field x number #
---@field y number #
---@field left boolean #
---@field middle boolean #
---@field right boolean #
---@field id string #
obe.Events.Cursor._Release = {};



return obe.Events.Cursor;