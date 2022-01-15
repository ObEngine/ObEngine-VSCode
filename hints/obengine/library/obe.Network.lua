---@meta

obe.Network = {};
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


---@class obe.Network.TcpSocket : sf.TcpSocket
obe.Network._TcpSocket = {};



return obe.Network;