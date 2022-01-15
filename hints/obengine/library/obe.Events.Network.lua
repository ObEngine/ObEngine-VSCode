---@meta

obe.Events.Network = {};
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



return obe.Events.Network;