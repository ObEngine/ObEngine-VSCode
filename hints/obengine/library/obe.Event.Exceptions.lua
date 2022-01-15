---@meta

obe.Event.Exceptions = {};
---@class obe.Event.Exceptions.CallbackCreationError : obe.Exception[obe.Event.Exceptions.CallbackCreationError]
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



---@class obe.Event.Exceptions.EventAlreadyExists : obe.Exception[obe.Event.Exceptions.EventAlreadyExists]
obe.Event.Exceptions._EventAlreadyExists = {};

--- obe.Event.Exceptions.EventAlreadyExists constructor
---
---@param eventGroupIdentifier string #
---@param eventName string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventAlreadyExists
function obe.Event.Exceptions.EventAlreadyExists(eventGroupIdentifier, eventName, info) end



---@class obe.Event.Exceptions.EventExecutionError : obe.Exception[obe.Event.Exceptions.EventExecutionError]
obe.Event.Exceptions._EventExecutionError = {};

--- obe.Event.Exceptions.EventExecutionError constructor
---
---@param eventName string #
---@param listenerId string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventExecutionError
function obe.Event.Exceptions.EventExecutionError(eventName, listenerId, info) end



---@class obe.Event.Exceptions.EventGroupAlreadyExists : obe.Exception[obe.Event.Exceptions.EventGroupAlreadyExists]
obe.Event.Exceptions._EventGroupAlreadyExists = {};

--- obe.Event.Exceptions.EventGroupAlreadyExists constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventGroupAlreadyExists
function obe.Event.Exceptions.EventGroupAlreadyExists(eventNamespace, eventGroup, info) end



---@class obe.Event.Exceptions.EventGroupNotJoinable : obe.Exception[obe.Event.Exceptions.EventGroupNotJoinable]
obe.Event.Exceptions._EventGroupNotJoinable = {};

--- obe.Event.Exceptions.EventGroupNotJoinable constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventGroupNotJoinable
function obe.Event.Exceptions.EventGroupNotJoinable(eventNamespace, eventGroup, info) end



---@class obe.Event.Exceptions.EventNamespaceAlreadyExists : obe.Exception[obe.Event.Exceptions.EventNamespaceAlreadyExists]
obe.Event.Exceptions._EventNamespaceAlreadyExists = {};

--- obe.Event.Exceptions.EventNamespaceAlreadyExists constructor
---
---@param eventNamespace string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventNamespaceAlreadyExists
function obe.Event.Exceptions.EventNamespaceAlreadyExists(eventNamespace, info) end



---@class obe.Event.Exceptions.EventNamespaceNotJoinable : obe.Exception[obe.Event.Exceptions.EventNamespaceNotJoinable]
obe.Event.Exceptions._EventNamespaceNotJoinable = {};

--- obe.Event.Exceptions.EventNamespaceNotJoinable constructor
---
---@param eventNamespace string #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.EventNamespaceNotJoinable
function obe.Event.Exceptions.EventNamespaceNotJoinable(eventNamespace, info) end



---@class obe.Event.Exceptions.UnknownEvent : obe.Exception[obe.Event.Exceptions.UnknownEvent]
obe.Event.Exceptions._UnknownEvent = {};

--- obe.Event.Exceptions.UnknownEvent constructor
---
---@param eventGroup string #
---@param eventName string #
---@param existingEvents string[] #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEvent
function obe.Event.Exceptions.UnknownEvent(eventGroup, eventName, existingEvents, info) end



---@class obe.Event.Exceptions.UnknownEventGroup : obe.Exception[obe.Event.Exceptions.UnknownEventGroup]
obe.Event.Exceptions._UnknownEventGroup = {};

--- obe.Event.Exceptions.UnknownEventGroup constructor
---
---@param eventNamespace string #
---@param eventGroup string #
---@param existingGroups string[] #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEventGroup
function obe.Event.Exceptions.UnknownEventGroup(eventNamespace, eventGroup, existingGroups, info) end



---@class obe.Event.Exceptions.UnknownEventNamespace : obe.Exception[obe.Event.Exceptions.UnknownEventNamespace]
obe.Event.Exceptions._UnknownEventNamespace = {};

--- obe.Event.Exceptions.UnknownEventNamespace constructor
---
---@param eventNamespace string #
---@param existingNamespaces string[] #
---@param info obe.DebugInfo #
---@return obe.Event.Exceptions.UnknownEventNamespace
function obe.Event.Exceptions.UnknownEventNamespace(eventNamespace, existingNamespaces, info) end



return obe.Event.Exceptions;