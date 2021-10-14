obe = {};
vili = {};
obe.Audio = {};
obe.Network = {};
obe.Event = {};
obe.Events = {};
obe.Collision = {};
obe.Config = {};
obe.Component = {};
obe.Graphics = {};
obe.Time = {};
obe.Tiles = {};
obe.Script = {};
obe.Debug = {};
obe.Input = {};
vili.writer = {};
obe.Scene = {};
vili.utils = {};
obe.Engine = {};
obe.Bindings = {};
obe.Types = {};
obe.Utils = {};
obe.Animation = {};
obe.Transform = {};
vili.exceptions = {};
obe.System = {};
vili.parser = {};
obe.Utils.Exec = {};
vili.parser.rules = {};
obe.Events.Actions = {};
obe.Config.Templates = {};
obe.Utils.Vector = {};
obe.Transform.Exceptions = {};
obe.Events.Network = {};
vili.writer.dump_options = {};
obe.System.Prefixes = {};
obe.Audio.Exceptions = {};
obe.Engine.Exceptions = {};
obe.Config.Exceptions = {};
vili.utils.string = {};
obe.Animation.Exceptions = {};
obe.Config.Validators = {};
obe.Utils.File = {};
obe.System.Project = {};
obe.System.Constraints = {};
obe.Events.Cursor = {};
obe.Script.Exceptions = {};
obe.Component.Exceptions = {};
obe.Collision.Exceptions = {};
obe.Graphics.Exceptions = {};
obe.Input.Exceptions = {};
obe.Graphics.Utils = {};
obe.Utils.Math = {};
obe.Animation.Easing = {};
obe.Debug.Render = {};
obe.Graphics.Shapes = {};
obe.Tiles.Exceptions = {};
obe.Events.Game = {};
obe.Events.Keys = {};
obe.Script.ViliLuaBridge = {};
obe.Utils.String = {};
obe.Events.Scene = {};
obe.System.Package = {};
obe.Event.Exceptions = {};
obe.Scene.Exceptions = {};
obe.System.Priorities = {};
obe.Graphics.Canvas = {};
obe.System.Exceptions = {};
obe.System.Project.Prefixes = {};

---@alias obe.Time.TimeUnit number

---@alias obe.Animation.Easing.Easing.EasingFunction function

---@alias obe.Collision.TrajectoryCheckFunction function(trajectory: obe.Collision.Trajectory, offset: obe.Transform.UnitVector, collider: obe.Collision.PolygonalCollider)

---@alias obe.Collision.OnCollideCallback function(trajectory: obe.Collision.Trajectory, offset: obe.Transform.UnitVector, data: obe.Collision.CollisionData)

---@alias obe.Event.Callback function

---@alias obe.Event.ExternalEventListener obe.Event.LuaEventListener

---@alias obe.Event.EventProfiler table<string, obe.Event.CallbackProfiler>

---@alias obe.Event.OnListenerChange function(change_state: obe.Event.ListenerChangeState, string)

---@alias obe.Event.EventGroupPtr obe.Event.EventGroup

---@alias sol.protected_function function

---@alias sol.lua_value any

---@alias sol.object table

---@alias obe.Graphics.CoordinateTransformer function(position: number, camera: number, layer: number):number

---@alias obe.System.MountList table<number, obe.System.MountablePath>

---@alias obe.Tiles.AnimatedTiles table<number, obe.Tiles.AnimatedTile>

---@alias obe.Transform.PolygonPath table<number, obe.Transform.PolygonPoint>

---@alias obe.Transform.point_index_t number

---@alias point_index_t number

---@alias vili.number number

---@alias vili.integer number

---@alias vili.boolean boolean

---@alias vili.array table<number, any>

---@alias vili.object table<string, any>

---@alias vili.string string

---@alias obe.Input.InputButtonMonitorPtr obe.Input.InputButtonMonitor

---@class obe.Animation.Animation
obe.Animation._Animation = {};

--- obe.Animation.Animation constructor
---
---@return obe.Animation.Animation
function obe.Animation.Animation() end


--- Apply global Animation parameters (Sprite offset and priority)
---
---@param parameters vili.node #A vili::node that contains the following optional parameters : spriteOffsetX : x Coordinate of the Sprite Offset in the Animation in pixels. spriteOffsetY : y Coordinate of the Sprite Offset in the Animation in pixels. priority : Priority of the Animation (A higher Animation priority can't be interrupted by an Animation with a lower one).
function obe.Animation._Animation:applyParameters(parameters) end

--- Get the name of all contained AnimationGroup of the Animation.
---
---@return table<number, string>
function obe.Animation._Animation:getAllAnimationGroupName() end

--- Get the default delay of the Animation. The delay will be transferred to AnimationGroup children if not specified.
---
---@return obe.Time.TimeUnit
function obe.Animation._Animation:getDelay() end

--- Get AnimationGroup pointer by groupName. It will throws a ObEngine.Animation.Animation.AnimationGroupNotFound if the AnimationGroup is not found.
---
---@param groupName string #The name of the AnimationGroup to return
---@return obe.Animation.AnimationGroup
function obe.Animation._Animation:getAnimationGroup(groupName) end

--- Get the Animation name.
---
---@return string
function obe.Animation._Animation:getName() end

--- Get the Animation Play Mode.
---
---@return obe.Animation.AnimationPlayMode
function obe.Animation._Animation:getPlayMode() end

--- Get the Animation Status.
---
---@return obe.Animation.AnimationStatus
function obe.Animation._Animation:getStatus() end

--- Get the name of the Animation to call when the AnimationStatus of the Animation is equal to AnimationStatus::Call.
---
---@return string
function obe.Animation._Animation:getCalledAnimation() end

--- Get the name of the current AnimationGroup.
---
---@return string
function obe.Animation._Animation:getCurrentAnimationGroup() end

--- Return the Animation priority.
---
---@return number
function obe.Animation._Animation:getPriority() end

--- Get the current Texture displayed by the Animation.
---
---@return obe.Graphics.Texture
function obe.Animation._Animation:getTexture() end

--- Get the texture used in the Animation at the specified index.
---
---@param index number #Index of the texture to return.
---@return obe.Graphics.Texture
function obe.Animation._Animation:getTextureAtIndex(index) end

--- Return whether the Animation is over or not.
---
---@return boolean
function obe.Animation._Animation:isOver() end

--- Configure an Animation using the Animation configuration file (Vili file)
---
---@param path obe.System.Path #System::Path to the Animation config file (.ani.vili file extension)
---@param resources? obe.Engine.ResourceManager #pointer to the ResourceManager that will load the textures for the Animation
function obe.Animation._Animation:loadAnimation(path, resources) end

--- Reset the Animation (Unselect current AnimationGroup and restart AnimationCode)
---
function obe.Animation._Animation:reset() end

--- Update the Animation (Updates the current AnimationGroup, executes the AnimationCode)
---
function obe.Animation._Animation:update() end

--- Enables or disables anti-aliasing for textures of this animation.
---
---@param antiAliasing boolean #should be true to enable antiAliasing, false otherwise
function obe.Animation._Animation:setAntiAliasing(antiAliasing) end

--- Gets the anti-aliasing status for the Animation.
---
---@return boolean
function obe.Animation._Animation:getAntiAliasing() end

---@return obe.Animation.AnimationState
function obe.Animation._Animation:makeState() end


---@class obe.Animation.AnimationGroup
obe.Animation._AnimationGroup = {};

--- AnimationGroup constructor.
---
---@param name string #Name of the AnimationGroup
---@return obe.Animation.AnimationGroup
function obe.Animation.AnimationGroup(name) end

--- obe.Animation.AnimationGroup constructor
---
---@param group obe.Animation.AnimationGroup #
---@return obe.Animation.AnimationGroup
function obe.Animation.AnimationGroup(group) end


--- Get the delay between each frame of the AnimationGroup.
---
---@return obe.Time.TimeUnit
function obe.Animation._AnimationGroup:getDelay() end

--- Get the current index of AnimationGroup.
---
---@return number
function obe.Animation._AnimationGroup:getIndex() end

--- Get the name of the AnimationGroup.
---
---@return string
function obe.Animation._AnimationGroup:getName() end

--- Get the AnimationGroup size.
---
---@return number
function obe.Animation._AnimationGroup:getSize() end

--- Get the current Sprite of the AnimationGroup.
---
---@return obe.Graphics.Texture
function obe.Animation._AnimationGroup:getTexture() end

--- Get if the AnimationGroup is done playing.
---
---@return boolean
function obe.Animation._AnimationGroup:isOver() end

--- Increment index of the current texture to be displayed.
---
---@param force? boolean #
function obe.Animation._AnimationGroup:next(force) end

--- Decrement index of the current texture to be displayed.
---
---@param force? boolean #
function obe.Animation._AnimationGroup:previous(force) end

--- Add a new texture to the AnimationGroup.
---
---@param texture obe.Graphics.Texture #A pointer of a Texture to add to the AnimationGroup
function obe.Animation._AnimationGroup:pushTexture(texture) end

--- Remove the texture at the given index in the AnimationGroup.
---
---@param index number #Removes the texture at index
function obe.Animation._AnimationGroup:removeTextureByIndex(index) end

--- Reset the AnimationGroup (Index to 0, Loops to 0, Delay to 0)
---
function obe.Animation._AnimationGroup:reset() end

--- Set the delay between each frame of the AnimationGroup.
---
---@param delay obe.Time.TimeUnit #Delay in milliseconds
function obe.Animation._AnimationGroup:setDelay(delay) end

--- Set how many times the AnimationGroup should be replayed before end.
---
---@param loops number #Amount of loops to do
function obe.Animation._AnimationGroup:setLoops(loops) end


---@class obe.Animation.AnimationState
obe.Animation._AnimationState = {};

--- obe.Animation.AnimationState constructor
---
---@param parent obe.Animation.Animation #
---@return obe.Animation.AnimationState
function obe.Animation.AnimationState(parent) end


function obe.Animation._AnimationState:load() end

--- Get the Animation Status.
---
---@return obe.Animation.AnimationStatus
function obe.Animation._AnimationState:getStatus() end

--- Get the name of the Animation to call when the AnimationStatus of the Animation is equal to AnimationStatus::Call.
---
---@return string
function obe.Animation._AnimationState:getCalledAnimation() end

--- Get AnimationGroup pointer by groupName. It will throws a ObEngine.Animation.Animation.AnimationGroupNotFound if the AnimationGroup is not found.
---
---@param groupName string #The name of the AnimationGroup to return
---@return obe.Animation.AnimationGroup
function obe.Animation._AnimationState:getAnimationGroup(groupName) end

--- Get the name of the current AnimationGroup.
---
---@return string
function obe.Animation._AnimationState:getCurrentAnimationGroup() end

--- Get the current Texture displayed by the Animation.
---
---@return obe.Graphics.Texture
function obe.Animation._AnimationState:getTexture() end

--- Return whether the Animation is over or not.
---
---@return boolean
function obe.Animation._AnimationState:isOver() end

--- Reset the Animation (Unselect current AnimationGroup and restart AnimationCode)
---
function obe.Animation._AnimationState:reset() end

--- Update the Animation (Updates the current AnimationGroup, executes the AnimationCode)
---
function obe.Animation._AnimationState:update() end

---@return obe.Animation.Animation
function obe.Animation._AnimationState:getAnimation() end


---@class obe.Animation.Animator
obe.Animation._Animator = {};

--- obe.Animation.Animator constructor
---
---@return obe.Animation.Animator
function obe.Animation.Animator() end


--- Clear the Animator of all Animation.
---
function obe.Animation._Animator:clear() end

--- Get the name of all contained Animation.
---
---@return table<number, string>
function obe.Animation._Animator:getAllAnimationName() end

--- Get the contained Animation pointer by Animation name.
---
---@param animationName string #Name of the Animation to get
---@return obe.Animation.Animation
function obe.Animation._Animator:getAnimation(animationName) end

--- Get the name of the currently played Animation.
---
---@return string
function obe.Animation._Animator:getKey() end

--- Get the current Sprite of the current Animation.
---
---@return obe.Graphics.Texture
function obe.Animation._Animator:getTexture() end

--- Call Animation::getTextureAtIndex.
---
---@param key string #Name of the Animation where the Texture is located
---@param index number #Index of the Texture in the Animation
---@return obe.Graphics.Texture
function obe.Animation._Animator:getTextureAtKey(key, index) end

--- Loads the Animator It will also load all the Animation contained in the Animator. If an Animator configuration file is found it will load it.
---
---@param path obe.System.Path #
---@param resources? obe.Engine.ResourceManager #
function obe.Animation._Animator:load(path, resources) end

--- Set the Animation to play by name.
---
---@param key string #A std::string containing the name of the Animation to play.
function obe.Animation._Animator:setKey(key) end

