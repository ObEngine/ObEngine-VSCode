---@meta

obe.Animation.Exceptions = {};
---@class obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow : obe.Exception[obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow]
obe.Animation.Exceptions._AnimationGroupTextureIndexOverflow = {};

--- obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow constructor
---
---@param animationGroup string #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow
function obe.Animation.Exceptions.AnimationGroupTextureIndexOverflow(animationGroup, index, maximum, info) end



---@class obe.Animation.Exceptions.AnimationTextureIndexOverflow : obe.Exception[obe.Animation.Exceptions.AnimationTextureIndexOverflow]
obe.Animation.Exceptions._AnimationTextureIndexOverflow = {};

--- obe.Animation.Exceptions.AnimationTextureIndexOverflow constructor
---
---@param animation string #
---@param index number #
---@param maximum number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.AnimationTextureIndexOverflow
function obe.Animation.Exceptions.AnimationTextureIndexOverflow(animation, index, maximum, info) end



---@class obe.Animation.Exceptions.InvalidAnimationFile : obe.Exception[obe.Animation.Exceptions.InvalidAnimationFile]
obe.Animation.Exceptions._InvalidAnimationFile = {};

--- obe.Animation.Exceptions.InvalidAnimationFile constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.InvalidAnimationFile
function obe.Animation.Exceptions.InvalidAnimationFile(path, info) end



---@class obe.Animation.Exceptions.NoSelectedAnimation : obe.Exception[obe.Animation.Exceptions.NoSelectedAnimation]
obe.Animation.Exceptions._NoSelectedAnimation = {};

--- obe.Animation.Exceptions.NoSelectedAnimation constructor
---
---@param animator string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.NoSelectedAnimation
function obe.Animation.Exceptions.NoSelectedAnimation(animator, info) end



---@class obe.Animation.Exceptions.NoSelectedAnimationGroup : obe.Exception[obe.Animation.Exceptions.NoSelectedAnimationGroup]
obe.Animation.Exceptions._NoSelectedAnimationGroup = {};

--- obe.Animation.Exceptions.NoSelectedAnimationGroup constructor
---
---@param animation string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.NoSelectedAnimationGroup
function obe.Animation.Exceptions.NoSelectedAnimationGroup(animation, info) end



---@class obe.Animation.Exceptions.UnknownAnimation : obe.Exception[obe.Animation.Exceptions.UnknownAnimation]
obe.Animation.Exceptions._UnknownAnimation = {};

--- obe.Animation.Exceptions.UnknownAnimation constructor
---
---@param animatorPath string #
---@param animation string #
---@param animations string[] #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimation
function obe.Animation.Exceptions.UnknownAnimation(animatorPath, animation, animations, info) end



---@class obe.Animation.Exceptions.UnknownAnimationCommand : obe.Exception[obe.Animation.Exceptions.NoSelectedAnimationGroup]
obe.Animation.Exceptions._UnknownAnimationCommand = {};

--- obe.Animation.Exceptions.UnknownAnimationCommand constructor
---
---@param animation string #
---@param command string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationCommand
function obe.Animation.Exceptions.UnknownAnimationCommand(animation, command, info) end



---@class obe.Animation.Exceptions.UnknownAnimationGroup : obe.Exception[obe.Animation.Exceptions.UnknownAnimationGroup]
obe.Animation.Exceptions._UnknownAnimationGroup = {};

--- obe.Animation.Exceptions.UnknownAnimationGroup constructor
---
---@param animation string #
---@param groupName string #
---@param groups string[] #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationGroup
function obe.Animation.Exceptions.UnknownAnimationGroup(animation, groupName, groups, info) end



---@class obe.Animation.Exceptions.UnknownAnimationPlayMode : obe.Exception[obe.Animation.Exceptions.UnknownAnimationPlayMode]
obe.Animation.Exceptions._UnknownAnimationPlayMode = {};

--- obe.Animation.Exceptions.UnknownAnimationPlayMode constructor
---
---@param playMode string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownAnimationPlayMode
function obe.Animation.Exceptions.UnknownAnimationPlayMode(playMode, info) end



---@class obe.Animation.Exceptions.UnknownEasingFromEnum : obe.Exception[obe.Animation.Exceptions.UnknownEasingFromEnum]
obe.Animation.Exceptions._UnknownEasingFromEnum = {};

--- obe.Animation.Exceptions.UnknownEasingFromEnum constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownEasingFromEnum
function obe.Animation.Exceptions.UnknownEasingFromEnum(enumValue, info) end



---@class obe.Animation.Exceptions.UnknownEasingFromString : obe.Exception[obe.Animation.Exceptions.UnknownEasingFromString]
obe.Animation.Exceptions._UnknownEasingFromString = {};

--- obe.Animation.Exceptions.UnknownEasingFromString constructor
---
---@param easingName string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownEasingFromString
function obe.Animation.Exceptions.UnknownEasingFromString(easingName, info) end



---@class obe.Animation.Exceptions.UnknownTargetScaleMode : obe.Exception[obe.Animation.Exceptions.UnknownTargetScaleMode]
obe.Animation.Exceptions._UnknownTargetScaleMode = {};

--- obe.Animation.Exceptions.UnknownTargetScaleMode constructor
---
---@param targetScaleMode string #
---@param info obe.DebugInfo #
---@return obe.Animation.Exceptions.UnknownTargetScaleMode
function obe.Animation.Exceptions.UnknownTargetScaleMode(targetScaleMode, info) end



return obe.Animation.Exceptions;