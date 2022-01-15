---@meta

obe.Animation = {};
---@class obe.Animation.Animation
obe.Animation._Animation = {};

--- obe.Animation.Animation constructor
---
---@return obe.Animation.Animation
function obe.Animation.Animation() end

--- obe.Animation.Animation constructor
---
---@param p0 obe.Animation.Animation #
---@return obe.Animation.Animation
function obe.Animation.Animation(p0) end


--- Apply global Animation parameters (Sprite offset and priority)
---
---@param parameters vili.node #A vili::node that contains the following optional parameters : spriteOffsetX : x Coordinate of the Sprite Offset in the Animation in pixels. spriteOffsetY : y Coordinate of the Sprite Offset in the Animation in pixels. priority : Priority of the Animation (A higher Animation priority can't be interrupted by an Animation with a lower one).
function obe.Animation._Animation:applyParameters(parameters) end

--- Get the name of all contained AnimationGroup of the Animation.
---
---@return string[]
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

--- obe.Animation.Animator constructor
---
---@param p0 obe.Animation.Animator #
---@return obe.Animation.Animator
function obe.Animation.Animator(p0) end


--- Clear the Animator of all Animation.
---
function obe.Animation._Animator:clear() end

--- Get the name of all contained Animation.
---
---@return string[]
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


---@class obe.Animation.ValueTweening
obe.Animation._ValueTweening = {};

--- obe.Animation.ValueTweening constructor
---
---@param duration obe.Time.TimeUnit #
---@param easing? obe.Animation.Easing.EasingFunction #
---@return obe.Animation.ValueTweening
function obe.Animation.ValueTweening(duration, easing) end

--- obe.Animation.ValueTweening constructor
---
---@param from TweenableClass #
---@param to TweenableClass #
---@param duration obe.Time.TimeUnit #
---@param easing? obe.Animation.Easing.EasingFunction #
---@return obe.Animation.ValueTweening
function obe.Animation.ValueTweening(from, to, duration, easing) end


---@param from TweenableClass #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:from(from) end

---@param to TweenableClass #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:to(to) end

---@param easing obe.Animation.Easing.EasingFunction #
---@return obe.Animation.ValueTweening
function obe.Animation._ValueTweening:ease(easing) end

function obe.Animation._ValueTweening:start() end

function obe.Animation._ValueTweening:stop() end

---@param progression number #
function obe.Animation._ValueTweening:seek(progression) end

function obe.Animation._ValueTweening:reset() end

function obe.Animation._ValueTweening:resume() end

---@return boolean
function obe.Animation._ValueTweening:done() end

---@param dt number #
---@return TweenableClass
function obe.Animation._ValueTweening:step(dt) end


--- Convert a std::string containing an AnimationPlayMode in string form to an AnimationPlayMode enum value.
---
---@param animationPlayMode string #The std::string containing the AnimationPlayMode in string form
---@return obe.Animation.AnimationPlayMode
function obe.Animation.stringToAnimationPlayMode(animationPlayMode) end

---@param targetScaleMode string #
---@return obe.Animation.AnimatorTargetScaleMode
function obe.Animation.stringToAnimatorTargetScaleMode(targetScaleMode) end

---@param p0 T #
---@return std.true_type
function obe.Animation.template_specialization_exists_impl(p0) end


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

--- Sets the scaling behaviour the Animator will apply on target.
---
---@class obe.Animation.AnimatorTargetScaleMode
obe.Animation.AnimatorTargetScaleMode = {
    Fit = 0,
    KeepRatio = 1,
    FixedWidth = 2,
    FixedHeight = 3,
    TextureSize = 4,
};
return obe.Animation;