--- Start or Pause the Animator (won't do anything even if updated)
---
---@param pause boolean #true if the Animator should pause, false otherwise
function obe.Animation._Animator:setPaused(pause) end

--- Update the Animator and the currently played Animation.
---
function obe.Animation._Animator:update() end

---@param sprite obe.Graphics.Sprite #
---@param targetScaleMode? obe.Animation.AnimatorTargetScaleMode #
function obe.Animation._Animator:setTarget(sprite, targetScaleMode) end

---@return obe.System.Path
function obe.Animation._Animator:getPath() end

---@return obe.Animation.AnimatorState
function obe.Animation._Animator:makeState() end


---@class obe.Animation.AnimatorState
obe.Animation._AnimatorState = {};

--- obe.Animation.AnimatorState constructor
---
---@param parent obe.Animation.Animator #
---@return obe.Animation.AnimatorState
function obe.Animation.AnimatorState(parent) end


--- Get the name of the currently played Animation.
---
function obe.Animation._AnimatorState:load() end

---@return string
function obe.Animation._AnimatorState:getKey() end

--- Set the Animation to play by name.
---
---@param key string #A std::string containing the name of the Animation to play.
function obe.Animation._AnimatorState:setKey(key) end

--- Start or Pause the Animator (won't do anything even if updated)
---
---@param pause boolean #true if the Animator should pause, false otherwise
function obe.Animation._AnimatorState:setPaused(pause) end

--- Update the Animator and the currently played Animation.
---
function obe.Animation._AnimatorState:update() end

---@param sprite obe.Graphics.Sprite #
---@param targetScaleMode? obe.Animation.AnimatorTargetScaleMode #
function obe.Animation._AnimatorState:setTarget(sprite, targetScaleMode) end

function obe.Animation._AnimatorState:reset() end

---@return obe.Graphics.Sprite
function obe.Animation._AnimatorState:getTarget() end

---@return obe.Animation.AnimationState
function obe.Animation._AnimatorState:getCurrentAnimation() end

---@return obe.Graphics.Texture
function obe.Animation._AnimatorState:getTexture() end

---@return obe.Animation.Animator
function obe.Animation._AnimatorState:getAnimator() end


---@class obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow
obe.Animation.Exceptions._AnimationGroupTextureIndexOverflow = {};

--- obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow constructor
---
---@param animationGroup string #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow
function obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow(animationGroup, index, maximum, info) end



---@class obe.Animation.Exceptions.AnimationTextureIndexOverflow
obe.Animation.Exceptions._AnimationTextureIndexOverflow = {};

--- obe.Animation.Exceptions.AnimationTextureIndexOverflow constructor
---
---@param animation string #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.AnimationTextureIndexOverflow
function obe.Animation.Exceptions.AnimationTextureIndexOverflow(animation, index, maximum, info) end



---@class obe.Animation.Exceptions.InvalidAnimationFile
obe.Animation.Exceptions._InvalidAnimationFile = {};

--- obe.Animation.Exceptions.InvalidAnimationFile constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.InvalidAnimationFile
function obe.Animation.Exceptions.InvalidAnimationFile(path, info) end



---@class obe.Animation.Exceptions.NoSelectedAnimation
obe.Animation.Exceptions._NoSelectedAnimation = {};

--- obe.Animation.Exceptions.NoSelectedAnimation constructor
---
---@param animator string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.NoSelectedAnimation
function obe.Animation.Exceptions.NoSelectedAnimation(animator, info) end



---@class obe.Animation.Exceptions.NoSelectedAnimationGroup
obe.Animation.Exceptions._NoSelectedAnimationGroup = {};

--- obe.Animation.Exceptions.NoSelectedAnimationGroup constructor
---
---@param animation string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.NoSelectedAnimationGroup
function obe.Animation.Exceptions.NoSelectedAnimationGroup(animation, info) end



---@class obe.Animation.Exceptions.UnknownAnimation
obe.Animation.Exceptions._UnknownAnimation = {};

--- obe.Animation.Exceptions.UnknownAnimation constructor
---
---@param animatorPath string #
---@param animation string #
---@param animations table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimation
function obe.Animation.Exceptions.UnknownAnimation(animatorPath, animation, animations, info) end



---@class obe.Animation.Exceptions.UnknownAnimationCommand
obe.Animation.Exceptions._UnknownAnimationCommand = {};

--- obe.Animation.Exceptions.UnknownAnimationCommand constructor
---
---@param animation string #
---@param command string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationCommand
function obe.Animation.Exceptions.UnknownAnimationCommand(animation, command, info) end



---@class obe.Animation.Exceptions.UnknownAnimationGroup
obe.Animation.Exceptions._UnknownAnimationGroup = {};

--- obe.Animation.Exceptions.UnknownAnimationGroup constructor
---
---@param animation string #
---@param groupName string #
---@param groups table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationGroup
function obe.Animation.Exceptions.UnknownAnimationGroup(animation, groupName, groups, info) end



---@class obe.Animation.Exceptions.UnknownAnimationPlayMode
obe.Animation.Exceptions._UnknownAnimationPlayMode = {};

--- obe.Animation.Exceptions.UnknownAnimationPlayMode constructor
---
---@param playMode string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationPlayMode
function obe.Animation.Exceptions.UnknownAnimationPlayMode(playMode, info) end



---@class obe.Animation.Exceptions.UnknownEasingFromEnum
obe.Animation.Exceptions._UnknownEasingFromEnum = {};

--- obe.Animation.Exceptions.UnknownEasingFromEnum constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownEasingFromEnum
function obe.Animation.Exceptions.UnknownEasingFromEnum(enumValue, info) end



---@class obe.Animation.Exceptions.UnknownEasingFromString
obe.Animation.Exceptions._UnknownEasingFromString = {};

--- obe.Animation.Exceptions.UnknownEasingFromString constructor
---
---@param easingName string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownEasingFromString
function obe.Animation.Exceptions.UnknownEasingFromString(easingName, info) end



---@class obe.Animation.Exceptions.UnknownTargetScaleMode
obe.Animation.Exceptions._UnknownTargetScaleMode = {};

--- obe.Animation.Exceptions.UnknownTargetScaleMode constructor
---
---@param targetScaleMode string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownTargetScaleMode
function obe.Animation.Exceptions.UnknownTargetScaleMode(targetScaleMode, info) end



---@class obe.Animation.ValueTweening
obe.Animation._ValueTweening = {};

--- obe.Animation.ValueTweening constructor
---
---@param duration obe.Time.TimeUnit #
---@return obe.Animation.ValueTweening
function obe.Animation.ValueTweening(duration) end

--- obe.Animation.ValueTweening constructor
---
---@param from number #
---@param to number #
---@param duration obe.Time.TimeUnit #
---@return obe.Animation.ValueTweening
function obe.Animation.ValueTweening(from, to, duration) end


---@param from number #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:from(from) end

---@param to number #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:to(to) end

---@param easing function #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:ease(easing) end

---@return boolean
function obe.Animation._ValueTweening:done() end

---@param dt number #
---@return number
function obe.Animation._ValueTweening:step(dt) end


---@class obe.Audio.AudioManager
obe.Audio._AudioManager = {};

--- Initializes the underlying audio engine.
---
---@return obe.Audio.AudioManager
function obe.Audio.AudioManager() end


--- Loads a sound file at a given path.
---
---@param path obe.System.Path #Path to the sound file
---@param loadPolicy? obe.Audio.LoadPolicy #The way you want to load the sound file
---@return obe.Audio.Sound
function obe.Audio._AudioManager:load(path, loadPolicy) end


---@class obe.Audio.Exceptions.AudioFileNotFound
obe.Audio.Exceptions._AudioFileNotFound = {};

--- obe.Audio.Exceptions.AudioFileNotFound constructor
---
---@param path string #
---@param mountedPaths table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Audio.Exceptions.AudioFileNotFound
function obe.Audio.Exceptions.AudioFileNotFound(path, mountedPaths, info) end



---@class obe.Audio.Sound
obe.Audio._Sound = {};

--- obe.Audio.Sound constructor
---
---@param manager SoLoud.Soloud #
---@param source SoLoud.AudioSource #
---@return obe.Audio.Sound
function obe.Audio.Sound(manager, source) end


---@return number
function obe.Audio._Sound:getDuration() end

function obe.Audio._Sound:play() end

function obe.Audio._Sound:pause() end

function obe.Audio._Sound:stop() end

---@param pitch number #
function obe.Audio._Sound:setPitch(pitch) end

---@return number
function obe.Audio._Sound:getPitch() end

---@param speed number #
function obe.Audio._Sound:setSpeed(speed) end

---@return number
function obe.Audio._Sound:getSpeed() end

---@return obe.Audio.SoundStatus
function obe.Audio._Sound:getStatus() end

---@return number
function obe.Audio._Sound:getOffset() end

---@param offset number #
function obe.Audio._Sound:setOffset(offset) end

---@return number
function obe.Audio._Sound:getVolume() end

---@param volume number #
function obe.Audio._Sound:setVolume(volume) end

---@param looping boolean #
function obe.Audio._Sound:setLooping(looping) end

---@return boolean
function obe.Audio._Sound:getLooping() end


---@class obe.BaseException
obe._BaseException = {};

--- obe.BaseException constructor
---
---@return obe.BaseException
function obe.BaseException() end


---@return string
function obe._BaseException:what() end

---@return table<number, std.runtime_error>
function obe._BaseException:traceback() end


---@class obe.Collision.CollisionData
---@field colliders table<number, PolygonalCollider> #Colliders the collider touched during the collision (empty if no collision occurs)
---@field offset obe.Transform.UnitVector #Maximum distance that can be traveled before collision.
obe.Collision._CollisionData = {};



---@class obe.Collision.Exceptions.InvalidTagFormat
obe.Collision.Exceptions._InvalidTagFormat = {};

--- obe.Collision.Exceptions.InvalidTagFormat constructor
---
---@param colliderId string #
---@param tagType string #
---@param dataType string #
---@param info obe.DebugInfo #
---@return obe.Collision.Exceptions.InvalidTagFormat
function obe.Collision.Exceptions.InvalidTagFormat(colliderId, tagType, dataType, info) end



---@class obe.Collision.PolygonalCollider
---@field ComponentType string #
obe.Collision._PolygonalCollider = {};

--- Constructs a PolygonalCollider.
---
---@param id string #Id of the PolygonalCollider (Used to retrieve it for example)
---@return obe.Collision.PolygonalCollider
function obe.Collision.PolygonalCollider(id) end

--- obe.Collision.PolygonalCollider constructor
---
---@param collider obe.Collision.PolygonalCollider #
---@return obe.Collision.PolygonalCollider
function obe.Collision.PolygonalCollider(collider) end


--- Adds a Tag to the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List where you want to add the Tag (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to add
function obe.Collision._PolygonalCollider:addTag(tagType, tag) end

--- Clears Tags of the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List you want to clear (Tag / Accepted /Rejected)
function obe.Collision._PolygonalCollider:clearTags(tagType) end

--- Check if the Collider contains one of the Tag in parameter.
---
---@param tagType obe.Collision.ColliderTagType #List from where you want to check the Tags existence (Tag / Accepted / Rejected)
---@param tags table<number, string> #List of Tags you want to check the existence
---@return boolean
function obe.Collision._PolygonalCollider:doesHaveAnyTag(tagType, tags) end

--- Checks if the Collider contains a Tag.
---
---@param tagType obe.Collision.ColliderTagType #List from where you want to check the Tag existence (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to check the existence
---@return boolean
function obe.Collision._PolygonalCollider:doesHaveTag(tagType, tag) end

--- Dumps the content of the PolygonalCollider to a ComplexNode.
---
---@return vili.node
function obe.Collision._PolygonalCollider:dump() end

--- Gets all the Tags from one of the Lists.
---
---@param tagType obe.Collision.ColliderTagType #List where you want to get all the Tags from (Tag / Accepted / Rejected)
---@return table<number, string>
function obe.Collision._PolygonalCollider:getAllTags(tagType) end

--- Get the Id of the parent of the Collider (When used in a GameObject)
---
---@return string
function obe.Collision._PolygonalCollider:getParentId() end

--- Loads the PolygonalCollider from a ComplexNode.
---
---@param data vili.node #ComplexNode containing the data of the PolygonalCollider
function obe.Collision._PolygonalCollider:load(data) end

--- Removes a Tag of the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List you want to remove a Collider from (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to remove
function obe.Collision._PolygonalCollider:removeTag(tagType, tag) end

--- Set the Id of the parent of the Collider (When used in a GameObject)
---
---@param parent string #A std::string containing the Id of the parent of the Collider
function obe.Collision._PolygonalCollider:setParentId(parent) end

---@return string
function obe.Collision._PolygonalCollider:type() end

---@return obe.Transform.Rect
function obe.Collision._PolygonalCollider:getBoundingBox() end

--- Adds a new Point to the Polygon at Position (x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position where to add the new Point
---@param pointIndex? number #Index where to insert the new Point, Use pointIndex = -1 <DefaultArg> to insert at the end (between last and first Point)
function obe.Collision._PolygonalCollider:addPoint(position, pointIndex) end

--- Moves the Movable (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Collision._PolygonalCollider:move(position) end

--- Adds an angle to the current angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to add to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Collision._PolygonalCollider:rotate(angle, origin) end

--- Set the position of the Movable using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the Movable
function obe.Collision._PolygonalCollider:setPosition(position) end

--- Sets the angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to set to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Collision._PolygonalCollider:setRotation(angle, origin) end

---@param position obe.Transform.UnitVector #
function obe.Collision._PolygonalCollider:setPositionFromCentroid(position) end


---@class obe.Collision.Trajectory
obe.Collision._Trajectory = {};

--- obe.Collision.Trajectory constructor
---
---@param unit? obe.Transform.Units #
---@return obe.Collision.Trajectory
function obe.Collision.Trajectory(unit) end


---@param acceleration number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addAcceleration(acceleration) end

---@param angle number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addAngle(angle) end

---@param check obe.Collision.TrajectoryCheckFunction #
function obe.Collision._Trajectory:addCheck(check) end

---@param speed number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addSpeed(speed) end

---@return number
function obe.Collision._Trajectory:getAcceleration() end

---@return number
function obe.Collision._Trajectory:getAngle() end

---@return table<number, obe.Collision.TrajectoryCheckFunction>
function obe.Collision._Trajectory:getChecks() end

---@return obe.Collision.OnCollideCallback
function obe.Collision._Trajectory:getOnCollideCallback() end

---@return number
function obe.Collision._Trajectory:getSpeed() end

---@return boolean
function obe.Collision._Trajectory:getStatic() end

---@return obe.Transform.Units
function obe.Collision._Trajectory:getUnit() end

---@param callback obe.Collision.OnCollideCallback #
function obe.Collision._Trajectory:onCollide(callback) end

---@param acceleration number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setAcceleration(acceleration) end

---@param angle number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setAngle(angle) end

---@param speed number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setSpeed(speed) end

---@param tStatic boolean #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setStatic(tStatic) end


---@class obe.Collision.TrajectoryNode
obe.Collision._TrajectoryNode = {};

--- obe.Collision.TrajectoryNode constructor
---
---@param sceneNode obe.Scene.SceneNode #
---@return obe.Collision.TrajectoryNode
function obe.Collision.TrajectoryNode(sceneNode) end


---@param id string #
---@param unit? obe.Transform.Units #
---@return obe.Collision.Trajectory
function obe.Collision._TrajectoryNode:addTrajectory(id, unit) end

---@return obe.Scene.SceneNode
function obe.Collision._TrajectoryNode:getSceneNode() end

---@param id string #
---@return obe.Collision.Trajectory
function obe.Collision._TrajectoryNode:getTrajectory(id) end

---@param id string #
function obe.Collision._TrajectoryNode:removeTrajectory(id) end

---@param probe obe.Collision.PolygonalCollider #
function obe.Collision._TrajectoryNode:setProbe(probe) end

---@param dt number #
function obe.Collision._TrajectoryNode:update(dt) end


---@class obe.Component.ComponentBase
---@field ComponentType string #
obe.Component._ComponentBase = {};

--- obe.Component.ComponentBase constructor
---
---@param id string #
---@return obe.Component.ComponentBase
function obe.Component.ComponentBase(id) end


---@param envIndex number #
function obe.Component._ComponentBase:inject(envIndex) end

function obe.Component._ComponentBase:remove() end

--- Dumps the content of the Serializable object to a vili node.
---
---@return vili.node
function obe.Component._ComponentBase:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Component._ComponentBase:load(data) end

---@return string
function obe.Component._ComponentBase:type() end


---@class obe.Component.Exceptions.ComponentIdAlreadyTaken
obe.Component.Exceptions._ComponentIdAlreadyTaken = {};

--- obe.Component.Exceptions.ComponentIdAlreadyTaken constructor
---
---@param id string #
---@param info obe.DebugInfo #
---@return obe.Component.Exceptions.ComponentIdAlreadyTaken
function obe.Component.Exceptions.ComponentIdAlreadyTaken(id, info) end



---@class obe.Config.ConfigurationManager
obe.Config._ConfigurationManager = {};

--- obe.Config.ConfigurationManager constructor
---
---@return obe.Config.ConfigurationManager
function obe.Config.ConfigurationManager() end


function obe.Config._ConfigurationManager:load() end


---@class obe.Config.Exceptions.ConfigError
obe.Config.Exceptions._ConfigError = {};

--- obe.Config.Exceptions.ConfigError constructor
---
---@param configFiles table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Config.Exceptions.ConfigError
function obe.Config.Exceptions.ConfigError(configFiles, info) end



---@class obe.Config.Exceptions.InvalidVersionFormat
obe.Config.Exceptions._InvalidVersionFormat = {};

--- obe.Config.Exceptions.InvalidVersionFormat constructor
---
---@param detail string #
---@param info obe.DebugInfo #
---@return obe.Config.Exceptions.InvalidVersionFormat
function obe.Config.Exceptions.InvalidVersionFormat(detail, info) end



---@class obe.Config.Version
---@field major number #
---@field minor number #
---@field patch number #
obe.Config._Version = {};

--- obe.Config.Version constructor
---
---@param version_major number #
---@param version_minor number #
---@param version_patch number #
---@return obe.Config.Version
function obe.Config.Version(version_major, version_minor, version_patch) end

--- obe.Config.Version constructor
---
---@param str string #
---@return obe.Config.Version
function obe.Config.Version(str) end


---@return string
function obe.Config._Version:string() end


---@class obe.DebugInfo
---@field file string #
---@field line number #
---@field function string #
obe._DebugInfo = {};

--- obe.DebugInfo constructor
---
---@param file string #
---@param line number #
---@param funcname string #
---@return obe.DebugInfo
function obe.DebugInfo(file, line, funcname) end



---@class obe.Engine.Engine
---@field Audio obe.Audio.AudioManager #
---@field Configuration obe.Config.ConfigurationManager #
---@field Resources obe.Engine.ResourceManager #
---@field Input obe.Input.InputManager #
---@field Framerate obe.Time.FramerateManager #
---@field Events obe.Event.EventManager #
---@field Scene obe.Scene.Scene #
---@field Cursor obe.System.Cursor #
---@field Window obe.System.Window #
obe.Engine._Engine = {};

--- obe.Engine.Engine constructor
---
---@return obe.Engine.Engine
function obe.Engine.Engine() end


function obe.Engine._Engine:init() end

function obe.Engine._Engine:run() end


---@class obe.Engine.Exceptions.BootScriptExecutionError
obe.Engine.Exceptions._BootScriptExecutionError = {};

--- obe.Engine.Exceptions.BootScriptExecutionError constructor
---
---@param functionName string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptExecutionError
function obe.Engine.Exceptions.BootScriptExecutionError(functionName, errorMessage, info) end



---@class obe.Engine.Exceptions.BootScriptLoadingError
obe.Engine.Exceptions._BootScriptLoadingError = {};

--- obe.Engine.Exceptions.BootScriptLoadingError constructor
---
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptLoadingError
function obe.Engine.Exceptions.BootScriptLoadingError(errorMessage, info) end



---@class obe.Engine.Exceptions.BootScriptMissing
obe.Engine.Exceptions._BootScriptMissing = {};

--- obe.Engine.Exceptions.BootScriptMissing constructor
---
---@param mountedPaths table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.BootScriptMissing
function obe.Engine.Exceptions.BootScriptMissing(mountedPaths, info) end



---@class obe.Engine.Exceptions.FontNotFound
obe.Engine.Exceptions._FontNotFound = {};

--- obe.Engine.Exceptions.FontNotFound constructor
---
---@param path string #
---@param mounts table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.FontNotFound
function obe.Engine.Exceptions.FontNotFound(path, mounts, info) end



---@class obe.Engine.Exceptions.TextureNotFound
obe.Engine.Exceptions._TextureNotFound = {};

--- obe.Engine.Exceptions.TextureNotFound constructor
---
---@param path string #
---@param mounts table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.TextureNotFound
function obe.Engine.Exceptions.TextureNotFound(path, mounts, info) end



---@class obe.Engine.Exceptions.UnitializedEngine
obe.Engine.Exceptions._UnitializedEngine = {};

--- obe.Engine.Exceptions.UnitializedEngine constructor
---
---@param info obe.DebugInfo #
---@return obe.Engine.Exceptions.UnitializedEngine
function obe.Engine.Exceptions.UnitializedEngine(info) end



---@class obe.Engine.ResourceManagedObject
obe.Engine._ResourceManagedObject = {};


function obe.Engine._ResourceManagedObject:removeResourceManager() end

---@param resources obe.Engine.ResourceManager #
function obe.Engine._ResourceManagedObject:attachResourceManager(resources) end


---@class obe.Engine.ResourceManager
---@field defaultAntiAliasing boolean #
obe.Engine._ResourceManager = {};

--- obe.Engine.ResourceManager constructor
---
---@return obe.Engine.ResourceManager
function obe.Engine.ResourceManager() end


---@param path string #
---@return obe.Graphics.Font
function obe.Engine._ResourceManager:getFont(path) end

function obe.Engine._ResourceManager:clean() end


---@class obe.Event.CallbackProfiler
---@field hits number #
---@field time obe.Time.TimeUnit #
---@field min obe.Time.TimeUnit #
---@field max obe.Time.TimeUnit #
obe.Event._CallbackProfiler = {};



---@class obe.Event.CallbackScheduler
obe.Event._CallbackScheduler = {};

--- obe.Event.CallbackScheduler constructor
---
---@return obe.Event.CallbackScheduler
function obe.Event.CallbackScheduler() end


---@param amount number #
---@return obe.Event.CallbackScheduler
function obe.Event._CallbackScheduler:after(amount) end

---@param amount number #
---@return obe.Event.CallbackScheduler
function obe.Event._CallbackScheduler:every(amount) end

--- calls the callback amount times at the rate configured in the every(x) call
---
---@param amount number #
---@return obe.Event.CallbackScheduler
function obe.Event._CallbackScheduler:replay(amount) end

---@param callback obe.Event.Callback #
function obe.Event._CallbackScheduler:run(callback) end

function obe.Event._CallbackScheduler:stop() end


---@class obe.Event.EventBase
obe.Event._EventBase = {};

--- Creates a new Event.
---
---@param parentName string #Identifier of the parent EventGroup
---@param name string #Name of the Event
---@param startState? boolean #State of the Event when created (enabled / disabled)
---@return obe.Event.EventBase
function obe.Event.EventBase(parentName, name, startState) end


--- Get the State of the Event (enabled / disabled)
---
---@return boolean
function obe.Event._EventBase:getState() end

--- Get the name of the Event.
---
---@return string
function obe.Event._EventBase:getName() end

--- Get the identifier of the Event.
---
---@return string
function obe.Event._EventBase:getIdentifier() end

--- Registers a listener that will be called when the Event is triggered.
---
---@param id string #of the listener being added
---@param listener obe.Event.ExternalEventListener #Listener to register
function obe.Event._EventBase:addExternalListener(id, listener) end

--- Removes a Listener from the Event.
---
---@param id string #id of the Listener to unregister
function obe.Event._EventBase:removeExternalListener(id) end

---@return obe.Event.EventProfiler
function obe.Event._EventBase:getProfiler() end


---@class obe.Event.EventGroup
obe.Event._EventGroup = {};

--- Creates a new EventGroup.
---
---@param eventNamespace string #Name of the Namespace the EventGroup is in
---@param name string #Name of the EventGroup
---@return obe.Event.EventGroup
function obe.Event.EventGroup(eventNamespace, name) end


---@return obe.Event.EventGroupView
function obe.Event._EventGroup:getView() end

--- Sets if the EventGroup is joinable or not.
---
---@param joinable boolean #true if the EventGroup should be joinable, false otherwise
function obe.Event._EventGroup:setJoinable(joinable) end

--- Get if the EventGroup is joinable or not.
---
---@return boolean
function obe.Event._EventGroup:isJoinable() end

--- Checks whether the EventGroup contains an Event with a given name or not.
---
---@param eventName string #Name of the Event to check the existence of
---@return boolean
function obe.Event._EventGroup:contains(eventName) end

--- Removes a Event from the EventGroup.
---
---@param eventName string #Name of the Event to remove
function obe.Event._EventGroup:remove(eventName) end

--- Get the name of all Events contained in the EventGroup.
---
---@return table<number, string>
function obe.Event._EventGroup:getEventsNames() end

--- Get all the Events contained in the EventGroup.
---
---@return table<number, obe.Event.EventBase>
function obe.Event._EventGroup:getEvents() end

--- Get the full name of the EventGroup (namespace + name)
---
---@return string
function obe.Event._EventGroup:getIdentifier() end

--- Get the name of the EventGroup.
---
---@return string
function obe.Event._EventGroup:getName() end

--- Register a callback for when Event::addListener is called.
---
---@param eventName string #
---@param callback obe.Event.OnListenerChange #
function obe.Event._EventGroup:onAddListener(eventName, callback) end

--- Register a callback for when Event::removeListener is called.
---
---@param eventName string #
---@param callback obe.Event.OnListenerChange #
function obe.Event._EventGroup:onRemoveListener(eventName, callback) end

---@return vili.node
function obe.Event._EventGroup:getProfilerResults() end


---@class obe.Event.EventGroupView
obe.Event._EventGroupView = {};

--- obe.Event.EventGroupView constructor
---
---@param eventGroup obe.Event.EventGroup #
---@return obe.Event.EventGroupView
function obe.Event.EventGroupView(eventGroup) end


--- Get the name of all Events contained in the EventGroup.
---
---@return table<number, string>
function obe.Event._EventGroupView:getEventsNames() end

--- Get all the Events contained in the EventGroup.
---
---@return table<number, obe.Event.EventBase>
function obe.Event._EventGroupView:getEvents() end

--- Get the full name of the EventGroup (namespace + name)
---
---@return string
function obe.Event._EventGroupView:getIdentifier() end

--- Get the name of the EventGroup.
---
---@return string
function obe.Event._EventGroupView:getName() end

--- Get if the EventGroup is joinable or not.
---
---@return boolean
function obe.Event._EventGroupView:isJoinable() end

---@return vili.node
function obe.Event._EventGroupView:getProfilerResults() end


---@class obe.Event.EventManager
obe.Event._EventManager = {};

--- obe.Event.EventManager constructor
---
---@return obe.Event.EventManager
function obe.Event.EventManager() end


--- Updates the EventManager.
---
function obe.Event._EventManager:update() end

--- Clears the EventManager.
---
function obe.Event._EventManager:clear() end

---@param eventNamespace string #
---@return obe.Event.EventNamespace
function obe.Event._EventManager:createNamespace(eventNamespace) end

---@param eventNamespace string #
---@return obe.Event.EventNamespaceView
function obe.Event._EventManager:getNamespace(eventNamespace) end

---@return obe.Event.CallbackScheduler
function obe.Event._EventManager:schedule() end

---@return vili.node
function obe.Event._EventManager:dumpProfilerResults() end


---@class obe.Event.EventNamespace
obe.Event._EventNamespace = {};

--- obe.Event.EventNamespace constructor
---
---@param name string #
---@return obe.Event.EventNamespace
function obe.Event.EventNamespace(name) end


--- Creates a new EventGroup (Throws an error if the EventGroup already exists)
---
---@param group string #Name of the new EventGroup
---@return obe.Event.EventGroupPtr
function obe.Event._EventNamespace:createGroup(group) end

--- Join an existing EventGroup (Throws an error if the EventGroup does not exists or isn't joinable)
---
---@param group string #Name of the EventGroup to join
---@return obe.Event.EventGroupPtr
function obe.Event._EventNamespace:joinGroup(group) end

---@param group string #
---@return obe.Event.EventGroupView
function obe.Event._EventNamespace:getGroup(group) end

--- Get all the names of the EventGroup in the given Namespace.
---
---@return table<number, string>
function obe.Event._EventNamespace:getAllGroupsNames() end

--- Removes an existing EventGroup.
---
---@param group obe.Event.EventGroup #Pointer to the EventGroup to delete
function obe.Event._EventNamespace:removeGroup(group) end

--- Check if an EventGroup exists in the EventNamespace.
---
---@param group string #Name of the EventGroup to search
---@return boolean
function obe.Event._EventNamespace:doesGroupExists(group) end

---@return obe.Event.EventNamespaceView
function obe.Event._EventNamespace:getView() end


---@class obe.Event.EventNamespaceView
obe.Event._EventNamespaceView = {};

--- obe.Event.EventNamespaceView constructor
---
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.Event.EventNamespaceView
function obe.Event.EventNamespaceView(eventNamespace) end


---@param group string #
---@return obe.Event.EventGroupView
function obe.Event._EventNamespaceView:getGroup(group) end

--- Get all the names of the EventGroup in the given Namespace.
---
---@return table<number, string>
function obe.Event._EventNamespaceView:getAllGroupsNames() end

--- Check if an EventGroup exists in the EventNamespace.
---
---@param group string #Name of the EventGroup to search
---@return boolean
function obe.Event._EventNamespaceView:doesGroupExists(group) end


---@class obe.Event.Exceptions.CallbackCreationError
obe.Event.Exceptions._CallbackCreationError = {};

--- obe.Event.Exceptions.CallbackCreationError constructor
---
---@param eventName string #
---@param environmentId string #
---@param callback string #
---@param error string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.CallbackCreationError
function obe.Event.Exceptions.CallbackCreationError(eventName, environmentId, callback, error, info) end



---@class obe.Event.Exceptions.EventAlreadyExists
obe.Event.Exceptions._EventAlreadyExists = {};

--- obe.Event.Exceptions.EventAlreadyExists constructor
---
---@param eventGroupIdentifier string #
---@param eventName string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventAlreadyExists
function obe.Event.Exceptions.EventAlreadyExists(eventGroupIdentifier, eventName, info) end



---@class obe.Event.Exceptions.EventExecutionError
obe.Event.Exceptions._EventExecutionError = {};

--- obe.Event.Exceptions.EventExecutionError constructor
---
---@param eventName string #
---@param listenerId string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventExecutionError
function obe.Event.Exceptions.EventExecutionError(eventName, listenerId, info) end



---@class obe.Event.Exceptions.EventGroupAlreadyExists
obe.Event.Exceptions._EventGroupAlreadyExists = {};

--- obe.Event.Exceptions.EventGroupAlreadyExists constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventGroupAlreadyExists
function obe.Event.Exceptions.EventGroupAlreadyExists(eventNamespace, eventGroup, info) end



---@class obe.Event.Exceptions.EventGroupNotJoinable
obe.Event.Exceptions._EventGroupNotJoinable = {};

--- obe.Event.Exceptions.EventGroupNotJoinable constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventGroupNotJoinable
function obe.Event.Exceptions.EventGroupNotJoinable(eventNamespace, eventGroup, info) end



---@class obe.Event.Exceptions.EventNamespaceAlreadyExists
obe.Event.Exceptions._EventNamespaceAlreadyExists = {};

--- obe.Event.Exceptions.EventNamespaceAlreadyExists constructor
---
---@param eventNamespace string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventNamespaceAlreadyExists
function obe.Event.Exceptions.EventNamespaceAlreadyExists(eventNamespace, info) end



---@class obe.Event.Exceptions.UnknownEvent
obe.Event.Exceptions._UnknownEvent = {};

--- obe.Event.Exceptions.UnknownEvent constructor
---
---@param eventGroup string #
---@param eventName string #
---@param existingEvents table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEvent
function obe.Event.Exceptions.UnknownEvent(eventGroup, eventName, existingEvents, info) end



---@class obe.Event.Exceptions.UnknownEventGroup
obe.Event.Exceptions._UnknownEventGroup = {};

--- obe.Event.Exceptions.UnknownEventGroup constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param existingGroups table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEventGroup
function obe.Event.Exceptions.UnknownEventGroup(eventNamespace, eventGroup, existingGroups, info) end



---@class obe.Event.Exceptions.UnknownEventNamespace
obe.Event.Exceptions._UnknownEventNamespace = {};

--- obe.Event.Exceptions.UnknownEventNamespace constructor
---
---@param eventNamespace string #
---@param existingNamespaces table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEventNamespace
function obe.Event.Exceptions.UnknownEventNamespace(eventNamespace, existingNamespaces, info) end



---@class obe.Event.LuaEventListener
obe.Event._LuaEventListener = {};

--- obe.Event.LuaEventListener constructor
---
---@param callback sol.protected_function #
---@return obe.Event.LuaEventListener
function obe.Event.LuaEventListener(callback) end



---@class obe.Event.ScopeProfiler
obe.Event._ScopeProfiler = {};

--- obe.Event.ScopeProfiler constructor
---
---@param results obe.Event.CallbackProfiler #
---@return obe.Event.ScopeProfiler
function obe.Event.ScopeProfiler(results) end



---@class obe.Graphics.Canvas.Bezier
---@field points table<number, obe.Transform.UnitVector> #
---@field colors table<number, obe.Graphics.Color> #
---@field precision number #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Bezier = {};

--- obe.Graphics.Canvas.Bezier constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.Bezier
function obe.Graphics.Canvas.Bezier(parent, id) end


--- Draw the Bezier Curve.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Sprite to
function obe.Graphics.Canvas._Bezier:draw(target) end


---@class obe.Graphics.Canvas.Canvas
obe.Graphics.Canvas._Canvas = {};

--- Create a new Canvas.
---
---@param width number #Width of the Canvas (in pixels)
---@param height number #Height of the Canvas (in pixels)
---@return obe.Graphics.Canvas.Canvas
function obe.Graphics.Canvas.Canvas(width, height) end


--- Adds a new CanvasElement of type T to the Canvas.
---
---@param id string #Id of the new element to add to the canvas
---@return T
function obe.Graphics.Canvas._Canvas:add(id) end

--- Get a CanvasElement with the given id.
---
---@param id string #Id of the CanvasElement you want to retrieve
---@return obe.Graphics.Canvas.CanvasElement
function obe.Graphics.Canvas._Canvas:get(id) end

--- Render all the Canvas content to the Sprite target.
---
---@param target obe.Graphics.Sprite #
function obe.Graphics.Canvas._Canvas:render(target) end

--- Clear all CanvasElement from the Canvas.
---
function obe.Graphics.Canvas._Canvas:clear() end

--- Remove a CanvasElement from the Canvas.
---
---@param id string #Id of the CanvasElement to remove
function obe.Graphics.Canvas._Canvas:remove(id) end

--- Get the current Texture of the Canvas.
---
---@return obe.Graphics.Texture
function obe.Graphics.Canvas._Canvas:getTexture() end

--- Ask the Canvas to sort elements for the next rendering.
---
function obe.Graphics.Canvas._Canvas:requiresSort() end


---@class obe.Graphics.Canvas.CanvasElement
---@field parent obe.Graphics.Canvas.Canvas #
---@field layer number #
---@field visible boolean #
---@field type obe.Graphics.Canvas.CanvasElementType #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._CanvasElement = {};

--- Create a new CanvasElement.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new CanvasElement
---@return obe.Graphics.Canvas.CanvasElement
function obe.Graphics.Canvas.CanvasElement(parent, id) end


--- Abstract draw method.
---
---@param target obe.Graphics.RenderTarget #Target where to render the result
function obe.Graphics.Canvas._CanvasElement:draw(target) end

--- Change layer or object and will ask the Canvas to reorder elements automatically.
---
---@param layer number #
function obe.Graphics.Canvas._CanvasElement:setLayer(layer) end


---@class obe.Graphics.Canvas.CanvasPositionable
---@field position obe.Transform.UnitVector #
obe.Graphics.Canvas._CanvasPositionable = {};

--- obe.Graphics.Canvas.CanvasPositionable constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.CanvasPositionable
function obe.Graphics.Canvas.CanvasPositionable(parent, id) end



---@class obe.Graphics.Canvas.Circle
---@field shape obe.Graphics.Shapes.Circle #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Circle = {};

--- Create a new Circle.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Circle
---@return obe.Graphics.Canvas.Circle
function obe.Graphics.Canvas.Circle(parent, id) end


--- Draw the Circle.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Circle to
function obe.Graphics.Canvas._Circle:draw(target) end


---@class obe.Graphics.Canvas.Line
---@field p1 obe.Transform.UnitVector #
---@field p2 obe.Transform.UnitVector #
---@field thickness number #
---@field p1color obe.Graphics.Color #
---@field p2color obe.Graphics.Color #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Line = {};

--- Create a new Line.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Line
---@return obe.Graphics.Canvas.Line
function obe.Graphics.Canvas.Line(parent, id) end


--- Draw the Line.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Line to
function obe.Graphics.Canvas._Line:draw(target) end


---@class obe.Graphics.Canvas.Polygon
---@field shape obe.Graphics.Shapes.Polygon #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Polygon = {};

--- obe.Graphics.Canvas.Polygon constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.Polygon
function obe.Graphics.Canvas.Polygon(parent, id) end


--- Abstract draw method.
---
---@param target obe.Graphics.RenderTarget #Target where to render the result
function obe.Graphics.Canvas._Polygon:draw(target) end


---@class obe.Graphics.Canvas.Rectangle
---@field shape obe.Graphics.Shapes.Rectangle #
---@field size obe.Transform.UnitVector #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Rectangle = {};

--- Create a new Rectangle.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Rectangle
---@return obe.Graphics.Canvas.Rectangle
function obe.Graphics.Canvas.Rectangle(parent, id) end


--- Draw the Rectangle.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Rectangle to
function obe.Graphics.Canvas._Rectangle:draw(target) end


---@class obe.Graphics.Canvas.Text
---@field fontPath string #
---@field shape obe.Graphics.Shapes.Text #
---@field h_align obe.Graphics.Canvas.TextHorizontalAlign #
---@field v_align obe.Graphics.Canvas.TextVerticalAlign #
---@field texts table<number, obe.Graphics.Text> #
---@field Type obe.Graphics.Canvas.CanvasElementType #
---@field text obe.Graphics.Text #Returns the current Text part.
obe.Graphics.Canvas._Text = {};

--- Create a new Text.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Text
---@return obe.Graphics.Canvas.Text
function obe.Graphics.Canvas.Text(parent, id) end


--- Draw the Text.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Text to
function obe.Graphics.Canvas._Text:draw(target) end

function obe.Graphics.Canvas._Text:refresh() end


---@class obe.Graphics.Color
---@field r number #
---@field g number #
---@field b number #
---@field a number #
---@field AliceBlue obe.Graphics.Color #
---@field AntiqueWhite obe.Graphics.Color #
---@field Aqua obe.Graphics.Color #
---@field Aquamarine obe.Graphics.Color #
---@field Azure obe.Graphics.Color #
---@field Beige obe.Graphics.Color #
---@field Bisque obe.Graphics.Color #
---@field Black obe.Graphics.Color #
---@field BlanchedAlmond obe.Graphics.Color #
---@field Blue obe.Graphics.Color #
---@field BlueViolet obe.Graphics.Color #
---@field Brown obe.Graphics.Color #
---@field BurlyWood obe.Graphics.Color #
---@field CadetBlue obe.Graphics.Color #
---@field Chartreuse obe.Graphics.Color #
---@field Chocolate obe.Graphics.Color #
---@field Coral obe.Graphics.Color #
---@field CornflowerBlue obe.Graphics.Color #
---@field Cornsilk obe.Graphics.Color #
---@field Crimson obe.Graphics.Color #
---@field Cyan obe.Graphics.Color #
---@field DarkBlue obe.Graphics.Color #
---@field DarkCyan obe.Graphics.Color #
---@field DarkGoldenrod obe.Graphics.Color #
---@field DarkGray obe.Graphics.Color #
---@field DarkGreen obe.Graphics.Color #
---@field DarkKhaki obe.Graphics.Color #
---@field DarkMagenta obe.Graphics.Color #
---@field DarkOliveGreen obe.Graphics.Color #
---@field DarkOrange obe.Graphics.Color #
---@field DarkOrchid obe.Graphics.Color #
---@field DarkRed obe.Graphics.Color #
---@field DarkSalmon obe.Graphics.Color #
---@field DarkSeaGreen obe.Graphics.Color #
---@field DarkSlateBlue obe.Graphics.Color #
---@field DarkSlateGray obe.Graphics.Color #
---@field DarkTurquoise obe.Graphics.Color #
---@field DarkViolet obe.Graphics.Color #
---@field DeepPink obe.Graphics.Color #
---@field DeepSkyBlue obe.Graphics.Color #
---@field DimGray obe.Graphics.Color #
---@field DodgerBlue obe.Graphics.Color #
---@field FireBrick obe.Graphics.Color #
---@field FloralWhite obe.Graphics.Color #
---@field ForestGreen obe.Graphics.Color #
---@field Fuchsia obe.Graphics.Color #
---@field Gainsboro obe.Graphics.Color #
---@field GhostWhite obe.Graphics.Color #
---@field Gold obe.Graphics.Color #
---@field Goldenrod obe.Graphics.Color #
---@field Gray obe.Graphics.Color #
---@field Green obe.Graphics.Color #
---@field GreenYellow obe.Graphics.Color #
---@field HoneyDew obe.Graphics.Color #
---@field HotPink obe.Graphics.Color #
---@field IndianRed obe.Graphics.Color #
---@field Indigo obe.Graphics.Color #
---@field Ivory obe.Graphics.Color #
---@field Khaki obe.Graphics.Color #
---@field Lavender obe.Graphics.Color #
---@field LavenderBlush obe.Graphics.Color #
---@field LawnGreen obe.Graphics.Color #
---@field LemonChiffon obe.Graphics.Color #
---@field LightBlue obe.Graphics.Color #
---@field LightCoral obe.Graphics.Color #
---@field LightCyan obe.Graphics.Color #
---@field LightGoldenrodYellow obe.Graphics.Color #
---@field LightGray obe.Graphics.Color #
---@field LightGreen obe.Graphics.Color #
---@field LightPink obe.Graphics.Color #
---@field LightSalmon obe.Graphics.Color #
---@field LightSeaGreen obe.Graphics.Color #
---@field LightSkyBlue obe.Graphics.Color #
---@field LightSlateGray obe.Graphics.Color #
---@field LightSteelBlue obe.Graphics.Color #
---@field LightYellow obe.Graphics.Color #
---@field Lime obe.Graphics.Color #
---@field LimeGreen obe.Graphics.Color #
---@field Linen obe.Graphics.Color #
---@field Magenta obe.Graphics.Color #
---@field Maroon obe.Graphics.Color #
---@field MediumAquamarine obe.Graphics.Color #
---@field MediumBlue obe.Graphics.Color #
---@field MediumOrchid obe.Graphics.Color #
---@field MediumPurple obe.Graphics.Color #
---@field MediumSeaGreen obe.Graphics.Color #
---@field MediumSlateBlue obe.Graphics.Color #
---@field MediumSpringGreen obe.Graphics.Color #
---@field MediumTurquoise obe.Graphics.Color #
---@field MediumVioletRed obe.Graphics.Color #
---@field MidnightBlue obe.Graphics.Color #
---@field MintCream obe.Graphics.Color #
---@field MistyRose obe.Graphics.Color #
---@field Moccasin obe.Graphics.Color #
---@field NavajoWhite obe.Graphics.Color #
---@field Navy obe.Graphics.Color #
---@field OldLace obe.Graphics.Color #
---@field Olive obe.Graphics.Color #
---@field OliveDrab obe.Graphics.Color #
---@field Orange obe.Graphics.Color #
---@field OrangeRed obe.Graphics.Color #
---@field Orchid obe.Graphics.Color #
---@field PaleGoldenrod obe.Graphics.Color #
---@field PaleGreen obe.Graphics.Color #
---@field PaleTurquoise obe.Graphics.Color #
---@field PaleVioletRed obe.Graphics.Color #
---@field PapayaWhip obe.Graphics.Color #
---@field PeachPuff obe.Graphics.Color #
---@field Peru obe.Graphics.Color #
---@field Pink obe.Graphics.Color #
---@field Plum obe.Graphics.Color #
---@field PowderBlue obe.Graphics.Color #
---@field Purple obe.Graphics.Color #
---@field RebeccaPurple obe.Graphics.Color #
---@field Red obe.Graphics.Color #
---@field RosyBrown obe.Graphics.Color #
---@field RoyalBlue obe.Graphics.Color #
---@field SaddleBrown obe.Graphics.Color #
---@field Salmon obe.Graphics.Color #
---@field SandyBrown obe.Graphics.Color #
---@field SeaGreen obe.Graphics.Color #
---@field SeaShell obe.Graphics.Color #
---@field Sienna obe.Graphics.Color #
---@field Silver obe.Graphics.Color #
---@field SkyBlue obe.Graphics.Color #
---@field SlateBlue obe.Graphics.Color #
---@field SlateGray obe.Graphics.Color #
---@field Snow obe.Graphics.Color #
---@field SpringGreen obe.Graphics.Color #
---@field SteelBlue obe.Graphics.Color #
---@field Tan obe.Graphics.Color #
---@field Teal obe.Graphics.Color #
---@field Thistle obe.Graphics.Color #
---@field Tomato obe.Graphics.Color #
---@field Turquoise obe.Graphics.Color #
---@field Violet obe.Graphics.Color #
---@field Wheat obe.Graphics.Color #
---@field White obe.Graphics.Color #
---@field WhiteSmoke obe.Graphics.Color #
---@field Yellow obe.Graphics.Color #
---@field YellowGreen obe.Graphics.Color #
obe.Graphics._Color = {};

--- obe.Graphics.Color constructor
---
---@return obe.Graphics.Color
function obe.Graphics.Color() end

--- obe.Graphics.Color constructor
---
---@param r number #
---@param g number #
---@param b number #
---@param a? number #
---@return obe.Graphics.Color
function obe.Graphics.Color(r, g, b, a) end

--- obe.Graphics.Color constructor
---
---@param nameOrHex string #
---@return obe.Graphics.Color
function obe.Graphics.Color(nameOrHex) end

--- obe.Graphics.Color constructor
---
---@param color sf.Color #
---@return obe.Graphics.Color
function obe.Graphics.Color(color) end


---@param string string #
function obe.Graphics._Color:fromString(string) end

---@param name string #
---@param strict? boolean #
---@return boolean
function obe.Graphics._Color:fromName(name, strict) end

---@param hexCode string #
function obe.Graphics._Color:fromHex(hexCode) end

---@param r number #
---@param g number #
---@param b number #
---@param a? number #
function obe.Graphics._Color:fromRgb(r, g, b, a) end

---@param H number #
---@param S number #
---@param V number #
function obe.Graphics._Color:fromHsv(H, S, V) end

---@return number
function obe.Graphics._Color:toInteger() end

---@return string
function obe.Graphics._Color:toHex() end

---@return string
function obe.Graphics._Color:toName() end

---@param randomAlpha? boolean #
---@return obe.Graphics.Color
function obe.Graphics._Color:Random(randomAlpha) end


---@class obe.Graphics.Exceptions.CanvasElementAlreadyExists
obe.Graphics.Exceptions._CanvasElementAlreadyExists = {};

--- obe.Graphics.Exceptions.CanvasElementAlreadyExists constructor
---
---@param id string #
---@param newElementType string #
---@param existingElementType string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.CanvasElementAlreadyExists
function obe.Graphics.Exceptions.CanvasElementAlreadyExists(id, newElementType, existingElementType, info) end



---@class obe.Graphics.Exceptions.ImageFileNotFound
obe.Graphics.Exceptions._ImageFileNotFound = {};

--- obe.Graphics.Exceptions.ImageFileNotFound constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.ImageFileNotFound
function obe.Graphics.Exceptions.ImageFileNotFound(path, info) end



---@class obe.Graphics.Exceptions.InvalidColorName
obe.Graphics.Exceptions._InvalidColorName = {};

--- obe.Graphics.Exceptions.InvalidColorName constructor
---
---@param color string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidColorName
function obe.Graphics.Exceptions.InvalidColorName(color, info) end



---@class obe.Graphics.Exceptions.InvalidHexFormat
obe.Graphics.Exceptions._InvalidHexFormat = {};

--- obe.Graphics.Exceptions.InvalidHexFormat constructor
---
---@param hexCode string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidHexFormat
function obe.Graphics.Exceptions.InvalidHexFormat(hexCode, info) end



---@class obe.Graphics.Exceptions.InvalidHsvFormat
obe.Graphics.Exceptions._InvalidHsvFormat = {};

--- obe.Graphics.Exceptions.InvalidHsvFormat constructor
---
---@param H number #
---@param S number #
---@param V number #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidHsvFormat
function obe.Graphics.Exceptions.InvalidHsvFormat(H, S, V, info) end



---@class obe.Graphics.Exceptions.InvalidRgbFormat
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



---@class obe.Graphics.Exceptions.InvalidSpriteColorType
obe.Graphics.Exceptions._InvalidSpriteColorType = {};

--- obe.Graphics.Exceptions.InvalidSpriteColorType constructor
---
---@param type string #
---@param value string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.InvalidSpriteColorType
function obe.Graphics.Exceptions.InvalidSpriteColorType(type, value, info) end



---@class obe.Graphics.Exceptions.ReadOnlyTexture
obe.Graphics.Exceptions._ReadOnlyTexture = {};

--- obe.Graphics.Exceptions.ReadOnlyTexture constructor
---
---@param method string #
---@param info obe.DebugInfo #
---@return obe.Graphics.Exceptions.ReadOnlyTexture
function obe.Graphics.Exceptions.ReadOnlyTexture(method, info) end



---@class obe.Graphics.Font
obe.Graphics._Font = {};

--- obe.Graphics.Font constructor
---
---@return obe.Graphics.Font
function obe.Graphics.Font() end

--- obe.Graphics.Font constructor
---
---@param font obe.Graphics.Font #
---@return obe.Graphics.Font
function obe.Graphics.Font(font) end

--- obe.Graphics.Font constructor
---
---@param font sf.Font #
---@return obe.Graphics.Font
function obe.Graphics.Font(font) end


---@param filename string #
---@return boolean
function obe.Graphics._Font:loadFromFile(filename) end


---@class obe.Graphics.PositionTransformer
obe.Graphics._PositionTransformer = {};

--- Default PositionTransformer constructor.
---
---@return obe.Graphics.PositionTransformer
function obe.Graphics.PositionTransformer() end

--- Non-Default PositionTransformer constructor.
---
---@param xTransformer string #Name of the Transformer the x Coordinate should use
---@param yTransformer string #Name of the Transformer the y Coordinate should use
---@return obe.Graphics.PositionTransformer
function obe.Graphics.PositionTransformer(xTransformer, yTransformer) end


--- Gets the CoordinateTransformer of x Coordinate.
---
---@return obe.Graphics.CoordinateTransformer
function obe.Graphics._PositionTransformer:getXTransformer() end

--- Gets the name of the CoordinateTransformer of x Coordinate.
---
---@return string
function obe.Graphics._PositionTransformer:getXTransformerName() end

--- Gets the CoordinateTransformer of y Coordinate.
---
---@return obe.Graphics.CoordinateTransformer
function obe.Graphics._PositionTransformer:getYTransformer() end

--- Gets the name of the CoordinateTransformer of y Coordinate.
---
---@return string
function obe.Graphics._PositionTransformer:getYTransformerName() end


---@class obe.Graphics.RenderTarget
obe.Graphics._RenderTarget = {};

--- obe.Graphics.RenderTarget constructor
---
---@param target sf.RenderTarget #
---@return obe.Graphics.RenderTarget
function obe.Graphics.RenderTarget(target) end

--- obe.Graphics.RenderTarget constructor
---
---@param window sf.RenderWindow #
---@return obe.Graphics.RenderTarget
function obe.Graphics.RenderTarget(window) end



---@class obe.Graphics.Renderable
obe.Graphics._Renderable = {};

--- obe.Graphics.Renderable constructor
---
---@return obe.Graphics.Renderable
function obe.Graphics.Renderable() end


--- Get the layer of the Renderable.
---
---@return number
function obe.Graphics._Renderable:getLayer() end

--- Get the Z-depth of the Renderable.
---
---@return number
function obe.Graphics._Renderable:getZDepth() end

--- Get the visibility of the Renderable.
---
---@return boolean
function obe.Graphics._Renderable:isVisible() end

--- Set the layer of the Renderable.
---
---@param layer number #Layer where to put the Renderable (Higher layer is behind lower ones)
function obe.Graphics._Renderable:setLayer(layer) end

--- Set the Z-Depth of the Renderable (SubLayers)
---
---@param zdepth number #z-depth of the Renderable (Higher z-depth is behind lower ones)
function obe.Graphics._Renderable:setZDepth(zdepth) end

--- Set the visibility of the Renderable.
---
---@param visible boolean #If visible is equal to true, the Renderable will be visible, if visible is equal to false, it won't be visible
function obe.Graphics._Renderable:setVisible(visible) end

function obe.Graphics._Renderable:show() end

function obe.Graphics._Renderable:hide() end

---@param surface obe.Graphics.RenderTarget #
---@param camera obe.Scene.Camera #
function obe.Graphics._Renderable:draw(surface, camera) end


---@class obe.Graphics.RichText
obe.Graphics._RichText = {};

--- obe.Graphics.RichText constructor
---
---@return obe.Graphics.RichText
function obe.Graphics.RichText() end

--- obe.Graphics.RichText constructor
---
---@param font obe.Graphics.Font #
---@return obe.Graphics.RichText
function obe.Graphics.RichText(font) end


function obe.Graphics._RichText:clear() end

---@param text obe.Graphics.Text #
---@return obe.Graphics.RichText
function obe.Graphics._RichText:append(text) end

---@return obe.Graphics.Font
function obe.Graphics._RichText:getFont() end

---@param font obe.Graphics.Font #
function obe.Graphics._RichText:setFont(font) end

---@return table<number, Line>
function obe.Graphics._RichText:getLines() end

---@return number
function obe.Graphics._RichText:getCharacterSize() end

---@param size number #
function obe.Graphics._RichText:setCharacterSize(size) end

---@return sf.FloatRect
function obe.Graphics._RichText:getLocalBounds() end

---@return sf.FloatRect
function obe.Graphics._RichText:getGlobalBounds() end


---@class obe.Graphics.Shader
obe.Graphics._Shader = {};

--- obe.Graphics.Shader constructor
---
---@return obe.Graphics.Shader
function obe.Graphics.Shader() end

--- obe.Graphics.Shader constructor
---
---@param path string #
---@return obe.Graphics.Shader
function obe.Graphics.Shader(path) end


--- Dumps the content of the Shader to a Vili Node.
---
---@return vili.node
function obe.Graphics._Shader:dump() end

--- Loads the Shader from a Vili Node.
---
---@param data vili.node #Vili Node containing the data of the Shader
function obe.Graphics._Shader:load(data) end

---@param path string #
function obe.Graphics._Shader:loadShader(path) end


---@class obe.Graphics.Shapes.Circle
---@field shape sf.CircleShape #
obe.Graphics.Shapes._Circle = {};

--- obe.Graphics.Shapes.Circle constructor
---
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle() end

--- obe.Graphics.Shapes.Circle constructor
---
---@param shape sf.CircleShape #
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle(shape) end

--- obe.Graphics.Shapes.Circle constructor
---
---@param circle obe.Graphics.Shapes.Circle #
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle(circle) end


---@param radius number #
function obe.Graphics.Shapes._Circle:setRadius(radius) end

---@return number
function obe.Graphics.Shapes._Circle:getRadius() end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Circle:draw(target, states) end


---@class obe.Graphics.Shapes.Polygon
---@field shape sf.ConvexShape #
obe.Graphics.Shapes._Polygon = {};

--- obe.Graphics.Shapes.Polygon constructor
---
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon() end

--- obe.Graphics.Shapes.Polygon constructor
---
---@param shape sf.ConvexShape #
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon(shape) end

--- obe.Graphics.Shapes.Polygon constructor
---
---@param polygon obe.Graphics.Shapes.Polygon #
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon(polygon) end


---@param index number #
---@param position obe.Transform.UnitVector #
function obe.Graphics.Shapes._Polygon:setPointPosition(index, position) end

---@param index number #
---@return obe.Transform.UnitVector
function obe.Graphics.Shapes._Polygon:getPointPosition(index) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Polygon:draw(target, states) end


---@class obe.Graphics.Shapes.Rectangle
---@field shape sf.RectangleShape #
obe.Graphics.Shapes._Rectangle = {};

--- obe.Graphics.Shapes.Rectangle constructor
---
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle() end

--- obe.Graphics.Shapes.Rectangle constructor
---
---@param shape sf.RectangleShape #
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle(shape) end

--- obe.Graphics.Shapes.Rectangle constructor
---
---@param rectangle obe.Graphics.Shapes.Rectangle #
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle(rectangle) end


---@return obe.Transform.UnitVector
function obe.Graphics.Shapes._Rectangle:getSize() end

---@param size obe.Transform.UnitVector #
function obe.Graphics.Shapes._Rectangle:setSize(size) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Rectangle:draw(target, states) end


---@class obe.Graphics.Shapes.Text
---@field shape obe.Graphics.RichText #
obe.Graphics.Shapes._Text = {};

--- obe.Graphics.Shapes.Text constructor
---
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text() end

--- obe.Graphics.Shapes.Text constructor
---
---@param shape obe.Graphics.RichText #
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text(shape) end

--- obe.Graphics.Shapes.Text constructor
---
---@param text obe.Graphics.Shapes.Text #
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text(text) end


function obe.Graphics.Shapes._Text:clear() end

---@param text obe.Graphics.Text #
function obe.Graphics.Shapes._Text:append(text) end

---@return obe.Graphics.Font
function obe.Graphics.Shapes._Text:getFont() end

---@param font obe.Graphics.Font #
function obe.Graphics.Shapes._Text:setFont(font) end

---@return number
function obe.Graphics.Shapes._Text:getCharacterSize() end

---@param size number #
function obe.Graphics.Shapes._Text:setCharacterSize(size) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Text:draw(target, states) end


---@class obe.Graphics.Sprite
---@field ComponentType string #
obe.Graphics._Sprite = {};

--- Creates a new Sprite with the given Id.
---
---@param id string #A std::string containing the Id of the Sprite
---@return obe.Graphics.Sprite
function obe.Graphics.Sprite(id) end


--- Draws the handle used to scale the Sprite.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the handle
---@param camera obe.Scene.Camera #contains the offset for drawing the handle
function obe.Graphics._Sprite:drawHandle(surface, camera) end

--- Dumps the content of the Sprite to a ComplexNode.
---
---@return vili.node
function obe.Graphics._Sprite:dump() end

--- Get the blend color of the Sprite.
---
---@return obe.Graphics.Color
function obe.Graphics._Sprite:getColor() end

--- Get the HandlePoint of the Sprite at the given Position(x, y)
---
---@param cameraPosition obe.Transform.UnitVector #Position of the Scene Camera
---@param posX number #x Coordinate of the Position you try to pick the HandlePoint
---@param posY number #y Coordinate of the Position you try to pick the HandlePoint
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics._Sprite:getHandlePoint(cameraPosition, posX, posY) end

--- Get the Id of the parent.
---
---@return string
function obe.Graphics._Sprite:getParentId() end

--- Get the path of the Texture loaded by the Sprite.
---
---@return string
function obe.Graphics._Sprite:getPath() end

--- Gets the PositionTransformer used by the Sprite.
---
---@return obe.Graphics.PositionTransformer
function obe.Graphics._Sprite:getPositionTransformer() end

--- Get the Bounding Rect of the internal Sprite.
---
---@return obe.Transform.Rect
function obe.Graphics._Sprite:getRect() end

---@return obe.Graphics.Shader
function obe.Graphics._Sprite:getShader() end

--- Get the internal Sprite of the Sprite.
---
---@return sfe.ComplexSprite
function obe.Graphics._Sprite:getSprite() end

--- Get the height of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getSpriteHeight() end

--- Get the width of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getSpriteWidth() end

--- Gets a reference to the texture of the Sprite.
---
---@return obe.Graphics.Texture
function obe.Graphics._Sprite:getTexture() end

--- Get the x Coordinate of the scale factor of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getXScaleFactor() end

--- Get the y Coordinate of the scale factor of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getYScaleFactor() end

---@return boolean
function obe.Graphics._Sprite:getAntiAliasing() end

---@return boolean
function obe.Graphics._Sprite:hasShader() end

--- Loads the Sprite from a ComplexNode.
---
---@param data vili.node #ComplexNode containing the data of the Sprite
function obe.Graphics._Sprite:load(data) end

--- The Sprite will load the Texture at the given path.
---
---@param path string #A std::string containing the path of the texture to load
function obe.Graphics._Sprite:loadTexture(path) end

--- Rotate the sprite.
---
---@param addRotate number #The angle to add to the Sprite (0 -> 360 where 0 / 360 is the top)
function obe.Graphics._Sprite:rotate(addRotate) end

--- Apply a blend color to the Sprite.
---
---@param color obe.Graphics.Color #A Color containing the color to blend (Color::White is default normal color)
function obe.Graphics._Sprite:setColor(color) end

--- Set a new parent id.
---
---@param parent string #The id of the parent to apply to the Sprite
function obe.Graphics._Sprite:setParentId(parent) end

--- Sets the new Position Transform of the Sprite.
---
---@param transformer obe.Graphics.PositionTransformer #New PositionTransformer of the Sprite
function obe.Graphics._Sprite:setPositionTransformer(transformer) end

--- Set the rotation of the sprite.
---
---@param rotate number #The new angle of the Sprite (0 -> 360 where 0 / 360 is the top)
function obe.Graphics._Sprite:setRotation(rotate) end

--- Set the rotation origin of the Sprite.
---
---@param x number #x Coordinate of the new rotation origin of the Sprite
---@param y number #y Coordinate of the new rotation origin of the Sprite
function obe.Graphics._Sprite:setRotationOrigin(x, y) end

--- Set the scaling origin of the Sprite.
---
---@param x number #x Coordinate of the new scaling origin of the Sprite
---@param y number #y Coordinate of the new scaling origin of the Sprite
function obe.Graphics._Sprite:setScalingOrigin(x, y) end

---@param shader obe.Graphics.Shader #
function obe.Graphics._Sprite:setShader(shader) end

--- Sets the Texture of the Sprite.
---
---@param texture obe.Graphics.Texture #Texture to set
function obe.Graphics._Sprite:setTexture(texture) end

---@param x number #
---@param y number #
---@param width number #
---@param height number #
function obe.Graphics._Sprite:setTextureRect(x, y, width, height) end

--- Set the translation origin of the Sprite.
---
---@param x number #x Coordinate of the new translation origin of the Sprite
---@param y number #y Coordinate of the new translation origin of the Sprite
function obe.Graphics._Sprite:setTranslationOrigin(x, y) end

---@param antiAliasing boolean #
function obe.Graphics._Sprite:setAntiAliasing(antiAliasing) end

--- Reset internal Sprite Rect using texture size.
---
function obe.Graphics._Sprite:useTextureSize() end

---@param surface obe.Graphics.RenderTarget #
---@param camera obe.Scene.Camera #
function obe.Graphics._Sprite:draw(surface, camera) end

---@param resources obe.Engine.ResourceManager #
function obe.Graphics._Sprite:attachResourceManager(resources) end

---@return string
function obe.Graphics._Sprite:type() end


---@class obe.Graphics.SpriteHandlePoint
---@field m_dp obe.Transform.UnitVector #
---@field radius number #The radius of a HandlePoint.
obe.Graphics._SpriteHandlePoint = {};

--- Creates a Scale HandlePoint.
---
---@param parent obe.Graphics.Sprite #Rect of the parent Sprite
---@param ref obe.Transform.Referential #Referential of the HandlePoint
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics.SpriteHandlePoint(parent, ref) end

--- Creates a Rotate HandlePoint.
---
---@param parent obe.Graphics.Sprite #Rect of the parent Sprite
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics.SpriteHandlePoint(parent) end


--- Get the rect of the parent Sprite.
---
---@return obe.Transform.Rect
function obe.Graphics._SpriteHandlePoint:getRect() end

--- Get the Referential of the HandlePoint.
---
---@return obe.Transform.Referential
function obe.Graphics._SpriteHandlePoint:getReferential() end

--- Gets the type of the SpriteHandlePoint (either Rotate or Scale)
---
---@return obe.Graphics.SpriteHandlePointType
function obe.Graphics._SpriteHandlePoint:getType() end

--- Move the HandlePoint to the given Position.
---
---@param position obe.Transform.UnitVector #Position where the HandlePoint should move to
---@param camera obe.Transform.UnitVector #Camera used to manipulate PositionTransformers
function obe.Graphics._SpriteHandlePoint:moveTo(position, camera) end


---@class obe.Graphics.Text
---@field color obe.Graphics.Color #
---@field outline obe.Graphics.Color #
---@field thickness number #
---@field style sf.Text.Style #
---@field string std.wstring #
obe.Graphics._Text = {};

--- obe.Graphics.Text constructor
---
---@return obe.Graphics.Text
function obe.Graphics.Text() end

--- obe.Graphics.Text constructor
---
---@param string string #
---@return obe.Graphics.Text
function obe.Graphics.Text(string) end



---@class obe.Graphics.Texture
obe.Graphics._Texture = {};

--- obe.Graphics.Texture constructor
---
---@return obe.Graphics.Texture
function obe.Graphics.Texture() end

--- obe.Graphics.Texture constructor
---
---@param texture sf.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(texture) end

--- obe.Graphics.Texture constructor
---
---@param texture sf.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(texture) end

--- obe.Graphics.Texture constructor
---
---@param copy obe.Graphics.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(copy) end


---@param width number #
---@param height number #
---@return boolean
function obe.Graphics._Texture:create(width, height) end

---@param image sf.Image #
---@return boolean
function obe.Graphics._Texture:loadFromImage(image) end

---@return obe.Transform.UnitVector
function obe.Graphics._Texture:getSize() end

---@param antiAliasing boolean #
function obe.Graphics._Texture:setAntiAliasing(antiAliasing) end

---@return boolean
function obe.Graphics._Texture:isAntiAliased() end

---@param repeated boolean #
function obe.Graphics._Texture:setRepeated(repeated) end

---@return boolean
function obe.Graphics._Texture:isRepeated() end

function obe.Graphics._Texture:reset() end

---@return number
function obe.Graphics._Texture:useCount() end


---@class obe.Input.Exceptions.InputButtonAlreadyInCombination
obe.Input.Exceptions._InputButtonAlreadyInCombination = {};

--- obe.Input.Exceptions.InputButtonAlreadyInCombination constructor
---
---@param button string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InputButtonAlreadyInCombination
function obe.Input.Exceptions.InputButtonAlreadyInCombination(button, info) end



---@class obe.Input.Exceptions.InputButtonInvalidOperation
obe.Input.Exceptions._InputButtonInvalidOperation = {};

--- obe.Input.Exceptions.InputButtonInvalidOperation constructor
---
---@param inputButtonType string #
---@param operationType string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InputButtonInvalidOperation
function obe.Input.Exceptions.InputButtonInvalidOperation(inputButtonType, operationType, info) end



---@class obe.Input.Exceptions.InvalidGamepadButton
obe.Input.Exceptions._InvalidGamepadButton = {};

--- obe.Input.Exceptions.InvalidGamepadButton constructor
---
---@param gamepadButtonId string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidGamepadButton
function obe.Input.Exceptions.InvalidGamepadButton(gamepadButtonId, info) end



---@class obe.Input.Exceptions.InvalidInputButtonState
obe.Input.Exceptions._InvalidInputButtonState = {};

--- obe.Input.Exceptions.InvalidInputButtonState constructor
---
---@param state string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputButtonState
function obe.Input.Exceptions.InvalidInputButtonState(state, info) end



---@class obe.Input.Exceptions.InvalidInputCombinationCode
obe.Input.Exceptions._InvalidInputCombinationCode = {};

--- obe.Input.Exceptions.InvalidInputCombinationCode constructor
---
---@param action string #
---@param combinationCode string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputCombinationCode
function obe.Input.Exceptions.InvalidInputCombinationCode(action, combinationCode, info) end



---@class obe.Input.Exceptions.InvalidInputTypeEnumValue
obe.Input.Exceptions._InvalidInputTypeEnumValue = {};

--- obe.Input.Exceptions.InvalidInputTypeEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputTypeEnumValue
function obe.Input.Exceptions.InvalidInputTypeEnumValue(enumValue, info) end



---@class obe.Input.Exceptions.UnknownInputAction
obe.Input.Exceptions._UnknownInputAction = {};

--- obe.Input.Exceptions.UnknownInputAction constructor
---
---@param actionName string #
---@param existingActions table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.UnknownInputAction
function obe.Input.Exceptions.UnknownInputAction(actionName, existingActions, info) end



---@class obe.Input.Exceptions.UnknownInputButton
obe.Input.Exceptions._UnknownInputButton = {};

--- obe.Input.Exceptions.UnknownInputButton constructor
---
---@param buttonName string #
---@param existingButtons table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.UnknownInputButton
function obe.Input.Exceptions.UnknownInputButton(buttonName, existingButtons, info) end



---@class obe.Input.InputAction
obe.Input._InputAction = {};

--- Creates a new InputAction.
---
---@param actionsEvents obe.Event.EventGroup #Pointer to the Actions EventGroup
---@param id string #Id of the InputAction
---@return obe.Input.InputAction
function obe.Input.InputAction(actionsEvents, id) end


--- Adds an InputCondition to the InputAction.
---
---@param condition obe.Input.InputCondition #An InputCondition to add to the InputAction
function obe.Input._InputAction:addCondition(condition) end

--- Adds a context to the InputAction.
---
---@param context string #New context for the InputAction
function obe.Input._InputAction:addContext(context) end

--- Check if the InputAction is enabled.
---
---@return boolean
function obe.Input._InputAction:check() end

--- Clears all the InputCondition of the InputAction.
---
function obe.Input._InputAction:clearConditions() end

--- Get all the contexts the InputAction is in.
---
---@return table<number, string>
function obe.Input._InputAction:getContexts() end

--- Gets the delay required between two InputAction triggerings.
---
---@return obe.Time.TimeUnit
function obe.Input._InputAction:getInterval() end

--- Gets the delay between two 'Hold' callbacks activations.
---
---@return obe.Time.TimeUnit
function obe.Input._InputAction:getRepeat() end

--- Sets the delay required between two InputAction triggerings.
---
---@param delay obe.Time.TimeUnit #Delay required between two InputAction triggerings (in ms)
function obe.Input._InputAction:setInterval(delay) end

--- Sets the delay between two 'Hold' callbacks activations.
---
---@param delay obe.Time.TimeUnit #Delay required between two 'Hold' callbacks activations
function obe.Input._InputAction:setRepeat(delay) end

--- Updates the InputAction.
---
function obe.Input._InputAction:update() end

---@return table<number, obe.Input.InputButton>
function obe.Input._InputAction:getInvolvedButtons() end

---@param monitors table<number, obe.Input.InputButtonMonitorPtr> #
function obe.Input._InputAction:enable(monitors) end

function obe.Input._InputAction:disable() end

---@return boolean
function obe.Input._InputAction:isEnabled() end


---@class obe.Input.InputButton
obe.Input._InputButton = {};

--- Creates a new InputButton representing a Keyboard key.
---
---@param key sf.Keyboard.Key #SFML Keyboard Key
---@param name string #Name of the Key
---@param returnChar string #The character printed when the key is pressed
---@param type obe.Input.InputType #Type of the Key (Arrows, Alpha, Numeric, NumericNP, Functions, Others)
---@return obe.Input.InputButton
function obe.Input.InputButton(key, name, returnChar, type) end

--- Creates a new InputButton representing a Mouse Button.
---
---@param key sf.Mouse.Button #SFML Mouse Button
---@param name string #Name of the Mouse Button
---@return obe.Input.InputButton
function obe.Input.InputButton(key, name) end

--- Creates a new InputButton representing a Gamepad Button.
---
---@param gamepadIndex number #Index of the gamepad
---@param buttonIndex number #Index of the button of the gamepad
---@param name string #Name of the gamepad Button
---@return obe.Input.InputButton
function obe.Input.InputButton(gamepadIndex, buttonIndex, name) end

--- Creates a new InputButton representing a gamepad Axis.
---
---@param gamepadIndex number #Index of the gamepad
---@param gamepadAxis sf.Joystick.Axis #Enum value of the Gamepad Axis
---@param detect table<number, any> #Pair containing the check type (More / Less) and the threshold before axis activation detection
---@param name string #Name of the gamepad Axis
---@return obe.Input.InputButton
function obe.Input.InputButton(gamepadIndex, gamepadAxis, detect, name) end

--- obe.Input.InputButton constructor
---
---@param direction obe.Input.MouseWheelScrollDirection #
---@param name string #
---@return obe.Input.InputButton
function obe.Input.InputButton(direction, name) end

--- obe.Input.InputButton constructor
---
---@param other obe.Input.InputButton #
---@return obe.Input.InputButton
function obe.Input.InputButton(other) end


---@param other obe.Input.InputButton #
function obe.Input._InputButton:reload(other) end

--- Get Axis Position value if InputButton is an axis (throws error otherwise)
---
---@return number
function obe.Input._InputButton:getAxisPosition() end

---@return number
function obe.Input._InputButton:getWheelDelta() end

--- Get the SFML Keyboard Key.
---
---@return sf.Keyboard.Key
function obe.Input._InputButton:getKey() end

--- Get the name of the Key.
---
---@return string
function obe.Input._InputButton:getName() end

--- Get the type of the Key (Arrows, Alpha, Numeric, NumericNP, Functions, Others)
---
---@return obe.Input.InputType
function obe.Input._InputButton:getType() end

--- Equivalent to InputButton::getType() == inputType.
---
---@param inputType obe.Input.InputType #Type to test the equivalence
---@return boolean
function obe.Input._InputButton:is(inputType) end

--- Get if the key is pressed.
---
---@return boolean
function obe.Input._InputButton:isPressed() end

--- Get if the key prints a writable character.
---
---@return boolean
function obe.Input._InputButton:isWritable() end


---@class obe.Input.InputButtonMonitor
obe.Input._InputButtonMonitor = {};

--- Constructor of InputButtonMonition.
---
---@param button obe.Input.InputButton #Pointer to the InputButton to monitor
---@return obe.Input.InputButtonMonitor
function obe.Input.InputButtonMonitor(button) end


--- Gets a pointer to the monitored InputButton.
---
---@return obe.Input.InputButton
function obe.Input._InputButtonMonitor:getButton() end

--- Gets the state of the InputButton (InputButtonState)
---
---@return obe.Input.InputButtonState
function obe.Input._InputButtonMonitor:getState() end

--- Updates the InputButtonMonitor (needed to modify the linked InputButtonState)
---
---@param events obe.Event.EventGroupPtr #
function obe.Input._InputButtonMonitor:update(events) end

---@return boolean
function obe.Input._InputButtonMonitor:checkForRefresh() end


---@class obe.Input.InputCondition
obe.Input._InputCondition = {};

--- obe.Input.InputCondition constructor
---
---@return obe.Input.InputCondition
function obe.Input.InputCondition() end


--- Adds a new InputCombinationElement to the InputCondition.
---
---@param combinationElement obe.Input.InputCombinationElement #The InputCombinationElement to add to the InputCondition
function obe.Input._InputCondition:addCombinationElement(combinationElement) end

--- Checks if the condition is fulfilled.
---
---@return boolean
function obe.Input._InputCondition:check() end

--- Clears the InputCondition.
---
function obe.Input._InputCondition:clear() end

---@param monitors table<number, obe.Input.InputButtonMonitorPtr> #
function obe.Input._InputCondition:enable(monitors) end

function obe.Input._InputCondition:disable() end

---@return boolean
function obe.Input._InputCondition:isEnabled() end


---@class obe.Input.InputManager
obe.Input._InputManager = {};

--- Creates a new KeyboardManager.
---
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.Input.InputManager
function obe.Input.InputManager(eventNamespace) end


--- Get if a KeyboardAction exists.
---
---@param actionId string #Id of the KeyboardAction to check the existence
---@return boolean
function obe.Input._InputManager:actionExists(actionId) end

--- Adds a new context the KeyboardManager will use.
---
---@param context string #Name of the context to add
---@return obe.Input.InputManager
function obe.Input._InputManager:addContext(context) end

--- Get the KeyboardAction identified by actionId if it exists.
---
---@param actionId string #Id of the KeyboardAction to retrieve
---@return obe.Input.InputAction
function obe.Input._InputManager:getAction(actionId) end

--- Gets all the contexts currently used by the InputManager.
---
---@return table<number, string>
function obe.Input._InputManager:getContexts() end

--- Clears all Actions.
---
function obe.Input._InputManager:clear() end

--- Clear all contexts the KeyboardManager is using.
---
function obe.Input._InputManager:clearContexts() end

--- Configure KeyboardAction from a vili configuration file.
---
---@param config vili.node #Reference to the vili ComplexAttribute used to configure the KeyboardManager
function obe.Input._InputManager:configure(config) end

--- Removes a context in use.
---
---@param context string #Name of the context to remove
---@return obe.Input.InputManager
function obe.Input._InputManager:removeContext(context) end

--- Cleans all the contexts and adds a new one.
---
---@param context string #Name of the only context to use
function obe.Input._InputManager:setContext(context) end

--- Updates the KeyboardManager.
---
function obe.Input._InputManager:update() end

--- Get an InputButton from the given key.
---
---@param key string #Name of the InputButton you want to get
---@return obe.Input.InputButton
function obe.Input._InputManager:getInput(key) end

--- Get a list of all InputButtons which are pressed.
---
---@return table<number, obe.Input.InputButton>
function obe.Input._InputManager:getPressedInputs() end

function obe.Input._InputManager:requireRefresh() end

function obe.Input._InputManager:initializeGamepads() end

---@param gamepadIndex number #
function obe.Input._InputManager:initializeGamepad(gamepadIndex) end


---@class obe.Network.LuaPacket
obe.Network._LuaPacket = {};



---@class obe.Network.NetworkHandler
obe.Network._NetworkHandler = {};

--- obe.Network.NetworkHandler constructor
---
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.Network.NetworkHandler
function obe.Network.NetworkHandler(eventNamespace) end


function obe.Network._NetworkHandler:handleTriggers() end


---@class obe.Network.TcpServer
obe.Network._TcpServer = {};

--- obe.Network.TcpServer constructor
---
---@param eventNamespace obe.Event.EventNamespace #
---@param port number #
---@param triggerNamespace? string #
---@param triggerGroup? string #
---@return obe.Network.TcpServer
function obe.Network.TcpServer(eventNamespace, port, triggerNamespace, triggerGroup) end


function obe.Network._TcpServer:update() end

---@param maxBufferSize number #
function obe.Network._TcpServer:setBufferSize(maxBufferSize) end


---@class obe.Network.TcpSocket
obe.Network._TcpSocket = {};



---@class obe.Scene.Camera
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


---@class obe.Scene.Exceptions.ChildNotInSceneNode
obe.Scene.Exceptions._ChildNotInSceneNode = {};

--- obe.Scene.Exceptions.ChildNotInSceneNode constructor
---
---@param sceneNode nil #
---@param child nil #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.ChildNotInSceneNode
function obe.Scene.Exceptions.ChildNotInSceneNode(sceneNode, child, info) end



---@class obe.Scene.Exceptions.GameObjectAlreadyExists
obe.Scene.Exceptions._GameObjectAlreadyExists = {};

--- obe.Scene.Exceptions.GameObjectAlreadyExists constructor
---
---@param sceneFile string #
---@param objectType string #
---@param objectId string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.GameObjectAlreadyExists
function obe.Scene.Exceptions.GameObjectAlreadyExists(sceneFile, objectType, objectId, info) end



---@class obe.Scene.Exceptions.MissingSceneFileBlock
obe.Scene.Exceptions._MissingSceneFileBlock = {};

--- obe.Scene.Exceptions.MissingSceneFileBlock constructor
---
---@param sceneFile string #
---@param blockName string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.MissingSceneFileBlock
function obe.Scene.Exceptions.MissingSceneFileBlock(sceneFile, blockName, info) end



---@class obe.Scene.Exceptions.SceneOnLoadCallbackError
obe.Scene.Exceptions._SceneOnLoadCallbackError = {};

--- obe.Scene.Exceptions.SceneOnLoadCallbackError constructor
---
---@param sceneFile string #
---@param nextSceneFile string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.SceneOnLoadCallbackError
function obe.Scene.Exceptions.SceneOnLoadCallbackError(sceneFile, nextSceneFile, errorMessage, info) end



---@class obe.Scene.Exceptions.SceneScriptLoadingError
obe.Scene.Exceptions._SceneScriptLoadingError = {};

--- obe.Scene.Exceptions.SceneScriptLoadingError constructor
---
---@param sceneFile string #
---@param scriptPath string #
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.SceneScriptLoadingError
function obe.Scene.Exceptions.SceneScriptLoadingError(sceneFile, scriptPath, errorMessage, info) end



---@class obe.Scene.Exceptions.UnknownCollider
obe.Scene.Exceptions._UnknownCollider = {};

--- obe.Scene.Exceptions.UnknownCollider constructor
---
---@param sceneFile string #
---@param colliderId string #
---@param allCollidersIds table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownCollider
function obe.Scene.Exceptions.UnknownCollider(sceneFile, colliderId, allCollidersIds, info) end



---@class obe.Scene.Exceptions.UnknownGameObject
obe.Scene.Exceptions._UnknownGameObject = {};

--- obe.Scene.Exceptions.UnknownGameObject constructor
---
---@param sceneFile string #
---@param objectId string #
---@param allObjectIds table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownGameObject
function obe.Scene.Exceptions.UnknownGameObject(sceneFile, objectId, allObjectIds, info) end



---@class obe.Scene.Exceptions.UnknownSprite
obe.Scene.Exceptions._UnknownSprite = {};

--- obe.Scene.Exceptions.UnknownSprite constructor
---
---@param sceneFile string #
---@param spriteId string #
---@param allSpritesIds table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Scene.Exceptions.UnknownSprite
function obe.Scene.Exceptions.UnknownSprite(sceneFile, spriteId, allSpritesIds, info) end



---@class obe.Scene.Scene
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
---@return table<number, obe.Script.GameObject>
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
---@return table<number, obe.Graphics.Sprite>
function obe.Scene._Scene:getAllSprites() end

--- Get all the Sprites present in the Scene in the given layer.
---
---@param layer number #Layer to get all the Sprites from
---@return table<number, obe.Graphics.Sprite>
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
---@return table<number, obe.Collision.PolygonalCollider>
function obe.Scene._Scene:getAllColliders() end

--- Get the first Collider found with a point on the given position.
---
---@param position obe.Transform.UnitVector #Position to get the Point of a Collider
---@return table<number, any>
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


---@class obe.Scene.SceneNode
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


---@class obe.Script.Exceptions.GameObjectScriptError
obe.Script.Exceptions._GameObjectScriptError = {};

--- obe.Script.Exceptions.GameObjectScriptError constructor
---
---@param objectType string #
---@param objectId string #
---@param callback string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.GameObjectScriptError
function obe.Script.Exceptions.GameObjectScriptError(objectType, objectId, callback, info) end



---@class obe.Script.Exceptions.InvalidScript
obe.Script.Exceptions._InvalidScript = {};

--- obe.Script.Exceptions.InvalidScript constructor
---
---@param path string #
---@param error string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.InvalidScript
function obe.Script.Exceptions.InvalidScript(path, error, info) end



---@class obe.Script.Exceptions.LuaExecutionError
obe.Script.Exceptions._LuaExecutionError = {};

--- obe.Script.Exceptions.LuaExecutionError constructor
---
---@param errorMessage string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.LuaExecutionError
function obe.Script.Exceptions.LuaExecutionError(errorMessage, info) end



---@class obe.Script.Exceptions.NoSuchComponent
obe.Script.Exceptions._NoSuchComponent = {};

--- obe.Script.Exceptions.NoSuchComponent constructor
---
---@param componentType string #
---@param objectType string #
---@param objectId string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.NoSuchComponent
function obe.Script.Exceptions.NoSuchComponent(componentType, objectType, objectId, info) end



---@class obe.Script.Exceptions.ObjectDefinitionNotFound
obe.Script.Exceptions._ObjectDefinitionNotFound = {};

--- obe.Script.Exceptions.ObjectDefinitionNotFound constructor
---
---@param objectType string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.ObjectDefinitionNotFound
function obe.Script.Exceptions.ObjectDefinitionNotFound(objectType, info) end



---@class obe.Script.Exceptions.ScriptFileNotFound
obe.Script.Exceptions._ScriptFileNotFound = {};

--- obe.Script.Exceptions.ScriptFileNotFound constructor
---
---@param objectType string #
---@param objectId string #
---@param scriptPath string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.ScriptFileNotFound
function obe.Script.Exceptions.ScriptFileNotFound(objectType, objectId, scriptPath, info) end



---@class obe.Script.Exceptions.WrongSourceAttributeType
obe.Script.Exceptions._WrongSourceAttributeType = {};

--- obe.Script.Exceptions.WrongSourceAttributeType constructor
---
---@param objectType string #
---@param attributeName string #
---@param expectedType string #
---@param realType string #
---@param info obe.DebugInfo #
---@return obe.Script.Exceptions.WrongSourceAttributeType
function obe.Script.Exceptions.WrongSourceAttributeType(objectType, attributeName, expectedType, realType, info) end



---@class obe.Script.GameObject
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


---@class obe.Script.LuaState
obe.Script._LuaState = {};


---@param config vili.node #
function obe.Script._LuaState:loadConfig(config) end


---@class obe.System.ContextualPathFactory
obe.System._ContextualPathFactory = {};

--- obe.System.ContextualPathFactory constructor
---
---@param base string #
---@return obe.System.ContextualPathFactory
function obe.System.ContextualPathFactory(base) end

--- obe.System.ContextualPathFactory constructor
---
---@param base string #
---@param customMounts obe.System.MountList #
---@return obe.System.ContextualPathFactory
function obe.System.ContextualPathFactory(base, customMounts) end



---@class obe.System.Cursor
obe.System._Cursor = {};

--- Creates a Cursor.
---
---@param window obe.System.Window #
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.System.Cursor
function obe.System.Cursor(window, eventNamespace) end


--- Gets the x Coordinate of the Cursor Position (Constrained)
---
---@return number
function obe.System._Cursor:getConstrainedX() end

--- Gets the y Coordinate of the Cursor Position (Constrained)
---
---@return number
function obe.System._Cursor:getConstrainedY() end

--- Gets the x Coordinate of the raw (System) position of the Cursor (Unconstrained)
---
---@return number
function obe.System._Cursor:getX() end

--- Gets the y Coordinate of the raw (System) position of the Cursor (Unconstrained)
---
---@return number
function obe.System._Cursor:getY() end

--- Sets the x Coordinate of the Cursor Position.
---
---@param x number #An int containing the x Coordinate of the new Cursor Position
function obe.System._Cursor:setX(x) end

--- Sets the y Coordinate of the Cursor Position.
---
---@param y number #An int containing the y Coordinate of the new Cursor Position
function obe.System._Cursor:setY(y) end

--- Sets the Position of the Cursor.
---
---@param x number #An int containing the x Coordinate of the new Cursor Position
---@param y number #An int containing the y Coordinate of the new Cursor Position
function obe.System._Cursor:setPosition(x, y) end

function obe.System._Cursor:show() end

function obe.System._Cursor:hide() end

---@param visible boolean #
function obe.System._Cursor:setVisible(visible) end

---@return boolean
function obe.System._Cursor:isVisible() end

---@return obe.Transform.UnitVector
function obe.System._Cursor:getPosition() end

---@return obe.Transform.UnitVector
function obe.System._Cursor:getScenePosition() end

--- Updates the Cursor.
---
function obe.System._Cursor:update() end

--- Sets the Cursor's constraint.
---
---@param constraint fun(p0:obe.System.Cursor):table<number, number> #A function returning the constrained Position of the Cursor (a std::pair<int, int>) and taking the Cursor pointer in parameter
---@param condition? fun():boolean #condition for the constraint to apply
function obe.System._Cursor:setConstraint(constraint, condition) end

---@param button sf.Mouse.Button #
---@return boolean
function obe.System._Cursor:isPressed(button) end


---@class obe.System.Exceptions.InvalidMountFile
obe.System.Exceptions._InvalidMountFile = {};

--- obe.System.Exceptions.InvalidMountFile constructor
---
---@param mountFilePath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidMountFile
function obe.System.Exceptions.InvalidMountFile(mountFilePath, info) end



---@class obe.System.Exceptions.InvalidMouseButtonEnumValue
obe.System.Exceptions._InvalidMouseButtonEnumValue = {};

--- obe.System.Exceptions.InvalidMouseButtonEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidMouseButtonEnumValue
function obe.System.Exceptions.InvalidMouseButtonEnumValue(enumValue, info) end



---@class obe.System.Exceptions.InvalidProjectFile
obe.System.Exceptions._InvalidProjectFile = {};

--- obe.System.Exceptions.InvalidProjectFile constructor
---
---@param projectFilePath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidProjectFile
function obe.System.Exceptions.InvalidProjectFile(projectFilePath, info) end



---@class obe.System.Exceptions.MissingDefaultMountPoint
obe.System.Exceptions._MissingDefaultMountPoint = {};

--- obe.System.Exceptions.MissingDefaultMountPoint constructor
---
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MissingDefaultMountPoint
function obe.System.Exceptions.MissingDefaultMountPoint(info) end



---@class obe.System.Exceptions.MountFileMissing
obe.System.Exceptions._MountFileMissing = {};

--- obe.System.Exceptions.MountFileMissing constructor
---
---@param currentPath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MountFileMissing
function obe.System.Exceptions.MountFileMissing(currentPath, info) end



---@class obe.System.Exceptions.MountablePathIndexOverflow
obe.System.Exceptions._MountablePathIndexOverflow = {};

--- obe.System.Exceptions.MountablePathIndexOverflow constructor
---
---@param index number #
---@param maximum number #
---@param mounts table<number, string> #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MountablePathIndexOverflow
function obe.System.Exceptions.MountablePathIndexOverflow(index, maximum, mounts, info) end



---@class obe.System.Exceptions.PackageAlreadyInstalled
obe.System.Exceptions._PackageAlreadyInstalled = {};

--- obe.System.Exceptions.PackageAlreadyInstalled constructor
---
---@param package string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PackageAlreadyInstalled
function obe.System.Exceptions.PackageAlreadyInstalled(package, info) end



---@class obe.System.Exceptions.PackageFileNotFound
obe.System.Exceptions._PackageFileNotFound = {};

--- obe.System.Exceptions.PackageFileNotFound constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PackageFileNotFound
function obe.System.Exceptions.PackageFileNotFound(path, info) end



---@class obe.System.Exceptions.PathError
obe.System.Exceptions._PathError = {};

--- obe.System.Exceptions.PathError constructor
---
---@param prefix string #
---@param path string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PathError
function obe.System.Exceptions.PathError(prefix, path, info) end



---@class obe.System.Exceptions.ResourceNotFound
obe.System.Exceptions._ResourceNotFound = {};

--- obe.System.Exceptions.ResourceNotFound constructor
---
---@param path string #
---@param mounts table<number, string> #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.ResourceNotFound
function obe.System.Exceptions.ResourceNotFound(path, mounts, info) end



---@class obe.System.Exceptions.UnknownPackage
obe.System.Exceptions._UnknownPackage = {};

--- obe.System.Exceptions.UnknownPackage constructor
---
---@param package string #
---@param allPackages table<number, string> #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownPackage
function obe.System.Exceptions.UnknownPackage(package, allPackages, info) end



---@class obe.System.Exceptions.UnknownPathPrefix
obe.System.Exceptions._UnknownPathPrefix = {};

--- obe.System.Exceptions.UnknownPathPrefix constructor
---
---@param prefix string #
---@param allPrefixes table<number, string> #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownPathPrefix
function obe.System.Exceptions.UnknownPathPrefix(prefix, allPrefixes, info) end



---@class obe.System.Exceptions.UnknownProject
obe.System.Exceptions._UnknownProject = {};

--- obe.System.Exceptions.UnknownProject constructor
---
---@param project string #
---@param allProjects table<number, string> #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownProject
function obe.System.Exceptions.UnknownProject(project, allProjects, info) end



---@class obe.System.Exceptions.UnknownStretchMode
obe.System.Exceptions._UnknownStretchMode = {};

--- obe.System.Exceptions.UnknownStretchMode constructor
---
---@param stretchMode string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownStretchMode
function obe.System.Exceptions.UnknownStretchMode(stretchMode, info) end



---@class obe.System.FindResult
obe.System._FindResult = {};

--- obe.System.FindResult constructor
---
---@param pathNotFound string #
---@param query string #
---@param mounts obe.System.MountList #
---@return obe.System.FindResult
function obe.System.FindResult(pathNotFound, query, mounts) end

--- obe.System.FindResult constructor
---
---@param pathType obe.System.PathType #
---@param mount obe.System.MountablePath #
---@param path string #
---@param query string #
---@param element? string #
---@return obe.System.FindResult
function obe.System.FindResult(pathType, mount, path, query, element) end


---@return string
function obe.System._FindResult:hypotheticalPath() end

---@return string
function obe.System._FindResult:path() end

---@return obe.System.MountablePath
function obe.System._FindResult:mount() end

---@return string
function obe.System._FindResult:query() end

---@return string
function obe.System._FindResult:element() end

---@return boolean
function obe.System._FindResult:success() end


---@class obe.System.MountablePath
---@field pathType obe.System.MountablePathType #Type of the mounted path.
---@field basePath string #Path of the mounted path.
---@field prefix string #Prefix of the mounted path.
---@field priority number #Priority of the mounted path (Higher priority means overriding lower priority Paths)
---@field implicit boolean #Allows the path to be used implicitly (without prefix)
obe.System._MountablePath = {};

--- Constructor of MountablePath.
---
---@param pathType obe.System.MountablePathType #Type of the mounted path
---@param basePath string #Path to the mounted path
---@param prefix string #
---@param priority? number #Priority of the mounted path
---@param implicit? boolean #
---@return obe.System.MountablePath
function obe.System.MountablePath(pathType, basePath, prefix, priority, implicit) end


--- Function called to Mount all Paths using 'mount.vili' file.
---
---@param fromCWD? boolean #
---@param fromExe? boolean #
function obe.System._MountablePath:LoadMountFile(fromCWD, fromExe) end

--- Add a Path to Mounted Paths.
---
---@param path obe.System.MountablePath #Path to mount
---@param samePrefixPolicy? obe.System.SamePrefixPolicy #action to take whenever two or more MountablePath with the same prefix are found
function obe.System._MountablePath:Mount(path, samePrefixPolicy) end

--- Remove a Path from Mounted Paths.
---
---@param path obe.System.MountablePath #Path to unmount
function obe.System._MountablePath:Unmount(path) end

--- Remove all Paths from Mounted Paths.
---
function obe.System._MountablePath:UnmountAll() end

--- All the Mounted Paths.
---
---@return obe.System.MountList
function obe.System._MountablePath:Paths() end

--- All the Mounted Paths as strings.
---
---@return table<number, string>
function obe.System._MountablePath:StringPaths() end

--- Sort the mounted paths based on their priorities.
---
function obe.System._MountablePath:Sort() end

--- Retrieve a MountablePath based on the prefix.
---
---@param prefix string #
---@return obe.System.MountablePath
function obe.System._MountablePath:FromPrefix(prefix) end

---@return table<number, string>
function obe.System._MountablePath:GetAllPrefixes() end


---@class obe.System.Path
obe.System._Path = {};

--- Default constructor of Path.
---
---@return obe.System.Path
function obe.System.Path() end

--- Build a path with a custom registry of MountablePath that it will be able to search from.
---
---@param mount obe.System.MountList #A reference containing the mount points the Path should be using
---@return obe.System.Path
function obe.System.Path(mount) end

--- Build a path from an other path (Copy constructor)
---
---@param path obe.System.Path #The Path to build the new Path from
---@return obe.System.Path
function obe.System.Path(path) end

--- Build a path from a std::string_view.
---
---@param path string #Path in std::string_view form
---@return obe.System.Path
function obe.System.Path(path) end

--- Build a path with explicit prefix.
---
---@param prefix string #Prefix in std::string_view form
---@param path string #Path in std::string_view form
---@return obe.System.Path
function obe.System.Path(prefix, path) end


--- Replaces Path's value with a new one.
---
---@param path string #New value for Path
---@return obe.System.Path
function obe.System._Path:set(path) end

--- Returns a new Path which is the current one concatenated with the given string.
---
---@param path string #String containing the path part to add
---@return obe.System.Path
function obe.System._Path:add(path) end

--- Get the last part of a Path.
---
---@return string
function obe.System._Path:last() end

--- Build a path using the current path and the BasePath at given index.
---
---@param index number #Index of the BasePath to use
---@return obe.System.Path
function obe.System._Path:getPath(index) end

--- Finds the most prioritized file corresponding to the Path.
---
---@param pathType? obe.System.PathType #
---@return table<number, obe.System.FindResult>
function obe.System._Path:list(pathType) end

---@param pathType? obe.System.PathType #
---@return obe.System.FindResult
function obe.System._Path:find(pathType) end

---@param pathType? obe.System.PathType #
---@return table<number, obe.System.FindResult>
function obe.System._Path:findAll(pathType) end

--- Get the current path in string form.
---
---@return string
function obe.System._Path:toString() end


---@class obe.System.Plugin
obe.System._Plugin = {};

--- obe.System.Plugin constructor
---
---@param id string #
---@param path string #
---@return obe.System.Plugin
function obe.System.Plugin(id, path) end


---@param engine obe.Engine.Engine #
function obe.System._Plugin:onInit(engine) end

---@param dt number #
function obe.System._Plugin:onUpdate(dt) end

function obe.System._Plugin:onRender() end

function obe.System._Plugin:onExit() end

---@return boolean
function obe.System._Plugin:hasOnInit() end

---@return boolean
function obe.System._Plugin:hasOnUpdate() end

---@return boolean
function obe.System._Plugin:hasOnRender() end

---@return boolean
function obe.System._Plugin:hasOnExit() end

---@return boolean
function obe.System._Plugin:isValid() end


---@class obe.System.Project.Project
obe.System.Project._Project = {};

--- obe.System.Project.Project constructor
---
---@return obe.System.Project.Project
function obe.System.Project.Project() end


--- Dumps the content of the Project to a vili node.
---
---@return vili.node
function obe.System.Project._Project:dump() end

--- Loads a Project from a vili node.
---
---@param data vili.node #vili node containing the data of the Project
function obe.System.Project._Project:load(data) end

---@param path string #
function obe.System.Project._Project:loadFromFile(path) end

function obe.System.Project._Project:mount() end

function obe.System.Project._Project:unmount() end


---@class obe.System.Project.ProjectURLs
---@field homepage string #
---@field issues string #
---@field readme string #
---@field documentation string #
---@field license string #
obe.System.Project._ProjectURLs = {};


--- Dumps the content of the Project URLs to a vili node.
---
---@return vili.node
function obe.System.Project._ProjectURLs:dump() end

--- Loads a Project URLs from a vili node.
---
---@param data vili.node #vili node containing the data of the Project URLs
function obe.System.Project._ProjectURLs:load(data) end


---@class obe.System.Window
obe.System._Window = {};

--- obe.System.Window constructor
---
---@param configuration vili.node #
---@return obe.System.Window
function obe.System.Window(configuration) end


function obe.System._Window:create() end

function obe.System._Window:clear() end

function obe.System._Window:close() end

function obe.System._Window:display() end

---@return obe.Transform.UnitVector
function obe.System._Window:getRenderSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getWindowSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getScreenSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getSize() end

---@return boolean
function obe.System._Window:isOpen() end

---@param event sf.Event #
---@return boolean
function obe.System._Window:pollEvent(event) end

---@param width number #
---@param height number #
function obe.System._Window:setSize(width, height) end

---@param width number #
---@param height number #
function obe.System._Window:setWindowSize(width, height) end

---@param width number #
---@param height number #
function obe.System._Window:setRenderSize(width, height) end

---@param title string #
function obe.System._Window:setTitle(title) end

---@param enabled boolean #
function obe.System._Window:setVerticalSyncEnabled(enabled) end

---@param view sf.View #
function obe.System._Window:setView(view) end

---@param path string #
function obe.System._Window:setIcon(path) end

---@return obe.Graphics.RenderTarget
function obe.System._Window:getTarget() end

---@return sf.RenderWindow
function obe.System._Window:getWindow() end

---@return obe.Graphics.Color
function obe.System._Window:getClearColor() end

---@param color obe.Graphics.Color #
function obe.System._Window:setClearColor(color) end

---@param visible boolean #
function obe.System._Window:setMouseCursorVisible(visible) end


---@class obe.Tiles.AnimatedTile
obe.Tiles._AnimatedTile = {};

--- obe.Tiles.AnimatedTile constructor
---
---@param tileset obe.Tiles.Tileset #
---@param tileIds table<number, number> #
---@param sleeps table<number, obe.Time.TimeUnit> #
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


---@class obe.Tiles.Exceptions.TilePositionOutsideLayer
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



---@class obe.Tiles.Exceptions.UnknownTileId
obe.Tiles.Exceptions._UnknownTileId = {};

--- obe.Tiles.Exceptions.UnknownTileId constructor
---
---@param tileId number #
---@param maxTileId number #
---@param tilesets table<string, table<number, number>> #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileId
function obe.Tiles.Exceptions.UnknownTileId(tileId, maxTileId, tilesets, info) end



---@class obe.Tiles.Exceptions.UnknownTileLayer
obe.Tiles.Exceptions._UnknownTileLayer = {};

--- obe.Tiles.Exceptions.UnknownTileLayer constructor
---
---@param layerId string #
---@param layerIds table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileLayer
function obe.Tiles.Exceptions.UnknownTileLayer(layerId, layerIds, info) end



---@class obe.Tiles.Exceptions.UnknownTileset
obe.Tiles.Exceptions._UnknownTileset = {};

--- obe.Tiles.Exceptions.UnknownTileset constructor
---
---@param tilesetId string #
---@param tilesetsIds table<number, string> #
---@param info obe.DebugInfo #
---@return obe.Tiles.Exceptions.UnknownTileset
function obe.Tiles.Exceptions.UnknownTileset(tilesetId, tilesetsIds, info) end



---@class obe.Tiles.TileLayer
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
---@param data table<number, number> #
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


---@class obe.Tiles.TileScene
obe.Tiles._TileScene = {};

--- obe.Tiles.TileScene constructor
---
---@param scene obe.Scene.Scene #
---@return obe.Tiles.TileScene
function obe.Tiles.TileScene(scene) end


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

---@return table<number, obe.Tiles.TileLayer>
function obe.Tiles._TileScene:getAllLayers() end

---@return table<number, string>
function obe.Tiles._TileScene:getLayersIds() end

---@param id string #
---@return obe.Tiles.TileLayer
function obe.Tiles._TileScene:getLayer(id) end

---@return obe.Tiles.AnimatedTiles
function obe.Tiles._TileScene:getAnimatedTiles() end

---@return obe.Tiles.TilesetCollection
function obe.Tiles._TileScene:getTilesets() end

---@return table<number, obe.Graphics.Renderable>
function obe.Tiles._TileScene:getRenderables() end

---@return table<number, obe.Collision.PolygonalCollider>
function obe.Tiles._TileScene:getColliderModels() end

---@return table<number, vili.node>
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


---@class obe.Tiles.Tileset
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

---@return table<number, number>
function obe.Tiles._TilesetCollection:getTilesetsFirstTilesIds() end

function obe.Tiles._TilesetCollection:clear() end


---@class obe.Time.Chronometer
obe.Time._Chronometer = {};


--- Starts the Chronometer.
---
function obe.Time._Chronometer:start() end

--- Stops the Chronometer.
---
function obe.Time._Chronometer:stop() end

--- Resets the Chronometer.
---
function obe.Time._Chronometer:reset() end

--- Get Time elapsed since the Chronometer started.
---
---@return obe.Time.TimeUnit
function obe.Time._Chronometer:getTime() end

--- Defines a limit to the Chronometer.
---
---@param limit obe.Time.TimeUnit #The amount of milliseconds before the limit is exceeded
function obe.Time._Chronometer:setLimit(limit) end

---@return obe.Time.TimeUnit
function obe.Time._Chronometer:getLimit() end

--- Check if the defined limit has been exceeded.
---
---@return boolean
function obe.Time._Chronometer:over() end


---@class obe.Time.FramerateCounter
obe.Time._FramerateCounter = {};


--- Called when screen is refreshed.
---
function obe.Time._FramerateCounter:tick() end

--- Called when game is updated.
---
function obe.Time._FramerateCounter:uTick() end

--- Load a new font to use when drawing the stats.
---
---@param font obe.Graphics.Font #Font to use to draw the amount of fps / ups
function obe.Time._FramerateCounter:loadFont(font) end

--- Draws the calculated stats on the screen.
---
function obe.Time._FramerateCounter:draw() end


---@class obe.Time.FramerateManager
obe.Time._FramerateManager = {};

--- Creates a new FramerateManager.
---
---@param window obe.System.Window #
---@return obe.Time.FramerateManager
function obe.Time.FramerateManager(window) end


--- Configures the FramerateManager.
---
---@param config vili.node #Configuration of the FramerateManager
function obe.Time._FramerateManager:configure(config) end

--- Updates the FramerateManager (done every time in the main loop)
---
function obe.Time._FramerateManager:update() end

--- Get if the engine should render everything.
---
---@return boolean
function obe.Time._FramerateManager:doRender() end

---@return boolean
function obe.Time._FramerateManager:doUpdate() end

function obe.Time._FramerateManager:start() end

function obe.Time._FramerateManager:reset() end

--- Get the DeltaTime.
---
---@return obe.Time.TimeUnit
function obe.Time._FramerateManager:getDeltaTime() end

--- Get the GameSpeed (DeltaTime * SpeedCoefficient)
---
---@return number
function obe.Time._FramerateManager:getGameSpeed() end

--- Get the SpeedCoefficient.
---
---@return number
function obe.Time._FramerateManager:getSpeedCoefficient() end

--- Check if Framerate is limited or not.
---
---@return boolean
function obe.Time._FramerateManager:isFramerateLimited() end

--- Get the frame per second cap.
---
---@return number
function obe.Time._FramerateManager:getFramerateTarget() end

--- Check if vSync is enabled or not.
---
---@return boolean
function obe.Time._FramerateManager:isVSyncEnabled() end

--- Set the SpeedCoefficient.
---
---@param speed number #The new SpeedCoefficient
function obe.Time._FramerateManager:setSpeedCoefficient(speed) end

--- Set if the Framerate should be limited or not.
---
---@param state boolean #should be true if the framerate has to be limited, false otherwise
function obe.Time._FramerateManager:limitFramerate(state) end

--- Set the max framerate.
---
---@param limit number #An unsigned int containing the max framerate
function obe.Time._FramerateManager:setFramerateTarget(limit) end

--- Set if VerticalSync should be enabled or not.
---
---@param vsync boolean #A boolean containing if the v-sync should be enabled (true = enabled)
function obe.Time._FramerateManager:setVSyncEnabled(vsync) end


---@class obe.Transform.Exceptions.InvalidUnitsEnumValue
obe.Transform.Exceptions._InvalidUnitsEnumValue = {};

--- obe.Transform.Exceptions.InvalidUnitsEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.InvalidUnitsEnumValue
function obe.Transform.Exceptions.InvalidUnitsEnumValue(enumValue, info) end



---@class obe.Transform.Exceptions.PolygonNotEnoughPoints
obe.Transform.Exceptions._PolygonNotEnoughPoints = {};

--- obe.Transform.Exceptions.PolygonNotEnoughPoints constructor
---
---@param polygon nil #
---@param points number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.PolygonNotEnoughPoints
function obe.Transform.Exceptions.PolygonNotEnoughPoints(polygon, points, info) end



---@class obe.Transform.Exceptions.PolygonPointIndexOverflow
obe.Transform.Exceptions._PolygonPointIndexOverflow = {};

--- obe.Transform.Exceptions.PolygonPointIndexOverflow constructor
---
---@param polygon nil #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.PolygonPointIndexOverflow
function obe.Transform.Exceptions.PolygonPointIndexOverflow(polygon, index, maximum, info) end



---@class obe.Transform.Exceptions.UnknownReferential
obe.Transform.Exceptions._UnknownReferential = {};

--- obe.Transform.Exceptions.UnknownReferential constructor
---
---@param referential string #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.UnknownReferential
function obe.Transform.Exceptions.UnknownReferential(referential, info) end



---@class obe.Transform.Exceptions.UnknownUnit
obe.Transform.Exceptions._UnknownUnit = {};

--- obe.Transform.Exceptions.UnknownUnit constructor
---
---@param unit string #
---@param info obe.DebugInfo #
---@return obe.Transform.Exceptions.UnknownUnit
function obe.Transform.Exceptions.UnknownUnit(unit, info) end



---@class obe.Transform.Matrix2D
obe.Transform._Matrix2D = {};

--- obe.Transform.Matrix2D constructor
---
---@param elements table<number, number> #
---@return obe.Transform.Matrix2D
function obe.Transform.Matrix2D(elements) end


---@param vector obe.Transform.UnitVector #
---@return obe.Transform.UnitVector
function obe.Transform._Matrix2D:product(vector) end


---@class obe.Transform.Movable
obe.Transform._Movable = {};


--- Set the position of the Movable using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the Movable
function obe.Transform._Movable:setPosition(position) end

--- Moves the Movable (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Transform._Movable:move(position) end

--- Get the Position of the Movable.
---
---@return obe.Transform.UnitVector
function obe.Transform._Movable:getPosition() end


---@class obe.Transform.Polygon
---@field DefaultTolerance number #
obe.Transform._Polygon = {};

--- obe.Transform.Polygon constructor
---
---@return obe.Transform.Polygon
function obe.Transform.Polygon() end

--- obe.Transform.Polygon constructor
---
---@param polygon obe.Transform.Polygon #
---@return obe.Transform.Polygon
function obe.Transform.Polygon(polygon) end


--- Adds a new Point to the Polygon at Position (x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position where to add the new Point
---@param pointIndex? number #Index where to insert the new Point, Use pointIndex = -1 <DefaultArg> to insert at the end (between last and first Point)
function obe.Transform._Polygon:addPoint(position, pointIndex) end

--- Finds the closest Line from the given Position.
---
---@param position obe.Transform.UnitVector #Position used to get the closest Line
---@return obe.Transform.PolygonSegment
function obe.Transform._Polygon:findClosestSegment(position) end

--- Find the closest Point from the given Position(x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position used to get the closest Point
---@param neighbor? boolean #Get the closest neighbor of the closest Point instead of the Point
---@param excludedPoints? table<number, obe.Transform.point_index_t> #A std::vector containing points you want to exclude from the calculus (Not used in neighbor check step)
---@return obe.Transform.PolygonPoint
function obe.Transform._Polygon:findClosestPoint(position, neighbor, excludedPoints) end

--- Get all the Points of the Polygon.
---
---@return obe.Transform.PolygonPath
function obe.Transform._Polygon:getAllPoints() end

--- Get the position of the Master Point (centroid) of the Polygon.
---
---@return obe.Transform.UnitVector
function obe.Transform._Polygon:getCentroid() end

--- Get the number of points in the Polygon.
---
---@return number
function obe.Transform._Polygon:getPointsAmount() end

--- Get the Position of the first point (index 0) of the Polygon.
---
---@return obe.Transform.UnitVector
function obe.Transform._Polygon:getPosition() end

--- Gets the current angle of the PolygonalCollider.
---
---@return number
function obe.Transform._Polygon:getRotation() end

--- Gets the segment of the Polygon at index segment.
---
---@param segment obe.Transform.point_index_t #Index of the Segment to get
---@return obe.Transform.PolygonSegment
function obe.Transform._Polygon:getSegment(segment) end

--- Get if the Position (x, y) is on one of the side of the Polygon.
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance? number #Amount of SceneUnits allowed around the position
---@return obe.Transform.PolygonSegment?
function obe.Transform._Polygon:getSegmentContainingPoint(position, tolerance) end

--- Check if the MasterPoint of the Polygon is on Position (x - tolerance <= x <= x + tolerance, y - tolerance <= tolerance <= y + tolerance)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance obe.Transform.UnitVector #Position tolerance, bigger number means less precise
---@return boolean
function obe.Transform._Polygon:isCentroidAroundPosition(position, tolerance) end

--- Check if a point of the Polygon is on Position (x - tolerance <= x <= x + tolerance, y - tolerance <= tolerance <= y + tolerance)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance obe.Transform.UnitVector #Position tolerance, bigger number means less precise
---@return obe.Transform.PolygonPoint?
function obe.Transform._Polygon:getPointAroundPosition(position, tolerance) end

--- Moves the Polygon (relative to the current position)
---
---@param position obe.Transform.UnitVector #UnitVector containing the offset to move the Polygon
function obe.Transform._Polygon:move(position) end

--- Adds an angle to the current angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to add to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Transform._Polygon:rotate(angle, origin) end

--- Sets the new position of the Polygon (using the point at index 0)
---
---@param position obe.Transform.UnitVector #UnitVector containing the new Position of the Polygon
function obe.Transform._Polygon:setPosition(position) end

--- Sets the angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to set to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Transform._Polygon:setRotation(angle, origin) end

---@param position obe.Transform.UnitVector #
function obe.Transform._Polygon:setPositionFromCentroid(position) end

---@return obe.Transform.Rect
function obe.Transform._Polygon:getBoundingBox() end


---@class obe.Transform.PolygonPoint
---@field index point_index_t #
obe.Transform._PolygonPoint = {};

--- obe.Transform.PolygonPoint constructor
---
---@param parent obe.Transform.Polygon #
---@param index obe.Transform.point_index_t #
---@return obe.Transform.PolygonPoint
function obe.Transform.PolygonPoint(parent, index) end

--- obe.Transform.PolygonPoint constructor
---
---@param parent obe.Transform.Polygon #
---@param index obe.Transform.point_index_t #
---@param position obe.Transform.UnitVector #
---@return obe.Transform.PolygonPoint
function obe.Transform.PolygonPoint(parent, index, position) end


function obe.Transform._PolygonPoint:remove() end

---@param position obe.Transform.UnitVector #
---@return number
function obe.Transform._PolygonPoint:distance(position) end

---@param from obe.Transform.RelativePositionFrom #
---@return obe.Transform.UnitVector
function obe.Transform._PolygonPoint:getRelativePosition(from) end

---@param from obe.Transform.RelativePositionFrom #
---@param position obe.Transform.UnitVector #
function obe.Transform._PolygonPoint:setRelativePosition(from, position) end

---@param position obe.Transform.UnitVector #
function obe.Transform._PolygonPoint:move(position) end


---@class obe.Transform.PolygonSegment
---@field first obe.Transform.PolygonPoint #
---@field second obe.Transform.PolygonPoint #
obe.Transform._PolygonSegment = {};

--- obe.Transform.PolygonSegment constructor
---
---@param first obe.Transform.PolygonPoint #
---@param second obe.Transform.PolygonPoint #
---@return obe.Transform.PolygonSegment
function obe.Transform.PolygonSegment(first, second) end


---@return number
function obe.Transform._PolygonSegment:getAngle() end

---@return number
function obe.Transform._PolygonSegment:getLength() end


---@class obe.Transform.Rect
---@field x number #
---@field y number #
---@field width number #
---@field height number #
obe.Transform._Rect = {};

--- obe.Transform.Rect constructor
---
---@return obe.Transform.Rect
function obe.Transform.Rect() end

--- obe.Transform.Rect constructor
---
---@param position obe.Transform.UnitVector #
---@param size obe.Transform.UnitVector #
---@return obe.Transform.Rect
function obe.Transform.Rect(position, size) end


--- Transform the UnitVector passed by reference using the given Referential.
---
---@param vec obe.Transform.UnitVector #The UnitVector you want to transform
---@param ref obe.Transform.Referential #The chosen Rect::Referential
---@param type obe.Transform.ReferentialConversionType #The way you want to transform your UnitVector From : Referential::TopLeft to ref To : ref to Referential::TopLeft
function obe.Transform._Rect:transformRef(vec, ref, type) end

--- Moves the Rectangle (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Transform._Rect:move(position) end

--- Set the Position of a specific Referential of the Rect (The opposite Point won't move)
---
---@param position obe.Transform.UnitVector #Position to affect to the specific Referential
---@param ref? obe.Transform.Referential #Referential you want to move
function obe.Transform._Rect:setPointPosition(position, ref) end

--- Move a specific Referential of the Rect (The opposite Point won't move)
---
---@param position obe.Transform.UnitVector #Position to add to the specific Referential
---@param ref? obe.Transform.Referential #Referential you want to move
function obe.Transform._Rect:movePoint(position, ref) end

--- Set the size of the Rect.
---
---@param size obe.Transform.UnitVector #New size of the Rect
---@param ref? obe.Transform.Referential #Referential used to resize the Rect (Referential that won't move)
function obe.Transform._Rect:setSize(size, ref) end

--- Scales the Rect (Relative to the current size)
---
---@param size obe.Transform.UnitVector #Size to multiply to the current size
---@param ref? obe.Transform.Referential #Referential used to scale the Rect (Referential that won't move)
function obe.Transform._Rect:scale(size, ref) end

--- Get the Size of the Rect.
---
---@return obe.Transform.UnitVector
function obe.Transform._Rect:getSize() end

--- Get the Scale Factor of the Rect.
---
---@return obe.Transform.UnitVector
function obe.Transform._Rect:getScaleFactor() end

---@return number
function obe.Transform._Rect:getRotation() end

---@param angle number #
---@param origin obe.Transform.UnitVector #
function obe.Transform._Rect:setRotation(angle, origin) end

---@param angle number #
---@param origin obe.Transform.UnitVector #
function obe.Transform._Rect:rotate(angle, origin) end

--- Draws the Rect for debug purposes <REMOVE>
---
---@param surface obe.Graphics.RenderTarget #
---@param x number #
---@param y number #
function obe.Transform._Rect:draw(surface, x, y) end

--- Checks if the Rect intersects a specified Rect.
---
---@param rect obe.Transform.Rect #
---@return boolean
function obe.Transform._Rect:intersects(rect) end

---@param rect obe.Transform.Rect #
---@return obe.Transform.Rect?
function obe.Transform._Rect:intersection(rect) end


---@class obe.Transform.Referential
---@field TopLeft obe.Transform.Referential #Referential TopLeft.
---@field Top obe.Transform.Referential #Referential Top.
---@field TopRight obe.Transform.Referential #Referential TopRight.
---@field Left obe.Transform.Referential #Referential Left.
---@field Center obe.Transform.Referential #Referential Center.
---@field Right obe.Transform.Referential #Referential Right.
---@field BottomLeft obe.Transform.Referential #Referential BottomLeft.
---@field Bottom obe.Transform.Referential #Referential Bottom.
---@field BottomRight obe.Transform.Referential #Referential BottomRight.
---@field Referentials table<number, obe.Transform.Referential> #
obe.Transform._Referential = {};

--- obe.Transform.Referential constructor
---
---@return obe.Transform.Referential
function obe.Transform.Referential() end

--- obe.Transform.Referential constructor
---
---@param refX number #
---@param refY number #
---@return obe.Transform.Referential
function obe.Transform.Referential(refX, refY) end


--- Get the opposite Referential in a Rect.
---
---@param axis? obe.Transform.FlipAxis #
---@return obe.Transform.Referential
function obe.Transform._Referential:flip(axis) end

--- Get if the Referential is on the left side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnLeftSide() end

--- Get if the Referential is on the right side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnRightSide() end

--- Get if the Referential is on the top side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnTopSide() end

--- Get if the Referential is on the bottom side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnBottomSide() end

--- Get if the Referential is on a corner of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnCorner() end

--- Get if the Referential is on a side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnSide() end

--- Get if the Referential is one of the 9 known referentials (TopLeft, Top, TopRight, Left, Center, Right, BottomLeft, Bottom, BottomRight)
---
---@return boolean
function obe.Transform._Referential:isKnown() end

--- Get the normalized position of a Referential in a Rect (-1 : Left / Top, 0 = Center, 1 = Right / Bottom)
---
---@return obe.Transform.UnitVector
function obe.Transform._Referential:getOffset() end

--- Get the name of a Referential in std::string form.
---
---@param format? string #Format (fmt) of the string returned
---@return string
function obe.Transform._Referential:toString(format) end

--- Gets a Referential based on its name.
---
---@param ref string #Name of the Referential
---@return obe.Transform.Referential
function obe.Transform._Referential:FromString(ref) end


---@class obe.Transform.UnitBasedObject
obe.Transform._UnitBasedObject = {};


--- Set the unit the Object should work with.
---
---@param unit obe.Transform.Units #Unit you want the Object to work with
function obe.Transform._UnitBasedObject:setWorkingUnit(unit) end

--- Get the unit the Object works with.
---
---@return obe.Transform.Units
function obe.Transform._UnitBasedObject:getWorkingUnit() end


---@class obe.Transform.UnitVector
---@field x number #x Coordinate of the UnitVector (related to Unit)
---@field y number #y Coordinate of the UnitVector (related to Unit)
---@field unit obe.Transform.Units #Unit of the UnitVector.
---@field View ViewStruct #Struct used for UnitVector conversions, do not modify !
---@field Screen ScreenStruct #Struct used for UnitVector conversions, do not modify !
obe.Transform._UnitVector = {};

--- Constructor of UnitVector.
---
---@param unit? obe.Transform.Units #Unit of the UnitVector
---@return obe.Transform.UnitVector
function obe.Transform.UnitVector(unit) end

--- Constructor (with x, y) of UnitVector.
---
---@param x number #x Coordinate of the UnitVector
---@param y number #y Coordinate of the UnitVector
---@param unit? obe.Transform.Units #Unit of the UnitVector
---@return obe.Transform.UnitVector
function obe.Transform.UnitVector(x, y, unit) end


--- Return an UnitVector with the converted values (x, y) to the Unit you want.
---
---@param pUnit obe.Transform.Units #An enum value from Transform::Units
---@return obe.Transform.UnitVector
function obe.Transform._UnitVector:to(pUnit) end

--- Unpacks the UnitVector to a tuple (can be used with structured bindings)
---
---@return table<number, number>
function obe.Transform._UnitVector:unpack() end

---@param angle number #
---@param zero? obe.Transform.UnitVector #
---@return obe.Transform.UnitVector
function obe.Transform._UnitVector:rotate(angle, zero) end

---@param vec obe.Transform.UnitVector #
---@return number
function obe.Transform._UnitVector:distance(vec) end

--- Return the length of the UnitVector.
---
---@return number
function obe.Transform._UnitVector:magnitude() end


---@class obe.Types.Identifiable
obe.Types._Identifiable = {};

--- Creates a new Identifiable.
---
---@param id string #A std::string containing the id of the Identifiable
---@return obe.Types.Identifiable
function obe.Types.Identifiable(id) end


--- Set a new id for the Identifiable.
---
---@param id string #Sets the id of the Identifiable
function obe.Types._Identifiable:setId(id) end

--- Get the id of the Identifiable.
---
---@return string
function obe.Types._Identifiable:getId() end


---@class obe.Types.ProtectedIdentifiable
obe.Types._ProtectedIdentifiable = {};



---@class obe.Types.Selectable
obe.Types._Selectable = {};

--- Constructor of Selectable Class.
---
---@param selected? boolean #Default state of m_selected
---@return obe.Types.Selectable
function obe.Types.Selectable(selected) end


--- Set the state of the Selectable.
---
---@param selected boolean #A boolean to set the state of the Selectable (true / false)
function obe.Types._Selectable:setSelected(selected) end

--- Selectable becomes unselected if it was selected and selected if it was not.
---
function obe.Types._Selectable:toggleSelected() end

--- Selects the Selectable.
---
function obe.Types._Selectable:select() end

--- Unselect the Selectable.
---
function obe.Types._Selectable:unselect() end

--- Get if the Selectable is selected or not.
---
---@return boolean
function obe.Types._Selectable:isSelected() end


---@class obe.Types.Serializable
obe.Types._Serializable = {};


--- Dumps the content of the Serializable object to a vili node.
---
---@return vili.node
function obe.Types._Serializable:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Types._Serializable:load(data) end


---@class obe.Types.Togglable
obe.Types._Togglable = {};

--- Constructor of Togglable Class.
---
---@param enabled boolean #Default state of m_enabled
---@return obe.Types.Togglable
function obe.Types.Togglable(enabled) end


--- Set the state of the Togglable.
---
---@param state boolean #A boolean to set the state of the Togglable (true / false)
function obe.Types._Togglable:setEnabled(state) end

--- Togglable disables if it was enabled and enables if it wasn't.
---
function obe.Types._Togglable:toggle() end

--- Enable the Togglable.
---
function obe.Types._Togglable:enable() end

--- Disable the Togglable.
---
function obe.Types._Togglable:disable() end

--- Get if the Togglable is enabled or not.
---
---@return boolean
function obe.Types._Togglable:isEnabled() end


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


---@class vili.const_node_iterator
vili._const_node_iterator = {};

--- vili.const_node_iterator constructor
---
---@param value array.const_iterator #
---@return vili.const_node_iterator
function vili.const_node_iterator(value) end

--- vili.const_node_iterator constructor
---
---@param value object.const_iterator #
---@return vili.const_node_iterator
function vili.const_node_iterator(value) end

--- vili.const_node_iterator constructor
---
---@param other_it vili.const_node_iterator #
---@return vili.const_node_iterator
function vili.const_node_iterator(other_it) end



---@class vili.exceptions.array_index_overflow
vili.exceptions._array_index_overflow = {};

--- vili.exceptions.array_index_overflow constructor
---
---@param index number #
---@param maximum number #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.array_index_overflow
function vili.exceptions.array_index_overflow(index, maximum, info) end



---@class vili.exceptions.base_exception
vili.exceptions._base_exception = {};


---@return string
function vili.exceptions._base_exception:what() end

---@param args Args &&... #
function vili.exceptions._base_exception:error(args) end

---@param args Args &&... #
function vili.exceptions._base_exception:hint(args) end


---@class vili.exceptions.debug_info
---@field file string #
---@field line number #
---@field function string #
vili.exceptions._debug_info = {};

--- vili.exceptions.debug_info constructor
---
---@param file string #
---@param line number #
---@param funcname string #
---@return vili.exceptions.debug_info
function vili.exceptions.debug_info(file, line, funcname) end



---@class vili.exceptions.file_not_found
vili.exceptions._file_not_found = {};

--- vili.exceptions.file_not_found constructor
---
---@param path string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.file_not_found
function vili.exceptions.file_not_found(path, info) end



---@class vili.exceptions.inconsistent_indentation
vili.exceptions._inconsistent_indentation = {};

--- vili.exceptions.inconsistent_indentation constructor
---
---@param indent_level number #
---@param base_indentation number #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.inconsistent_indentation
function vili.exceptions.inconsistent_indentation(indent_level, base_indentation, info) end



---@class vili.exceptions.integer_dump_error
vili.exceptions._integer_dump_error = {};

--- vili.exceptions.integer_dump_error constructor
---
---@param value vili.integer #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.integer_dump_error
function vili.exceptions.integer_dump_error(value, info) end



---@class vili.exceptions.invalid_cast
vili.exceptions._invalid_cast = {};

--- vili.exceptions.invalid_cast constructor
---
---@param cast string #
---@param real_type string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.invalid_cast
function vili.exceptions.invalid_cast(cast, real_type, info) end



---@class vili.exceptions.invalid_data_type
vili.exceptions._invalid_data_type = {};

--- vili.exceptions.invalid_data_type constructor
---
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.invalid_data_type
function vili.exceptions.invalid_data_type(info) end



---@class vili.exceptions.invalid_merge
vili.exceptions._invalid_merge = {};

--- vili.exceptions.invalid_merge constructor
---
---@param merge_base_type string #
---@param merge_type string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.invalid_merge
function vili.exceptions.invalid_merge(merge_base_type, merge_type, info) end



---@class vili.exceptions.invalid_node_type
vili.exceptions._invalid_node_type = {};

--- vili.exceptions.invalid_node_type constructor
---
---@param node_type string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.invalid_node_type
function vili.exceptions.invalid_node_type(node_type, info) end



---@class vili.exceptions.number_dump_error
vili.exceptions._number_dump_error = {};

--- vili.exceptions.number_dump_error constructor
---
---@param value vili.number #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.number_dump_error
function vili.exceptions.number_dump_error(value, info) end



---@class vili.exceptions.parsing_error
vili.exceptions._parsing_error = {};

--- vili.exceptions.parsing_error constructor
---
---@param source string #
---@param line number #
---@param column number #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.parsing_error
function vili.exceptions.parsing_error(source, line, column, info) end



---@class vili.exceptions.too_much_indentation
vili.exceptions._too_much_indentation = {};

--- vili.exceptions.too_much_indentation constructor
---
---@param indent_level number #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.too_much_indentation
function vili.exceptions.too_much_indentation(indent_level, info) end



---@class vili.exceptions.unknown_child_node
---@field key string #
vili.exceptions._unknown_child_node = {};

--- vili.exceptions.unknown_child_node constructor
---
---@param key string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.unknown_child_node
function vili.exceptions.unknown_child_node(key, info) end



---@class vili.exceptions.unknown_template
vili.exceptions._unknown_template = {};

--- vili.exceptions.unknown_template constructor
---
---@param template_name string #
---@param info vili.exceptions.debug_info #
---@return vili.exceptions.unknown_template
function vili.exceptions.unknown_template(template_name, info) end



---@class vili.node
vili._node = {};

--- Default constructor, node will have null type.
---
---@return vili.node
function vili.node() end

--- Same than vili::integer constructor.
---
---@param value number #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains an integer.
---
---@param value vili.integer #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains a number.
---
---@param value vili.number #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains a string.
---
---@param value vili.string #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains a string.
---
---@param value string #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains a boolean.
---
---@param value vili.boolean #
---@return vili.node
function vili.node(value) end

--- Same than vili::string constructor.
---
---@param value string #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains an array (vector-like container)
---
---@param value vili.array #
---@return vili.node
function vili.node(value) end

--- Creates a node that contains a object (map-like container)
---
---@param value vili.object #
---@return vili.node
function vili.node(value) end

--- node copy constructor
---
---@param copy vili.node #
---@return vili.node
function vili.node(copy) end

--- node move constructor
---
---@param move vili.node #
---@return vili.node
function vili.node(move) end


--- Retrieves the type of the underlying value of the node.
---
---@return vili.node_type
function vili._node:type() end

--- Dumps the node content as a string.
---
---@param root? boolean #
---@return string
function vili._node:dump(root) end

--- Checks whether the underlying value is a primitive (boolean, integer, number, string) or not.
---
---@return boolean
function vili._node:is_primitive() end

--- Checks whether the underlying value is a container (array, object) or not.
---
---@return boolean
function vili._node:is_container() end

--- Checks whether the node contains a value or node.
---
---@return boolean
function vili._node:is_null() end

--- Checks whether the underlying value is an integer.
---
---@return boolean
function vili._node:is_integer() end

--- Checks whether the underlying value is a number.
---
---@return boolean
function vili._node:is_number() end

--- Checks whether the underlying value is an integer or a number.
---
---@return boolean
function vili._node:is_numeric() end

--- Checks whether the underlying value is a boolean.
---
---@return boolean
function vili._node:is_boolean() end

--- Checks whether the underlying value is a string.
---
---@return boolean
function vili._node:is_string() end

--- Checks whether the underlying value is an array.
---
---@return boolean
function vili._node:is_array() end

--- Checks whether the underlying value is an object.
---
---@return boolean
function vili._node:is_object() end

--- Returns the node as a boolean.
---
---@return vili.boolean
function vili._node:as_boolean() end

--- Returns the node as an integer.
---
---@return vili.integer
function vili._node:as_integer() end

--- Returns the node as a number.
---
---@return vili.number
function vili._node:as_number() end

--- Returns the node as a string.
---
---@return vili.string
function vili._node:as_string() end

--- Returns the node as an array.
---
---@return vili.array
function vili._node:as_array() end

--- Returns the node as an object.
---
---@return vili.object
function vili._node:as_object() end

---@param value vili.node #
function vili._node:push(value) end

---@param value vili.node #
function vili._node:merge(value) end

---@param key string #
---@return boolean
function vili._node:contains(key) end

---@return vili.node
function vili._node:front() end

---@return vili.node
function vili._node:back() end

---@return number
function vili._node:size() end

---@return boolean
function vili._node:empty() end

function vili._node:clear() end

---@param type vili.node_type #
---@return vili.node
function vili._node:from_type(type) end


---@class vili.node_iterator
vili._node_iterator = {};

--- vili.node_iterator constructor
---
---@param value array.iterator #
---@return vili.node_iterator
function vili.node_iterator(value) end

--- vili.node_iterator constructor
---
---@param value object.iterator #
---@return vili.node_iterator
function vili.node_iterator(value) end

--- vili.node_iterator constructor
---
---@param other_it vili.node_iterator #
---@return vili.node_iterator
function vili.node_iterator(other_it) end



---@class vili.parser.node_in_stack
---@field item node #
---@field indent number #
vili.parser._node_in_stack = {};

--- vili.parser.node_in_stack constructor
---
---@param node vili.node #
---@param indent number #
---@return vili.parser.node_in_stack
function vili.parser.node_in_stack(node, indent) end



---@class vili.parser.state
---@field root node #
vili.parser._state = {};

--- vili.parser.state constructor
---
---@return vili.parser.state
function vili.parser.state() end

--- vili.parser.state constructor
---
---@param state vili.parser.state #
---@return vili.parser.state
function vili.parser.state(state) end

--- vili.parser.state constructor
---
---@param state vili.parser.state #
---@return vili.parser.state
function vili.parser.state(state) end


---@param indent number #
function vili.parser._state:set_indent(indent) end

function vili.parser._state:use_indent() end

---@param identifier string #
function vili.parser._state:set_active_identifier(identifier) end

---@param identifier string #
function vili.parser._state:set_active_template(identifier) end

function vili.parser._state:open_block() end

function vili.parser._state:close_block() end

---@param data vili.node #
function vili.parser._state:push(data) end

function vili.parser._state:specialize_template() end

---@param template_name string #
---@return vili.node
function vili.parser._state:get_template(template_name) end


---@class obe.Events.Actions.Action
---@field action obe.Input.InputAction #
---@field condition obe.Input.InputCondition #
obe.Events.Actions._Action = {};



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



---@class obe.Events.Game.End
---@field id string #
obe.Events.Game._End = {};



---@class obe.Events.Game.Render
---@field id string #
obe.Events.Game._Render = {};



---@class obe.Events.Game.Start
---@field id string #
obe.Events.Game._Start = {};



---@class obe.Events.Game.Update
---@field dt number #
---@field id string #
obe.Events.Game._Update = {};



---@class obe.Events.Keys.StateChanged
---@field state obe.Input.InputButtonState #
---@field previousState obe.Input.InputButtonState #
obe.Events.Keys._StateChanged = {};



---@class obe.Events.Network.Connected
---@field ip string #
---@field id string #
obe.Events.Network._Connected = {};



---@class obe.Events.Network.DataReceived
---@field content string #
---@field id string #
obe.Events.Network._DataReceived = {};



---@class obe.Events.Network.Disconnected
---@field id string #
obe.Events.Network._Disconnected = {};



---@class obe.Events.Scene.Loaded
---@field filename string #
---@field id string #
obe.Events.Scene._Loaded = {};



---@class obe.Graphics.Utils.DrawPolygonOptions
---@field lines boolean #
---@field points boolean #
---@field radius number #
---@field lineColor obe.Graphics.Color #
---@field pointColor obe.Graphics.Color #
---@field specificLineColor table<number, obe.Graphics.Color> #
---@field specificPointColor table<number, obe.Graphics.Color> #
obe.Graphics.Utils._DrawPolygonOptions = {};



---@class obe.Scene.SceneRenderOptions
---@field sprites boolean #
---@field collisions boolean #
---@field sceneNodes boolean #
obe.Scene._SceneRenderOptions = {};



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



---@class obe.Transform.ScreenStruct
---@field w number #
---@field h number #
obe.Transform._ScreenStruct = {};



---@class obe.Transform.ViewStruct
---@field w number #
---@field h number #
---@field x number #
---@field y number #
obe.Transform._ViewStruct = {};



---@class vili.parser.error
vili.parser._error = {};



---@class vili.parser.rules.affectation
vili.parser.rules._affectation = {};



---@class vili.parser.rules.affectation_separator
vili.parser.rules._affectation_separator = {};



---@class vili.parser.rules.array
vili.parser.rules._array = {};



---@class vili.parser.rules.array_elements
vili.parser.rules._array_elements = {};



---@class vili.parser.rules.array_separator
vili.parser.rules._array_separator = {};



---@class vili.parser.rules.block
vili.parser.rules._block = {};



---@class vili.parser.rules.boolean
vili.parser.rules._boolean = {};



---@class vili.parser.rules.brace_based_object
vili.parser.rules._brace_based_object = {};



---@class vili.parser.rules.char_
vili.parser.rules._char_ = {};



---@class vili.parser.rules.close_array
vili.parser.rules._close_array = {};



---@class vili.parser.rules.close_object
vili.parser.rules._close_object = {};



---@class vili.parser.rules.comment
vili.parser.rules._comment = {};



---@class vili.parser.rules.data
vili.parser.rules._data = {};



---@class vili.parser.rules.digits
vili.parser.rules._digits = {};



---@class vili.parser.rules.element
vili.parser.rules._element = {};



---@class vili.parser.rules.empty_line
vili.parser.rules._empty_line = {};



---@class vili.parser.rules.endline
vili.parser.rules._endline = {};



---@class vili.parser.rules.escaped
vili.parser.rules._escaped = {};



---@class vili.parser.rules.escaped_char
vili.parser.rules._escaped_char = {};



---@class vili.parser.rules.false_
vili.parser.rules._false_ = {};



---@class vili.parser.rules.floating_point
vili.parser.rules._floating_point = {};



---@class vili.parser.rules.full_node
vili.parser.rules._full_node = {};



---@class vili.parser.rules.grammar
vili.parser.rules._grammar = {};



---@class vili.parser.rules.identifier
vili.parser.rules._identifier = {};



---@class vili.parser.rules.indent
vili.parser.rules._indent = {};



---@class vili.parser.rules.indent_based_object
vili.parser.rules._indent_based_object = {};



---@class vili.parser.rules.inline_comment
vili.parser.rules._inline_comment = {};



---@class vili.parser.rules.inline_element
vili.parser.rules._inline_element = {};



---@class vili.parser.rules.inline_node
vili.parser.rules._inline_node = {};



---@class vili.parser.rules.integer
vili.parser.rules._integer = {};



---@class vili.parser.rules.multiline_comment
vili.parser.rules._multiline_comment = {};



---@class vili.parser.rules.multiline_comment_block
vili.parser.rules._multiline_comment_block = {};



---@class vili.parser.rules.node
vili.parser.rules._node = {};



---@class vili.parser.rules.number
vili.parser.rules._number = {};



---@class vili.parser.rules.object
vili.parser.rules._object = {};



---@class vili.parser.rules.object_elements
vili.parser.rules._object_elements = {};



---@class vili.parser.rules.object_separator
vili.parser.rules._object_separator = {};



---@class vili.parser.rules.open_array
vili.parser.rules._open_array = {};



---@class vili.parser.rules.open_object
vili.parser.rules._open_object = {};



---@class vili.parser.rules.sign
vili.parser.rules._sign = {};



---@class vili.parser.rules.space_or_comment
vili.parser.rules._space_or_comment = {};



---@class vili.parser.rules.string
vili.parser.rules._string = {};



---@class vili.parser.rules.string_content
vili.parser.rules._string_content = {};



---@class vili.parser.rules.string_delimiter
vili.parser.rules._string_delimiter = {};



---@class vili.parser.rules.template_begin
vili.parser.rules._template_begin = {};



---@class vili.parser.rules.template_decl
vili.parser.rules._template_decl = {};



---@class vili.parser.rules.template_decl_content
vili.parser.rules._template_decl_content = {};



---@class vili.parser.rules.template_identifier
vili.parser.rules._template_identifier = {};



---@class vili.parser.rules.template_identifier_usage
vili.parser.rules._template_identifier_usage = {};



---@class vili.parser.rules.template_keyword
vili.parser.rules._template_keyword = {};



---@class vili.parser.rules.template_specialization
vili.parser.rules._template_specialization = {};



---@class vili.parser.rules.template_usage
vili.parser.rules._template_usage = {};



---@class vili.parser.rules.true_
vili.parser.rules._true_ = {};



---@class vili.parser.rules.unescaped
vili.parser.rules._unescaped = {};



---@class vili.parser.rules.unicode
vili.parser.rules._unicode = {};



---@class vili.parser.rules.vili_grammar
vili.parser.rules._vili_grammar = {};



---@class vili.parser.rules.xdigit
vili.parser.rules._xdigit = {};



---@class vili.writer.dump_options
---@field indent number #
---@field array array #
---@field object object #
---@field root boolean #
vili.writer._dump_options = {};



---@class vili.writer.dump_options.array
---@field items_per_line number #
---@field max_line_length number #
---@field starts_with_newline delimiter_newline_policy #
---@field ends_with_newline delimiter_newline_policy #
---@field left_bracket_spacing number #
---@field right_bracket_spacing number #
---@field inline_spacing number #
---@field comma_spacing comma_spacing_policy #
vili.writer.dump_options._array = {};



---@class vili.writer.dump_options.object
---@field items_per_line number #
---@field max_line_length number #
---@field starts_with_newline delimiter_newline_policy #
---@field ends_with_newline delimiter_newline_policy #
---@field left_brace_spacing number #
---@field right_brace_spacing number #
---@field affectation_left_spaces number #
---@field affectation_right_spaces number #
---@field inline_spacing number #
---@field comma_spacing comma_spacing_policy #
---@field style object_style #
vili.writer.dump_options._object = {};



---@return auto
function obe.getTypeName() end

---@param surfaceWidth number #
---@param surfaceHeight number #
function obe.InitEngine(surfaceWidth, surfaceHeight) end

--- Convert a std::string containing an AnimationPlayMode in string form to an AnimationPlayMode enum value.
---
---@param animationPlayMode string #The std::string containing the AnimationPlayMode in string form
---@return obe.Animation.AnimationPlayMode
function obe.Animation.stringToAnimationPlayMode(animationPlayMode) end

---@param targetScaleMode string #
---@return obe.Animation.AnimatorTargetScaleMode
function obe.Animation.stringToAnimatorTargetScaleMode(targetScaleMode) end

---@param t number #
---@return number
function obe.Animation.Easing.Linear(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InBounce(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutBounce(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutBounce(t) end

---@param state sol.state_view #
function obe.Bindings.IndexCoreBindings(state) end

---@return vili.parser.state
function obe.Config.Templates.getAnimationTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getConfigTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getGameObjectTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getMountTemplates() end

---@return vili.parser.state
function obe.Config.Templates.getSceneTemplates() end

---@return vili.node
function obe.Config.Validators.AnimationValidator() end

---@return vili.node
function obe.Config.Validators.ConfigValidator() end

---@return vili.node
function obe.Config.Validators.MountValidator() end

---@return vili.node
function obe.Config.Validators.ProjectValidator() end

--- Initialize the Logger.
---
function obe.Debug.InitLogger() end

---@param content string #
function obe.Debug.trace(content) end

---@param content string #
function obe.Debug.debug(content) end

---@param content string #
function obe.Debug.info(content) end

---@param content string #
function obe.Debug.warn(content) end

---@param content string #
function obe.Debug.error(content) end

---@param content string #
function obe.Debug.critical(content) end

---@param target obe.Graphics.RenderTarget #
---@param polygon obe.Transform.Polygon #
---@param drawLines boolean #
---@param drawPoints boolean #
---@param drawMasterPoint boolean #
---@param drawSkel boolean #
---@param offset obe.Transform.UnitVector #
function obe.Debug.Render.drawPolygon(target, polygon, drawLines, drawPoints, drawMasterPoint, drawSkel, offset) end

function obe.Graphics.InitPositionTransformer() end

function obe.Graphics.MakeNullTexture() end

---@param type obe.Graphics.Canvas.CanvasElementType #
---@return string
function obe.Graphics.Canvas.canvasElementTypeToString(type) end

--- Draws a Point.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the point
---@param x number #x Coordinate of the position of the Point
---@param y number #y Coordinate of the position of the Point
---@param radius number #Radius of the Point to draw
---@param color obe.Graphics.Color #Color of the new Point
function obe.Graphics.Utils.drawPoint(surface, x, y, radius, color) end

--- Draws a Line.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the line
---@param x1 number #x Coordinate of the first point of the line
---@param y1 number #y Coordinate of the first point of the line
---@param x2 number #x Coordinate of the second point of the line
---@param y2 number #y Coordinate of the second point of the line
---@param thickness number #Thickness of the line you want to draw (2 = Minimal visible size)
---@param color obe.Graphics.Color #Color of the line you want to draw
function obe.Graphics.Utils.drawLine(surface, x1, y1, x2, y2, thickness, color) end

--- Draws a Polygon.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the polygon
---@param points table<number, obe.Transform.UnitVector> #List of all the Polygon points positions
---@param options obe.Graphics.Utils.DrawPolygonOptions #Drawing options : <lines> bool : Are the lines of the Polygon visible ? (true = visible, false = not visible) <points> bool : Are the points of the Polygon visible ? (true = visible, false = not visible) <radius> unsigned int : The radius of the points of the Polygon. <line_color> Color : Default color of the lines of the Polygon. <line_color_x> Color : Color of a specific line of the Polygon where x is the index of the line <point_color> Color : Default color of the points of the Polygon <point_color_x> Color : Color of a specific point of the Polygon where x is the index of the point
function obe.Graphics.Utils.drawPolygon(surface, points, options) end

--- Converts an InputButtonState to a std::string.
---
---@param state obe.Input.InputButtonState #InputButtonState to convert
---@return string
function obe.Input.inputButtonStateToString(state) end

--- Converts a string to the corresponding InputButtonState.
---
---@param state string #InputButtonState in string form
---@return obe.Input.InputButtonState
function obe.Input.stringToInputButtonState(state) end

---@param type obe.Input.InputType #
---@return string
function obe.Input.inputTypeToString(type) end

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
---@return table<number, table>
function obe.Scene.sceneGetAllGameObjectsProxy(self, objectType) end

---@param callback sol.protected_function #
---@param args Args &&... #
function obe.Script.safeLuaCall(callback, args) end

---@param convert vili.node #
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliToLua(convert) end

---@param convert sol.object #
---@return vili.node
function obe.Script.ViliLuaBridge.luaToVili(convert) end

--- Adds a converted Vili ComplexAttribute to a Lua Table The key of the newly converted element in the table will be the ComplexAttribute's id.
---
---@param convert vili.node #The Vili Node you want to get the data from
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliObjectToLuaTable(convert) end

--- Add a Vili BaseAttribute in a Lua Table The key of the newly converted element in the table will be the BaseAttribute's id.
---
---@param convert vili.node #The Vili BaseAttribute you want to add in the Lua Table
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliPrimitiveToLuaValue(convert) end

--- Adds a converted Vili ListAttribute to a Lua Table. Index of the List will start at 0 (unlike default Lua lists which starts at 1). The key of the newly converted element in the table will be the ListAttribute's id.
---
---@param convert vili.node #The Vili ComplexAttribute you want to get the data from
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliArrayToLuaTable(convert) end

--- Converts a Lua Table to a Vili ComplexAttribute.
---
---@param convert table #The LuaTable you want to convert to a ComplexAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaTableToViliObject(convert) end

--- Converts a Lua Variable to a Vili BaseAttribute.
---
---@param convert sol.lua_value #The LuaVar you want to convert to a BaseAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaValueToViliPrimitive(convert) end

--- Converts a Lua Table to a Vili ListAttribute.
---
---@param convert table #The Lua Table you want to convert to a ListAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaTableToViliArray(convert) end

---@param path string #
---@param warnOnMissingPrefix? boolean #
---@return table<number, string>
function obe.System.splitPathAndPrefix(path, warnOnMissingPrefix) end

---@param stretchMode string #
---@return obe.System.StretchMode
function obe.System.stringToStretchMode(stretchMode) end

--- Get the Location of the Package identified by packageName.
---
---@param packageName string #Name of the Package you want to get the path.
---@return string
function obe.System.Package.GetPackageLocation(packageName) end

--- Get if the Package exists or not.
---
---@param packageName string #Name of the Package you want to check the existence.
---@return boolean
function obe.System.Package.PackageExists(packageName) end

---@return table<number, string>
function obe.System.Package.ListPackages() end

--- Installs a Package.
---
---@param packageName string #Is the name of the .opaque file located in Package/ folder (without the .opaque extension)
---@return boolean
function obe.System.Package.Install(packageName) end

--- Load a new Package in the mounted paths.
---
---@param packageName string #Name of the Package to load.
---@param prefix string #Prefix that can be used to reference Package root path
---@param priority? number #Priority of the path that will be mounted.
---@return boolean
function obe.System.Package.Load(packageName, prefix, priority) end

--- Get the Location of the Project identified by projectName.
---
---@param projectName string #Name of the Project you want to get the path.
---@return string
function obe.System.Project.GetProjectLocation(projectName) end

--- Get if the Project exists or not.
---
---@param projectName string #Name of the Project you want to check the existence.
---@return boolean
function obe.System.Project.ProjectExists(projectName) end

--- Load a new Project in the mounted paths.
---
---@param projectName string #Name of the Project to load.
---@param prefix string #Prefix that can be used to reference Project root path
---@param priority? number #Priority of the path that will be mounted.
---@return boolean
function obe.System.Project.Load(projectName, prefix, priority) end

---@return table<number, string>
function obe.System.Project.ListProjects() end

---@param tileId number #
---@return obe.Tiles.TileInfo
function obe.Tiles.getTileInfo(tileId) end

---@param tileId number #
---@return number
function obe.Tiles.stripTileFlags(tileId) end

---@param info obe.Tiles.TileInfo #
---@param quads obe.Tiles.TextureQuadsIndex #
function obe.Tiles.applyTextureQuadsTransforms(info, quads) end

--- Get the amount of seconds elapsed since epoch.
---
---@return obe.Time.TimeUnit
function obe.Time.epoch() end

--- Converts a std::string to an Unit.
---
---@param unit string #Unit in string form
---@return obe.Transform.Units
function obe.Transform.stringToUnits(unit) end

--- Converts an Unit to a std::string.
---
---@param unit obe.Transform.Units #The Units enum value you want to convert into a string
---@return string
function obe.Transform.unitsToString(unit) end

--- Get a list of directories.
---
---@param path string #Path where you want to check the directories
---@return table<number, string>
function obe.Utils.File.getDirectoryList(path) end

--- Get a list of files.
---
---@param path string #Path where you want to check the files
---@return table<number, string>
function obe.Utils.File.getFileList(path) end

--- Check if the file at the given path exists.
---
---@param path string #Path of the file you want to check the existence
---@return boolean
function obe.Utils.File.fileExists(path) end

--- Check if the directory at the given path exists.
---
---@param path string #Path of the directory you want to check the existence
---@return boolean
function obe.Utils.File.directoryExists(path) end

--- Creates a directory at the given path.
---
---@param path string #Path of the directory you want to create
---@return boolean
function obe.Utils.File.createDirectory(path) end

--- Create an empty file at the given path.
---
---@param path string #Path of the empty file you want to create
function obe.Utils.File.createFile(path) end

--- Copy a file.
---
---@param source string #Path of the file you want to copy
---@param target string #Path of the new copy
function obe.Utils.File.copy(source, target) end

--- Deletes a file.
---
---@param path string #Path of the file you want to delete
---@return boolean
function obe.Utils.File.deleteFile(path) end

--- Deletes an empty directory.
---
---@param path string #Path of of the directory you want to delete
---@return boolean
function obe.Utils.File.deleteDirectory(path) end

--- Get the Current Working Directory (CWD)
---
---@return string
function obe.Utils.File.getCurrentDirectory() end

--- Returns the path separator of the current OS.
---
---@return string
function obe.Utils.File.separator() end

--- Returns the path to the directory of the current executable.
---
---@return string
function obe.Utils.File.getExecutableDirectory() end

--- Returns the path of the current executable.
---
---@return string
function obe.Utils.File.getExecutablePath() end

--- Normalizes the path given in argument (replaces every separator with a forward slash)
---
---@param path string #Path to normalize
---@return string
function obe.Utils.File.normalizePath(path) end

---@param path string #
---@return string
function obe.Utils.File.canonicalPath(path) end

---@param parts table<number, string> #
---@return string
function obe.Utils.File.join(parts) end

--- Get a random integer between the given bound.
---
---@param min number #Min bound
---@param max number #Max bound
---@return number
function obe.Utils.Math.randint(min, max) end

--- Get a random double.
---
---@return number
function obe.Utils.Math.randfloat() end

--- Get the lowest value between the two given values.
---
---@param min1 N #First value to check
---@param min2 N #Second value to check
---@return N
function obe.Utils.Math.getMin(min1, min2) end

--- Get the highest value between the two given values.
---
---@param max1 N #First value to check
---@param max2 N #Second value to check
---@return N
function obe.Utils.Math.getMax(max1, max2) end

--- Check if the given value is between the lower bound and the upper bound.
---
---@param target N #Value to check
---@param lowerBound N1 #Lower bound
---@param upperBound N2 #Upper bound
---@return boolean
function obe.Utils.Math.isBetween(target, lowerBound, upperBound) end

--- Check if a double is an integer (3.0 for example is equal to 3)
---
---@param value number #Value to check
---@return boolean
function obe.Utils.Math.isDoubleInt(value) end

--- Get the sign of the given number.
---
---@param val T #Value to check the sign
---@return number
function obe.Utils.Math.sign(val) end

--- Converts a degrees angle to radians.
---
---@param value number #Angle in degrees
---@return number
function obe.Utils.Math.convertToRadian(value) end

--- Converts a radians angle to degrees.
---
---@param value number #Angle in radians
---@return number
function obe.Utils.Math.convertToDegree(value) end

--- Normalizes a value between start and end.
---
---@param value number #Value to normalize
---@param low number #Lower bound
---@param high number #Higher bound
---@return number
function obe.Utils.Math.normalize(value, low, high) end

--- Splits a std::string using a delimited.
---
---@param str string #String you want to split
---@param delimiters? string #Delimiter used to split the string
---@return table<number, string>
function obe.Utils.String.split(str, delimiters) end

--- Count of the occurences of occur in string str.
---
---@param str string #String you want to count the occurences in
---@param occur string #String you want to search
---@return number
function obe.Utils.String.occurencesInString(str, occur) end

--- Get if the string only contains letters.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringAlpha(str) end

--- Get if the string only contains letters and numbers.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringAlphaNumeric(str) end

--- Get if the string is a number.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringNumeric(str) end

--- Get if the string is an integer.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringInt(str) end

--- Get if the string is a float.
---
---@param str string #String you want to check
---@return boolean
function obe.Utils.String.isStringFloat(str) end

--- Replace all the occurences of search to replace in the string subject.
---
---@param subject string #The string you want to modify
---@param search string #The string to replace
---@param replace string #The content that will replace search occurences
---@return string
function obe.Utils.String.replace(subject, search, replace) end

--- Check if the string is surrounded by the given string.
---
---@param string string #String you want to check
---@param bet string #String you want to check if it surrounds the first string
---@return boolean
function obe.Utils.String.isSurroundedBy(string, bet) end

--- Generates a random string witch characters from the given set.
---
---@param set string #Set of characters to use for the generation
---@param len number #Length of the string you want to generate
---@return string
function obe.Utils.String.getRandomKey(set, len) end

--- Check if a string contains another one.
---
---@param string string #The string to check
---@param search string #The content to search in the first string
---@return boolean
function obe.Utils.String.contains(string, search) end

--- Checks if "string" starts with "search".
---
---@param string string #String where to search the prefix
---@param search string #Prefix to check
---@return boolean
function obe.Utils.String.startsWith(string, search) end

--- Checks if "string" ends with "search".
---
---@param string string #String where to search the suffix
---@param search string #Suffix to check
---@return boolean
function obe.Utils.String.endsWith(string, search) end

---@param source string #
---@param target string #
---@return number
function obe.Utils.String.distance(source, target) end

---@param source string #
---@param words table<number, string> #
---@param limit? number #
---@return table<number, string>
function obe.Utils.String.sortByDistance(source, words, limit) end

---@param source string #
---@return string
function obe.Utils.String.quote(source) end

--- Check if a given item is in the given std::vector.
---
---@param item V #Item you want to search in the std::vector
---@param vec table<number, V> #Reference of the std::vector you want to search the item in
---@return boolean
function obe.Utils.Vector.contains(item, vec) end

--- Join all elements of a std::string into a std::string using a separator.
---
---@param vector table<number, string> #array containing the strings to join
---@param sep? string #string separator used to join the string values from the array
---@param start? number #start position from where to start joining values
---@param stop? number #from which index (starting at the end) of the array to stop joining values
---@return string
function obe.Utils.Vector.join(vector, sep, start, stop) end

---@param type string #
---@return vili.node_type
function vili.from_string(type) end

---@param type vili.node_type #
---@return string
function vili.to_string(type) end

---@param input string #
---@param indent_level? number #
---@param pad_left? boolean #
---@return string
function vili.exceptions.indent_string(input, indent_level, pad_left) end

---@param self vili.parser.state #
---@param value vili.node #
function vili.parser.state_push_proxy(self, value) end

---@param data string #
---@param parser_state? vili.parser.state #
---@return vili.node
function vili.parser.from_string(data, parser_state) end

---@param path string #
---@param parser_state? vili.parser.state #
---@return vili.node
function vili.parser.from_file(path, parser_state) end

---@param subject string #
---@param search string #
---@param replace string #
---@return string
function vili.utils.string.replace(subject, search, replace) end

---@param str string #
---@return boolean
function vili.utils.string.is_int(str) end

---@param str string #
---@return boolean
function vili.utils.string.is_float(str) end

---@param str string #
---@return string
function vili.utils.string.truncate_float(str) end

---@param str string #
---@return string
function vili.utils.string.quote(str) end

---@param input string #
---@return number
function vili.utils.string.to_double(input) end

---@param input string #
---@return number
function vili.utils.string.to_long(input) end

---@param data vili.node #
---@return string
function vili.writer.dump_integer(data) end

---@param data vili.node #
---@return string
function vili.writer.dump_number(data) end

---@param data vili.node #
---@return string
function vili.writer.dump_boolean(data) end

---@param data vili.node #
---@return string
function vili.writer.dump_string(data) end

---@param data vili.node #
---@param options? vili.writer.dump_options #
---@return string
function vili.writer.dump_array(data, options) end

---@param data vili.node #
---@param options? vili.writer.dump_options #
---@return string
function vili.writer.dump_object(data, options) end

---@param data vili.node #
---@param options? vili.writer.dump_options #
---@return string
function vili.writer.dump(data, options) end


---@type string
obe.Config.Templates.wait_command = {};
---@type string
obe.Config.Templates.play_group_command = {};
---@type string
obe.Config.Templates.set_animation_command = {};
---@type spdlog.logger
obe.Debug.Log = {};
---@type table<string, obe.Graphics.CoordinateTransformer>
obe.Graphics.Transformers = {};
---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Parallax = {};
---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Camera = {};
---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Position = {};
---@type fun(p0:obe.System.Cursor):table<number, number>
obe.System.Constraints.Default = {};
---@type string
obe.System.Prefixes.obe = {};
---@type string
obe.System.Prefixes.cwd = {};
---@type string
obe.System.Prefixes.exe = {};
---@type string
obe.System.Prefixes.cfg = {};
---@type string
obe.System.Prefixes.mount = {};
---@type string
obe.System.Prefixes.extlibs = {};
---@type string
obe.System.Prefixes.root = {};
---@type number
obe.System.Priorities.high = {};
---@type number
obe.System.Priorities.projectmount = {};
---@type number
obe.System.Priorities.project = {};
---@type number
obe.System.Priorities.mount = {};
---@type number
obe.System.Priorities.defaults = {};
---@type number
obe.System.Priorities.low = {};
---@type string
obe.System.Project.Prefixes.objects = {};
---@type string
obe.System.Project.Prefixes.scenes = {};
---@type obe.Time.TimeUnit
obe.Time.seconds = {};
---@type obe.Time.TimeUnit
obe.Time.milliseconds = {};
---@type obe.Time.TimeUnit
obe.Time.microseconds = {};
---@type obe.Time.TimeUnit
obe.Time.minutes = {};
---@type obe.Time.TimeUnit
obe.Time.hours = {};
---@type obe.Time.TimeUnit
obe.Time.days = {};
---@type obe.Time.TimeUnit
obe.Time.weeks = {};
---@type number
obe.Utils.Math.pi = {};
---@type string
obe.Utils.String.Alphabet = {};
---@type string
obe.Utils.String.Numbers = {};
---@type boolean
vili.PERMISSIVE_CAST = {};
---@type boolean
vili.VERBOSE_EXCEPTIONS = {};
---@type string
vili.true_value = {};
---@type string
vili.false_value = {};
---@type string
vili.null_typename = {};
---@type string
vili.boolean_typename = {};
---@type string
vili.integer_typename = {};
---@type string
vili.number_typename = {};
---@type string
vili.string_typename = {};
---@type string
vili.object_typename = {};
---@type string
vili.array_typename = {};
---@type string
vili.unknown_typename = {};
---@type string
vili.container_typename = {};
--- The Play Mode of an Animation. It indicates whether an Animation can be interrupted or not and what to do when the Animation is over TODO: /bind{AnimationPlayMode}.
---
---@class obe.Animation.AnimationPlayMode
obe.Animation.AnimationPlayMode = {
    OneTime = 0,
    Loop = 1,
    Force = 2,
};
--- The AnimationStatus indicates whether the current Animation should continue to play or call another one.
---
---@class obe.Animation.AnimationStatus
obe.Animation.AnimationStatus = {
    Play = 0,
    Call = 1,
};
--- Sets the scaling behaviour the Animator will apply on target TODO: /bind{Animator.TargetScaleMode}.
---
---@class obe.Animation.AnimatorTargetScaleMode
obe.Animation.AnimatorTargetScaleMode = {
    Fit = 0,
    KeepRatio = 1,
    FixedWidth = 2,
    FixedHeight = 3,
    TextureSize = 4,
};
--- 
---
---@class obe.Animation.Easing.EasingType
obe.Animation.Easing.EasingType = {
    Linear = 0,
    InSine = 1,
    OutSine = 2,
    InOutSine = 3,
    InQuad = 4,
    OutQuad = 5,
    InOutQuad = 6,
    InCubic = 7,
    OutCubic = 8,
    InOutCubic = 9,
    InQuart = 10,
    OutQuart = 11,
    InOutQuart = 12,
    InQuint = 13,
    OutQuint = 14,
    InOutQuint = 15,
    InExpo = 16,
    OutExpo = 17,
    InOutExpo = 18,
    InCirc = 19,
    OutCirc = 20,
    InOutCirc = 21,
    InBack = 22,
    OutBack = 23,
    InOutBack = 24,
    InElastic = 25,
    OutElastic = 26,
    InOutElastic = 27,
    InBounce = 28,
    OutBounce = 29,
    InOutBounce = 30,
};
--- Defines how a sound should be loaded.
---
---@class obe.Audio.LoadPolicy
obe.Audio.LoadPolicy = {
    Normal = 0,
    Cache = 1,
    Stream = 2,
};
--- Enum that defines the current status of a sound.
---
---@class obe.Audio.SoundStatus
obe.Audio.SoundStatus = {
    Playing = 0,
    Paused = 1,
    Stopped = 2,
};
--- Enum used when manipulating tags in the Collider.
---
---@class obe.Collision.ColliderTagType
obe.Collision.ColliderTagType = {
    Tag = 0,
    Accepted = 1,
    Rejected = 2,
};
--- 
---
---@class obe.Event.CallbackSchedulerState
obe.Event.CallbackSchedulerState = {
    Standby = 0,
    Ready = 1,
    Done = 2,
};
--- 
---
---@class obe.Event.ListenerChangeState
obe.Event.ListenerChangeState = {
    Added = 0,
    Removed = 1,
};
--- Type of the handle point of a Sprite (either scale or rotate)
---
---@class obe.Graphics.SpriteHandlePointType
obe.Graphics.SpriteHandlePointType = {
    ScaleHandle = 0,
    RotateHandle = 1,
};
--- Type of the CanvasElement, used for identification \lua_bind{Canvas.Type}.
---
---@class obe.Graphics.Canvas.CanvasElementType
obe.Graphics.Canvas.CanvasElementType = {
    CanvasElement = 0,
    Line = 1,
    Rectangle = 2,
    Text = 3,
    Circle = 4,
    Polygon = 5,
    Bezier = 6,
};
--- Horizontal alignment state of Text \lua_bind{Canvas.TextAlignment.Horizontal}.
---
---@class obe.Graphics.Canvas.TextHorizontalAlign
obe.Graphics.Canvas.TextHorizontalAlign = {
    Left = 0,
    Center = 1,
    Right = 2,
};
--- Vertical alignment of Text \lua_bind{Canvas.TextAlignment.Vertical}.
---
---@class obe.Graphics.Canvas.TextVerticalAlign
obe.Graphics.Canvas.TextVerticalAlign = {
    Top = 0,
    Center = 1,
    Bottom = 2,
};
--- 
---
---@class obe.Input.MouseWheelScrollDirection
obe.Input.MouseWheelScrollDirection = {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3,
};
--- Trigger condition on an AxisButton input.
---
---@class obe.Input.AxisThresholdDirection
obe.Input.AxisThresholdDirection = {
    Less = 0,
    More = 1,
};
--- Possible states of InputButton.
---
---@class obe.Input.InputButtonState
obe.Input.InputButtonState = {
    Idle = 0,
    Hold = 1,
    Pressed = 2,
    Released = 3,
    LAST__ = 4,
};
--- The type of Input.
---
---@class obe.Input.InputType
obe.Input.InputType = {
    Alpha = 0,
    Numeric = 1,
    NumericNP = 2,
    Arrows = 3,
    Functions = 4,
    Mouse = 5,
    Others = 6,
    GamepadButton = 7,
    GamepadAxis = 8,
    ScrollWheel = 9,
};
--- Defines the source of a mounted path.
---
---@class obe.System.MountablePathType
obe.System.MountablePathType = {
    Path = 0,
    Package = 1,
    Project = 2,
};
--- action to take whenever two MountablePath with the same prefix are mounted
---
---@class obe.System.SamePrefixPolicy
obe.System.SamePrefixPolicy = {
    KeepBoth = 0,
    Skip = 1,
    Replace = 2,
};
--- 
---
---@class obe.System.PathType
obe.System.PathType = {
    All = 0,
    Directory = 1,
    File = 2,
};
--- 
---
---@class obe.System.WindowContext
obe.System.WindowContext = {
    GameWindow = 0,
    EditorWindow = 1,
};
--- 
---
---@class obe.System.StretchMode
obe.System.StretchMode = {
    None = 0,
    Center = 1,
    Stretch = 2,
    Fit = 3,
};
--- 
---
---@class obe.Transform.RelativePositionFrom
obe.Transform.RelativePositionFrom = {
    Point0 = 0,
    Centroid = 1,
};
--- Conversion Type for Referential Usage.
---
---@class obe.Transform.ReferentialConversionType
obe.Transform.ReferentialConversionType = {
    From = 0,
    To = 1,
};
--- Enum which contains value to indicate which kind of flip you want to perform on a Referential.
---
---@class obe.Transform.FlipAxis
obe.Transform.FlipAxis = {
    Horizontal = 0,
    Vertical = 1,
    Both = 2,
};
--- Different Units used to work with elements position / size in the Scene.
---
---@class obe.Transform.Units
obe.Transform.Units = {
    ViewPercentage = 0,
    ViewPixels = 1,
    ViewUnits = 2,
    ScenePixels = 3,
    SceneUnits = 4,
};
--- An enum representing Types of existing Nodes.
---
---@class vili.node_type
vili.node_type = {
    null = 0,
    string = 1,
    integer = 2,
    number = 3,
    boolean = 4,
    array = 5,
    object = 6,
};
--- 
---
---@class vili.writer.delimiter_newline_policy
vili.writer.delimiter_newline_policy = {
    never = 0,
    only_if_multiline = 1,
    always = 2,
};
--- 
---
---@class vili.writer.comma_spacing_policy
vili.writer.comma_spacing_policy = {
    left_side = 0,
    right_side = 1,
    both = 2,
};
--- 
---
---@class vili.writer.object_style
vili.writer.object_style = {
    braces = 0,
    indent = 1,
};

---@type obe.Engine.Engine
Engine = {};

---@type obe.Script.GameObject
This = {};

