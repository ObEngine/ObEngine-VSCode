---@meta

obe.Tiles.Exceptions = {};
---@class obe.Tiles.Exceptions.TilePositionOutsideLayer : obe.Exception[obe.Tiles.Exceptions.TilePositionOutsideLayer]
obe.Tiles.Exceptions._TilePositionOutsideLayer = {};

--- obe.Tiles.Exceptions.TilePositionOutsideLayer constructor
---
---@param x number #
---@param y number #
---@param width number #
---@param height number #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.TilePositionOutsideLayer
function obe.Tiles.Exceptions.TilePositionOutsideLayer(x, y, width, height, info) end



---@class obe.Tiles.Exceptions.UnknownTileId : obe.Exception[obe.Tiles.Exceptions.UnknownTileId]
obe.Tiles.Exceptions._UnknownTileId = {};

--- obe.Tiles.Exceptions.UnknownTileId constructor
---
---@param tileId number #
---@param maxTileId number #
---@param tilesets table<string, table<number, number>> #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileId
function obe.Tiles.Exceptions.UnknownTileId(tileId, maxTileId, tilesets, info) end



---@class obe.Tiles.Exceptions.UnknownTileLayer : obe.Exception[obe.Tiles.Exceptions.UnknownTileLayer]
obe.Tiles.Exceptions._UnknownTileLayer = {};

--- obe.Tiles.Exceptions.UnknownTileLayer constructor
---
---@param layerId string #
---@param layerIds string[] #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileLayer
function obe.Tiles.Exceptions.UnknownTileLayer(layerId, layerIds, info) end



---@class obe.Tiles.Exceptions.UnknownTileset : obe.Exception[obe.Tiles.Exceptions.UnknownTileset]
obe.Tiles.Exceptions._UnknownTileset = {};

--- obe.Tiles.Exceptions.UnknownTileset constructor
---
---@param tilesetId string #
---@param tilesetsIds string[] #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileset
function obe.Tiles.Exceptions.UnknownTileset(tilesetId, tilesetsIds, info) end



return obe.Tiles.Exceptions;