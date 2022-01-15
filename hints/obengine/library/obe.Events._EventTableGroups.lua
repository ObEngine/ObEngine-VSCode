---@meta

obe.Events._EventTableGroups = {};
---@class obe.Events._EventTableGroups.Cursor
---@field Hold fun(evt:obe.Events.Cursor.Hold) #
---@field Move fun(evt:obe.Events.Cursor.Move) #
---@field Press fun(evt:obe.Events.Cursor.Press) #
---@field Release fun(evt:obe.Events.Cursor.Release) #
obe.Events._EventTableGroups._Cursor = {};



---@class obe.Events._EventTableGroups.Game
---@field End fun(evt:obe.Events.Game.End) #
---@field Render fun(evt:obe.Events.Game.Render) #
---@field Start fun(evt:obe.Events.Game.Start) #
---@field Update fun(evt:obe.Events.Game.Update) #
obe.Events._EventTableGroups._Game = {};



---@class obe.Events._EventTableGroups.Network
---@field Connected fun(evt:obe.Events.Network.Connected) #
---@field DataReceived fun(evt:obe.Events.Network.DataReceived) #
---@field Disconnected fun(evt:obe.Events.Network.Disconnected) #
obe.Events._EventTableGroups._Network = {};



---@class obe.Events._EventTableGroups.Scene
---@field Loaded fun(evt:obe.Events.Scene.Loaded) #
obe.Events._EventTableGroups._Scene = {};



return obe.Events._EventTableGroups;