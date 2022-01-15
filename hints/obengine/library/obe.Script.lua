---@meta

obe.Script = {};
---@class obe.Script.GameObject : obe.Types.Identifiable, obe.Types.Serializable
---@field deletable boolean #Delete State of the GameObject (false = not deleted)
---@field Animator obe.Animation.Animator #Gets the Animator Component of the GameObject (Raises ObEngine.Script.GameObject.NoAnimator if no Animator Component)
---@field Collider obe.Collision.PolygonalCollider #Gets the Collider Component of the GameObject (Raises ObEngine.Script.GameObject.NoCollider if no Collider Component)
---@field Sprite obe.Graphics.Sprite #Gets the Sprite Component of the GameObject (Raises ObEngine.Script.GameObject.NoSprite if no Sprite Component)
---@field SceneNode obe.Scene.SceneNode #Gets the Scene Node of the GameObject (SceneNode that can manipulate the position of all Scene Components)
obe.Script._GameObject = {};

--- Creates a new GameObject.
---
---@param lua sol.state_view #
---@param type string #Type of the GameObject
---@param id string #Id of the GameObject you want to create
---@return obe.Script.GameObject
function obe.Script.GameObject(lua, type, id) end


--- Get the Type of the GameObject.
---
---@return string
function obe.Script._GameObject:getType() end

--- Checks if the GameObject has an Animator Component.
---
---@return boolean
function obe.Script._GameObject:doesHaveAnimator() end

--- Checks if the GameObject has a Collider Component.
---
---@return boolean
function obe.Script._GameObject:doesHaveCollider() end

--- Checks if the GameObject has a Sprite Component.
---
---@return boolean
function obe.Script._GameObject:doesHaveSprite() end

--- Checks if the GameObject has a Script Component.
---
---@return boolean
function obe.Script._GameObject:doesHaveScriptEngine() end

--- Is the GameObject updated.
---
---@return boolean
function obe.Script._GameObject:getUpdateState() end

--- Sets if the GameObject should be otherwise or not.
---
---@param state boolean #Should be equal to true if the GameObject must updates, false otherwise
function obe.Script._GameObject:setUpdateState(state) end

--- Execute a Lua String in the Lua State of the GameObject.
---
---@param query string #String to execute
function obe.Script._GameObject:exec(query) end

---@param data vili.node #
function obe.Script._GameObject:initFromVili(data) end

--- Send a parameter to the Local.Init trigger.
---
---@param argName string #Name of the Parameter to push
---@param value U #Value of the Parameter
function obe.Script._GameObject:sendInitArg(argName, value) end

--- Send a parameter to the Local.Init trigger from a Lua VM.
---
---@param argName string #Name of the Parameter to push
---@param value sol.object #Value of the Parameter
function obe.Script._GameObject:sendInitArg(argName, value) end

--- Loads the GameObject through the GameObject Definition File.
---
---@param scene obe.Scene.Scene #Scene reference to create components
---@param obj vili.node #Vili Node containing the GameObject components
---@param resources? obe.Engine.ResourceManager #pointer to the ResourceManager
function obe.Script._GameObject:loadGameObject(scene, obj, resources) end

--- Updates the GameObject.
---
function obe.Script._GameObject:update() end

--- Deletes the GameObject.
---
function obe.Script._GameObject:deleteObject() end

--- Access the exposition table of the GameObject.
---
---@return table
function obe.Script._GameObject:access() end

--- Gets a reference to the Lua function used to build the GameObject (Local.Init proxy)
---
---@return function
function obe.Script._GameObject:getConstructor() end

--- Triggers the GameObject's Local.Init.
---
function obe.Script._GameObject:initialize() end

--- Configures the permanent parameter of the GameObject.
---
---@param permanent boolean #Should be true if the GameObject should be permanent, false otherwise
function obe.Script._GameObject:setPermanent(permanent) end

--- Gets if the GameObject is permanent (Will stay after loading another map)
---
---@return boolean
function obe.Script._GameObject:isPermanent() end

---@return sol.environment
function obe.Script._GameObject:getEnvironment() end

---@param state boolean #
function obe.Script._GameObject:setState(state) end

--- Dumps the content of the Serializable object to a vili node.
---
---@return vili.node
function obe.Script._GameObject:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Script._GameObject:load(data) end

---@param path string #
function obe.Script._GameObject:loadSource(path) end


---@class obe.Script.GameObjectDatabase
obe.Script._GameObjectDatabase = {};


--- Gets the Requires ComplexNode of the GameObject.
---
---@param type string #Type of the GameObject to get the Requirements
---@return vili.node
function obe.Script._GameObjectDatabase:GetRequirementsForGameObject(type) end

--- Gets the ObjectDefinition ComplexNode of the GameObject.
---
---@param type string #Type of the GameObject to get the GameObject Definition File
---@return vili.node
function obe.Script._GameObjectDatabase:GetDefinitionForGameObject(type) end

--- Applies the Requirements to a GameObject using a Requires ComplexNode.
---
---@param environment sol.environment #
---@param requires vili.node #ComplexNode containing the Requirements
function obe.Script._GameObjectDatabase:ApplyRequirements(environment, requires) end

--- Clears the GameObjectDatabase (cache reload)
---
function obe.Script._GameObjectDatabase:Clear() end


---@class obe.Script.LuaState : sol.state
obe.Script._LuaState = {};


---@param config vili.node #
function obe.Script._LuaState:loadConfig(config) end


---@param callback function #
---@param args Args &&... #
function obe.Script.safeLuaCall(callback, args) end

return obe.Script;