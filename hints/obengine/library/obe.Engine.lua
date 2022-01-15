---@meta

obe.Engine = {};
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



---@alias obe.Engine.ResourceStore table<string, T>

---@alias obe.Engine.TexturePair table<number, obe.Graphics.Texture>
return obe.Engine;