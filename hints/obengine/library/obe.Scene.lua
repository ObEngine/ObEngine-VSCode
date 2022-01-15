---@meta

obe.Scene = {};
---@class obe.Scene.Camera : obe.Transform.Rect
obe.Scene._Camera = {};

--- obe.Scene.Camera constructor
---
---@return obe.Scene.Camera
function obe.Scene.Camera() end


--- Gets the Position of the Camera.
---
---@param ref? obe.Transform.Referential #Referential used to get the Position of the Camera
---@return obe.Transform.UnitVector
function obe.Scene._Camera:getPosition(ref) end

--- Gets an UnitVector containing the size of the Camera (Width and Height)
---
---@return obe.Transform.UnitVector
function obe.Scene._Camera:getSize() end

--- Moves the Camera.
---
---@param position obe.Transform.UnitVector #Position to add to the Camera
function obe.Scene._Camera:move(position) end

--- Scales the Camera.
---
---@param pScale number #Factor used to multiply the current size
---@param ref? obe.Transform.Referential #Referential used to resize the Camera
function obe.Scene._Camera:scale(pScale, ref) end

--- Sets the Position of the Camera.
---
---@param position obe.Transform.UnitVector #New Position of the Camera
---@param ref? obe.Transform.Referential #Referential used to position the Camera
function obe.Scene._Camera:setPosition(position, ref) end

--- Sets the size of the Camera.
---
---@param pSize number #Size of the Camera (1 = Normal Size meaning Screen Height = 2 SceneUnits)
---@param ref? obe.Transform.Referential #Referential used to resize the Camera
function obe.Scene._Camera:setSize(pSize, ref) end


---@class obe.Scene.Scene : obe.Types.Serializable
obe.Scene._Scene = {};

--- Creates a new Scene.
---
---@param events obe.Event.EventNamespace #
---@param lua sol.state_view #
---@return obe.Scene.Scene
function obe.Scene.Scene(events, lua) end


---@param resources obe.Engine.ResourceManager #
function obe.Scene._Scene:attachResourceManager(resources) end

--- Removes all elements in the Scene.
---
function obe.Scene._Scene:clear() end

--- Dumps all elements of the Scene in a vili tree.
---
---@return vili.node
function obe.Scene._Scene:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Scene._Scene:load(data) end

--- Updates all elements in the Scene.
---
function obe.Scene._Scene:update() end

--- Draws all elements of the Scene on the screen.
---
---@param surface obe.Graphics.RenderTarget #
function obe.Scene._Scene:draw(surface) end

--- Get the name of the level.
---
---@return string
function obe.Scene._Scene:getLevelName() end

--- Sets the name of the level.
---
---@param newName string #A std::string containing the new name of the level
function obe.Scene._Scene:setLevelName(newName) end

--- Enables or disables the Scene update.
---
---@param state boolean #true if the Scene should update, false otherwise
function obe.Scene._Scene:setUpdateState(state) end

--- Creates a new GameObject.
---
---@param obj string #Type of the GameObject
---@param id? string #Id of the new GameObject (If empty the id will be randomly generated)
---@return obe.Script.GameObject
function obe.Scene._Scene:createGameObject(obj, id) end

--- Get how many GameObjects are present in the Scene.
---
---@return number
function obe.Scene._Scene:getGameObjectAmount() end

--- Get all the GameObjects present in the Scene.
---
---@param objectType? string #
---@return obe.Script.GameObject[]
function obe.Scene._Scene:getAllGameObjects(objectType) end

--- Get a GameObject by Id (Raises an exception if not found)
---
---@param id string #Id of the GameObject to retrieve
---@return obe.Script.GameObject
function obe.Scene._Scene:getGameObject(id) end

--- Check if a GameObject exists in the Scene.
---
---@param id string #Id of the GameObject to check the existence
---@return boolean
function obe.Scene._Scene:doesGameObjectExists(id) end

--- Removes a GameObject from the Scene.
---
---@param id string #Id of the GameObject to remove from the Scene
function obe.Scene._Scene:removeGameObject(id) end

--- Gets the Scene Camera.
---
---@return obe.Scene.Camera
function obe.Scene._Scene:getCamera() end

--- Reorganize all the Sprite (by Layer and z-depth)
---
function obe.Scene._Scene:reorganizeLayers() end

--- Creates a new Sprite.
---
---@param id? string #Id of the new Sprite
---@param addToSceneRoot? boolean #Add the Sprite to the root Scene Node if true
---@return obe.Graphics.Sprite
function obe.Scene._Scene:createSprite(id, addToSceneRoot) end

--- Get how many Sprites are present in the Scene.
---
---@return number
function obe.Scene._Scene:getSpriteAmount() end

--- Get all the Sprites present in the Scene.
---
---@return obe.Graphics.Sprite[]
function obe.Scene._Scene:getAllSprites() end

--- Get all the Sprites present in the Scene in the given layer.
---
---@param layer number #Layer to get all the Sprites from
---@return obe.Graphics.Sprite[]
function obe.Scene._Scene:getSpritesByLayer(layer) end

