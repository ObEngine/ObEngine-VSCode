---@meta

obe.Audio = {};
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
return obe.Audio;