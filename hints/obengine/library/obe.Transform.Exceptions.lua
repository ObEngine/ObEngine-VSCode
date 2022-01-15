---@meta

obe.Transform.Exceptions = {};
---@class obe.Transform.Exceptions.InvalidUnitsEnumValue : obe.Exception[obe.Transform.Exceptions.InvalidUnitsEnumValue]
obe.Transform.Exceptions._InvalidUnitsEnumValue = {};

--- obe.Transform.Exceptions.InvalidUnitsEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.InvalidUnitsEnumValue
function obe.Transform.Exceptions.InvalidUnitsEnumValue(enumValue, info) end



---@class obe.Transform.Exceptions.PolygonNotEnoughPoints : obe.Exception[obe.Transform.Exceptions.PolygonNotEnoughPoints]
obe.Transform.Exceptions._PolygonNotEnoughPoints = {};

--- obe.Transform.Exceptions.PolygonNotEnoughPoints constructor
---
---@param polygon nil #
---@param points number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.PolygonNotEnoughPoints
function obe.Transform.Exceptions.PolygonNotEnoughPoints(polygon, points, info) end



---@class obe.Transform.Exceptions.PolygonPointIndexOverflow : obe.Exception[obe.Transform.Exceptions.PolygonPointIndexOverflow]
obe.Transform.Exceptions._PolygonPointIndexOverflow = {};

--- obe.Transform.Exceptions.PolygonPointIndexOverflow constructor
---
---@param polygon nil #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.PolygonPointIndexOverflow
function obe.Transform.Exceptions.PolygonPointIndexOverflow(polygon, index, maximum, info) end



---@class obe.Transform.Exceptions.UnknownReferential : obe.Exception[obe.Transform.Exceptions.UnknownReferential]
obe.Transform.Exceptions._UnknownReferential = {};

--- obe.Transform.Exceptions.UnknownReferential constructor
---
---@param referential string #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.UnknownReferential
function obe.Transform.Exceptions.UnknownReferential(referential, info) end



---@class obe.Transform.Exceptions.UnknownUnit : obe.Exception[obe.Transform.Exceptions.UnknownUnit]
obe.Transform.Exceptions._UnknownUnit = {};

--- obe.Transform.Exceptions.UnknownUnit constructor
---
---@param unit string #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.UnknownUnit
function obe.Transform.Exceptions.UnknownUnit(unit, info) end



return obe.Transform.Exceptions;