--- Get the first found Sprite with the BoundingRect including the given position.
---
---@param position obe.Transform.UnitVector #Position to check
---@param layer number #Layer where to check
---@return obe.Graphics.Sprite
function obe.Scene._Scene:getSpriteByPosition(position, layer) end

--- Get a Sprite by Id (Raises an exception if not found)
---
---@param id string #Id of the Sprite to get
---@return obe.Graphics.Sprite
function obe.Scene._Scene:getSprite(id) end

--- Check if a Sprite exists in the Scene.
---
---@param id string #Id of the Sprite to check the existence
---@return boolean
function obe.Scene._Scene:doesSpriteExists(id) end

--- Removes the Sprite with the given Id.
---
---@param id string #Id of the Sprite to remove
function obe.Scene._Scene:removeSprite(id) end

--- Creates a new Collider.
---
---@param id? string #Id of the new Collider
---@param addToSceneRoot? boolean #Add the Collider to the root Scene Node if true
---@return obe.Collision.PolygonalCollider
function obe.Scene._Scene:createCollider(id, addToSceneRoot) end

--- Get how many Colliders are present in the Scene.
---
---@return number
function obe.Scene._Scene:getColliderAmount() end

--- Get all the pointers of the Colliders in the Scene.
---
---@return obe.Collision.PolygonalCollider[]
function obe.Scene._Scene:getAllColliders() end

--- Get the first Collider found with a point on the given position.
---
---@param position obe.Transform.UnitVector #Position to get the Point of a Collider
---@return Tuple_ObeCollisionPolygonalCollider_Number
function obe.Scene._Scene:getColliderPointByPosition(position) end

--- Get the Collider using the centroid Position.
---
---@param position obe.Transform.UnitVector #Position to check
---@return obe.Collision.PolygonalCollider
function obe.Scene._Scene:getColliderByCentroidPosition(position) end

--- Get the Collider with the given Id (Raises an exception if not found)
---
---@param id string #Id of the Collider to retrieve
---@return obe.Collision.PolygonalCollider
function obe.Scene._Scene:getCollider(id) end

--- Check the existence of the Collider with given Id in the Scene.
---
---@param id string #Id of the Collider to check the existence
---@return boolean
function obe.Scene._Scene:doesColliderExists(id) end

--- Removes the Collider with the given Id from the Scene.
---
---@param id string #Id of the Collider to remove
function obe.Scene._Scene:removeCollider(id) end

---@return obe.Scene.SceneNode
function obe.Scene._Scene:getSceneRootNode() end

--- Folder where was the map loaded with loadFromFile method.
---
---@return string
function obe.Scene._Scene:getFilePath() end

--- Name of the last loaded map file with loadFromFile method.
---
---@return string
function obe.Scene._Scene:getLevelFile() end

---@param position obe.Transform.UnitVector #
---@return obe.Scene.SceneNode
function obe.Scene._Scene:getSceneNodeByPosition(position) end

---@return boolean
function obe.Scene._Scene:hasTiles() end

---@return obe.Tiles.TileScene
function obe.Scene._Scene:getTiles() end

---@return obe.Scene.SceneRenderOptions
function obe.Scene._Scene:getRenderOptions() end

---@param options obe.Scene.SceneRenderOptions #
function obe.Scene._Scene:setRenderOptions(options) end


---@class obe.Scene.SceneNode : obe.Transform.Movable, obe.Types.Selectable
obe.Scene._SceneNode = {};


--- Adds a child to the SceneNode.
---
---@param child obe.Transform.Movable #Pointer to the new SceneNode child
function obe.Scene._SceneNode:addChild(child) end

--- Removes a child from the SceneNode.
---
---@param child obe.Transform.Movable #Reference to the SceneNode child to remove
function obe.Scene._SceneNode:removeChild(child) end

--- Set the position of the SceneNode and all of its children using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the SceneNode and all of its children
function obe.Scene._SceneNode:setPosition(position) end

--- Moves the SceneNode (Adds the given position to the current one) and all of its children.
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Scene._SceneNode:move(position) end

--- Set the position of the SceneNode using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the SceneNode
function obe.Scene._SceneNode:setPositionWithoutChildren(position) end

--- Moves the SceneNode (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Scene._SceneNode:moveWithoutChildren(position) end


---@class obe.Scene.SceneRenderOptions
---@field sprites boolean #
---@field collisions boolean #
---@field sceneNodes boolean #
obe.Scene._SceneRenderOptions = {};




---@alias obe.Scene.OnSceneLoadCallback function
---@param self obe.Scene.Scene #
---@param id string #
---@return table
function obe.Scene.sceneGetGameObjectProxy(self, id) end

---@param self obe.Scene.Scene #
---@param obj string #
---@param id? string #
---@return function
function obe.Scene.sceneCreateGameObjectProxy(self, obj, id) end

---@param self obe.Scene.Scene #
---@param objectType? string #
---@return table[]
function obe.Scene.sceneGetAllGameObjectsProxy(self, objectType) end

return obe.Scene;