---@meta

obe.Collision.Exceptions = {};
---@class obe.Collision.Exceptions.InvalidTagFormat : obe.Exception[obe.Collision.Exceptions.InvalidTagFormat]
obe.Collision.Exceptions._InvalidTagFormat = {};

--- obe.Collision.Exceptions.InvalidTagFormat constructor
---
---@param colliderId string #
---@param tagType string #
---@param dataType string #
---@param info obe.DebugInfo #
---@return obe.Collision.Exceptions.InvalidTagFormat
function obe.Collision.Exceptions.InvalidTagFormat(colliderId, tagType, dataType, info) end



return obe.Collision.Exceptions;