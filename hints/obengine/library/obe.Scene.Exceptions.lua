---@meta

obe.Scene.Exceptions = {};
---@class obe.Scene.Exceptions.ChildNotInSceneNode : obe.Exception[obe.Scene.Exceptions.ChildNotInSceneNode]
obe.Scene.Exceptions._ChildNotInSceneNode = {};

--- obe.Scene.Exceptions.ChildNotInSceneNode constructor
---
---@param sceneNode nil #
---@param child nil #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.ChildNotInSceneNode
function obe.Scene.Exceptions.ChildNotInSceneNode(sceneNode, child, info) end



---@class obe.Scene.Exceptions.GameObjectAlreadyExists : obe.Exception[obe.Scene.Exceptions.GameObjectAlreadyExists]
obe.Scene.Exceptions._GameObjectAlreadyExists = {};

--- obe.Scene.Exceptions.GameObjectAlreadyExists constructor
---
---@param sceneFile string #
---@param objectType string #
---@param objectId string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.GameObjectAlreadyExists
function obe.Scene.Exceptions.GameObjectAlreadyExists(sceneFile, objectType, objectId, info) end



---@class obe.Scene.Exceptions.InvalidSceneFile : obe.Exception[obe.Scene.Exceptions.InvalidSceneFile]
obe.Scene.Exceptions._InvalidSceneFile = {};

--- obe.Scene.Exceptions.InvalidSceneFile constructor
---
---@param sceneFile string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.InvalidSceneFile
function obe.Scene.Exceptions.InvalidSceneFile(sceneFile, info) end



---@class obe.Scene.Exceptions.MissingSceneFileBlock : obe.Exception[obe.Scene.Exceptions.MissingSceneFileBlock]
obe.Scene.Exceptions._MissingSceneFileBlock = {};

--- obe.Scene.Exceptions.MissingSceneFileBlock constructor
---
---@param sceneFile string #
---@param blockName string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.MissingSceneFileBlock
function obe.Scene.Exceptions.MissingSceneFileBlock(sceneFile, blockName, info) end



---@class obe.Scene.Exceptions.SceneOnLoadCallbackError : obe.Exception[obe.Scene.Exceptions.SceneOnLoadCallbackError]
obe.Scene.Exceptions._SceneOnLoadCallbackError = {};

--- obe.Scene.Exceptions.SceneOnLoadCallbackError constructor
---
---@param sceneFile string #
---@param nextSceneFile string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.SceneOnLoadCallbackError
function obe.Scene.Exceptions.SceneOnLoadCallbackError(sceneFile, nextSceneFile, errorMessage, info) end



---@class obe.Scene.Exceptions.SceneScriptLoadingError : obe.Exception[obe.Scene.Exceptions.SceneScriptLoadingError]
obe.Scene.Exceptions._SceneScriptLoadingError = {};

--- obe.Scene.Exceptions.SceneScriptLoadingError constructor
---
---@param sceneFile string #
---@param scriptPath string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.SceneScriptLoadingError
function obe.Scene.Exceptions.SceneScriptLoadingError(sceneFile, scriptPath, errorMessage, info) end



---@class obe.Scene.Exceptions.UnknownCollider : obe.Exception[obe.Scene.Exceptions.UnknownCollider]
obe.Scene.Exceptions._UnknownCollider = {};

--- obe.Scene.Exceptions.UnknownCollider constructor
---
---@param sceneFile string #
---@param colliderId string #
---@param allCollidersIds string[] #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownCollider
function obe.Scene.Exceptions.UnknownCollider(sceneFile, colliderId, allCollidersIds, info) end



---@class obe.Scene.Exceptions.UnknownGameObject : obe.Exception[obe.Scene.Exceptions.UnknownGameObject]
obe.Scene.Exceptions._UnknownGameObject = {};

--- obe.Scene.Exceptions.UnknownGameObject constructor
---
---@param sceneFile string #
---@param objectId string #
---@param allObjectIds string[] #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownGameObject
function obe.Scene.Exceptions.UnknownGameObject(sceneFile, objectId, allObjectIds, info) end



---@class obe.Scene.Exceptions.UnknownSprite : obe.Exception[obe.Scene.Exceptions.UnknownSprite]
obe.Scene.Exceptions._UnknownSprite = {};

--- obe.Scene.Exceptions.UnknownSprite constructor
---
---@param sceneFile string #
---@param spriteId string #
---@param allSpritesIds string[] #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownSprite
function obe.Scene.Exceptions.UnknownSprite(sceneFile, spriteId, allSpritesIds, info) end



return obe.Scene.Exceptions;