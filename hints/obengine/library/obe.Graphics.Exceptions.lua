---@meta

obe.Graphics.Exceptions = {};
---@class obe.Graphics.Exceptions.CanvasElementAlreadyExists : obe.Exception[obe.Graphics.Exceptions.CanvasElementAlreadyExists]
obe.Graphics.Exceptions._CanvasElementAlreadyExists = {};

--- obe.Graphics.Exceptions.CanvasElementAlreadyExists constructor
---
---@param id string #
---@param newElementType string #
---@param existingElementType string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.CanvasElementAlreadyExists
function obe.Graphics.Exceptions.CanvasElementAlreadyExists(id, newElementType, existingElementType, info) end



---@class obe.Graphics.Exceptions.ImageFileNotFound : obe.Exception[obe.Graphics.Exceptions.ImageFileNotFound]
obe.Graphics.Exceptions._ImageFileNotFound = {};

--- obe.Graphics.Exceptions.ImageFileNotFound constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.ImageFileNotFound
function obe.Graphics.Exceptions.ImageFileNotFound(path, info) end



---@class obe.Graphics.Exceptions.InvalidColorName : obe.Exception[obe.Graphics.Exceptions.InvalidColorName]
obe.Graphics.Exceptions._InvalidColorName = {};

--- obe.Graphics.Exceptions.InvalidColorName constructor
---
---@param color string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidColorName
function obe.Graphics.Exceptions.InvalidColorName(color, info) end



---@class obe.Graphics.Exceptions.InvalidHexFormat : obe.Exception[obe.Graphics.Exceptions.InvalidHexFormat]
obe.Graphics.Exceptions._InvalidHexFormat = {};

--- obe.Graphics.Exceptions.InvalidHexFormat constructor
---
---@param hexCode string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidHexFormat
function obe.Graphics.Exceptions.InvalidHexFormat(hexCode, info) end



---@class obe.Graphics.Exceptions.InvalidHsvFormat : obe.Exception[obe.Graphics.Exceptions.InvalidHsvFormat]
obe.Graphics.Exceptions._InvalidHsvFormat = {};

--- obe.Graphics.Exceptions.InvalidHsvFormat constructor
---
---@param H number #
---@param S number #
---@param V number #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidHsvFormat
function obe.Graphics.Exceptions.InvalidHsvFormat(H, S, V, info) end



---@class obe.Graphics.Exceptions.InvalidRgbFormat : obe.Exception[obe.Graphics.Exceptions.InvalidRgbFormat]
obe.Graphics.Exceptions._InvalidRgbFormat = {};

--- obe.Graphics.Exceptions.InvalidRgbFormat constructor
---
---@param r number #
---@param g number #
---@param b number #
---@param a number #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidRgbFormat
function obe.Graphics.Exceptions.InvalidRgbFormat(r, g, b, a, info) end



---@class obe.Graphics.Exceptions.InvalidSpriteColorType : obe.Exception[obe.Graphics.Exceptions.InvalidSpriteColorType]
obe.Graphics.Exceptions._InvalidSpriteColorType = {};

--- obe.Graphics.Exceptions.InvalidSpriteColorType constructor
---
---@param type string #
---@param value string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidSpriteColorType
function obe.Graphics.Exceptions.InvalidSpriteColorType(type, value, info) end



---@class obe.Graphics.Exceptions.ReadOnlyTexture : obe.Exception[obe.Graphics.Exceptions.ReadOnlyTexture]
obe.Graphics.Exceptions._ReadOnlyTexture = {};

--- obe.Graphics.Exceptions.ReadOnlyTexture constructor
---
---@param method string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.ReadOnlyTexture
function obe.Graphics.Exceptions.ReadOnlyTexture(method, info) end



return obe.Graphics.Exceptions;