---@meta

obe.Time = {};
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



---@alias obe.Time.TimeUnit number
--- Get the amount of seconds elapsed since epoch.
---
---@return obe.Time.TimeUnit
function obe.Time.epoch() end


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
return obe.Time;