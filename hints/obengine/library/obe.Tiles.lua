---@meta

obe.Tiles = {};
---@class obe.Tiles.AnimatedTile
obe.Tiles._AnimatedTile = {};

--- obe.Tiles.AnimatedTile constructor
---
---@param tileset obe.Tiles.Tileset #
---@param tileIds number[] #
---@param sleeps obe.Time.TimeUnit[] #
---@return obe.Tiles.AnimatedTile
function obe.Tiles.AnimatedTile(tileset, tileIds, sleeps) end


---@param quad sf.Vertex #
---@param tileInfo? obe.Tiles.TileInfo #
function obe.Tiles._AnimatedTile:attachQuad(quad, tileInfo) end

---@param quad sf.Vertex #
function obe.Tiles._AnimatedTile:dettachQuad(quad) end

function obe.Tiles._AnimatedTile:start() end

function obe.Tiles._AnimatedTile:stop() end

---@return number
function obe.Tiles._AnimatedTile:getId() end

function obe.Tiles._AnimatedTile:update() end


---@class obe.Tiles.TileLayer : obe.Graphics.Renderable
obe.Tiles._TileLayer = {};

--- obe.Tiles.TileLayer constructor
---
---@param scene obe.Tiles.TileScene #
---@param id string #
---@param layer number #
---@param x number #
---@param y number #
---@param width number #
---@param height number #
---@param data number[] #
---@return obe.Tiles.TileLayer
function obe.Tiles.TileLayer(scene, id, layer, x, y, width, height, data) end


---@return string
function obe.Tiles._TileLayer:getId() end

function obe.Tiles._TileLayer:build() end

--- Draws all elements of the TileLayer on the screen.
---
---@param surface obe.Graphics.RenderTarget #
---@param camera obe.Scene.Camera #
function obe.Tiles._TileLayer:draw(surface, camera) end

---@param x number #
---@param y number #
---@param tileId number #
function obe.Tiles._TileLayer:setTile(x, y, tileId) end

---@param x number #
---@param y number #
---@return number
function obe.Tiles._TileLayer:getTile(x, y) end


---@class obe.Tiles.TileScene : obe.Types.Serializable
obe.Tiles._TileScene = {};

--- obe.Tiles.TileScene constructor
---
---@param scene obe.Scene.Scene #
---@return obe.Tiles.TileScene
function obe.Tiles.TileScene(scene) end

--- obe.Tiles.TileScene constructor
---
---@param p0 obe.Tiles.TileScene #
---@return obe.Tiles.TileScene
function obe.Tiles.TileScene(p0) end


--- Dumps the content of the Serializable object to a vili node.
---
---@return vili.node
function obe.Tiles._TileScene:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Tiles._TileScene:load(data) end

function obe.Tiles._TileScene:update() end

function obe.Tiles._TileScene:clear() end

---@return obe.Tiles.TileLayer[]
function obe.Tiles._TileScene:getAllLayers() end

---@return string[]
function obe.Tiles._TileScene:getLayersIds() end

---@param id string #
---@return obe.Tiles.TileLayer
function obe.Tiles._TileScene:getLayer(id) end

---@return obe.Tiles.AnimatedTiles
function obe.Tiles._TileScene:getAnimatedTiles() end

---@return obe.Tiles.TilesetCollection
function obe.Tiles._TileScene:getTilesets() end

---@return obe.Graphics.Renderable[]
function obe.Tiles._TileScene:getRenderables() end

---@return obe.Collision.PolygonalCollider[]
function obe.Tiles._TileScene:getColliderModels() end

---@return vili.node[]
function obe.Tiles._TileScene:getGameObjectsModels() end

---@return number
function obe.Tiles._TileScene:getWidth() end

---@return number
function obe.Tiles._TileScene:getHeight() end

---@return number
function obe.Tiles._TileScene:getTileWidth() end

---@return number
function obe.Tiles._TileScene:getTileHeight() end

---@return boolean
function obe.Tiles._TileScene:isSmooth() end

---@return obe.Scene.Scene
function obe.Tiles._TileScene:getScene() end


---@class obe.Tiles.Tileset : obe.Types.Identifiable
obe.Tiles._Tileset = {};

--- obe.Tiles.Tileset constructor
---
---@param id string #
---@param firstTileId number #
---@param count number #
---@param imagePath string #
---@param columns number #
---@param tileWidth number #
---@param tileHeight number #
---@param margin? number #
---@param spacing? number #
---@return obe.Tiles.Tileset
function obe.Tiles.Tileset(id, firstTileId, count, imagePath, columns, tileWidth, tileHeight, margin, spacing) end


---@return number
function obe.Tiles._Tileset:getFirstTileId() end

---@return number
function obe.Tiles._Tileset:getLastTileId() end

---@return number
function obe.Tiles._Tileset:getTileCount() end

---@return number
function obe.Tiles._Tileset:getMargin() end

---@return number
function obe.Tiles._Tileset:getSpacing() end

---@return number
function obe.Tiles._Tileset:getTileWidth() end

---@return number
function obe.Tiles._Tileset:getTileHeight() end

---@return number
function obe.Tiles._Tileset:getImageWidth() end

---@return number
function obe.Tiles._Tileset:getImageHeight() end

---@return string
function obe.Tiles._Tileset:getImagePath() end

---@return obe.Graphics.Texture
function obe.Tiles._Tileset:getTexture() end


---@class obe.Tiles.TilesetCollection
obe.Tiles._TilesetCollection = {};

--- obe.Tiles.TilesetCollection constructor
---
---@return obe.Tiles.TilesetCollection
function obe.Tiles.TilesetCollection() end

--- obe.Tiles.TilesetCollection constructor
---
---@param p0 obe.Tiles.TilesetCollection #
---@return obe.Tiles.TilesetCollection
function obe.Tiles.TilesetCollection(p0) end


---@param firstTileId number #
---@param id string #
---@param source string #
---@param columns number #
---@param width number #
---@param height number #
---@param count number #
function obe.Tiles._TilesetCollection:addTileset(firstTileId, id, source, columns, width, height, count) end

---@param id string #
---@return obe.Tiles.Tileset
function obe.Tiles._TilesetCollection:tilesetFromId(id) end

---@param tileId number #
---@return obe.Tiles.Tileset
function obe.Tiles._TilesetCollection:tilesetFromTileId(tileId) end

---@return number
function obe.Tiles._TilesetCollection:size() end

---@return number[]
function obe.Tiles._TilesetCollection:getTilesetsFirstTilesIds() end

function obe.Tiles._TilesetCollection:clear() end


---@class obe.Tiles.TextureQuadsIndex
---@field q0 number #
---@field q1 number #
---@field q2 number #
---@field q3 number #
obe.Tiles._TextureQuadsIndex = {};


---@param info obe.Tiles.TileInfo #
function obe.Tiles._TextureQuadsIndex:transform(info) end


---@class obe.Tiles.TileInfo
---@field flippedHorizontally boolean #
---@field flippedVertically boolean #
---@field flippedDiagonally boolean #
---@field tileId number #
obe.Tiles._TileInfo = {};




---@alias obe.Tiles.AnimatedTiles obe.Tiles.AnimatedTile[]
---@param tileId number #
---@return obe.Tiles.TileInfo
function obe.Tiles.getTileInfo(tileId) end

---@param tileId number #
---@return number
function obe.Tiles.stripTileFlags(tileId) end

---@param info obe.Tiles.TileInfo #
---@param quads obe.Tiles.TextureQuadsIndex #
function obe.Tiles.applyTextureQuadsTransforms(info, quads) end

return obe.Tiles;