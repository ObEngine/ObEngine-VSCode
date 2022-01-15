---@meta

obe.Event = {};
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
function obe.Event._CallbackScheduler:repeat(amount) end

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
---@return string[]
function obe.Event._EventGroup:getEventsNames() end

--- Get all the Events contained in the EventGroup.
---
---@return obe.Event.EventBase[]
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
---@return string[]
function obe.Event._EventGroupView:getEventsNames() end

--- Get all the Events contained in the EventGroup.
---
---@return obe.Event.EventBase[]
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

--- Checks whether the EventGroup contains an Event with a given name or not.
---
---@param eventName string #Name of the Event to check the existence of
---@return boolean
function obe.Event._EventGroupView:contains(eventName) end

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
---@return obe.Event.EventNamespace
function obe.Event._EventManager:joinNamespace(eventNamespace) end

---@param eventNamespace string #
---@return obe.Event.EventNamespaceView
function obe.Event._EventManager:getNamespace(eventNamespace) end

---@return string[]
function obe.Event._EventManager:getAllNamespacesNames() end

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
---@return string[]
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

--- Sets if the EventNamespace is joinable or not.
---
---@param joinable boolean #true if the EventNamespace should be joinable, false otherwise
function obe.Event._EventNamespace:setJoinable(joinable) end

--- Get if the EventNamespace is joinable or not.
---
---@return boolean
function obe.Event._EventNamespace:isJoinable() end


---@class obe.Event.EventNamespaceView
obe.Event._EventNamespaceView = {};

--- obe.Event.EventNamespaceView constructor
---
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.Event.EventNamespaceView
function obe.Event.EventNamespaceView(eventNamespace) end


---@param group string #
---@return obe.Event.EventGroupPtr
function obe.Event._EventNamespaceView:joinGroup(group) end

---@param group string #
---@return obe.Event.EventGroupView
function obe.Event._EventNamespaceView:getGroup(group) end

--- Get all the names of the EventGroup in the given Namespace.
---
---@return string[]
function obe.Event._EventNamespaceView:getAllGroupsNames() end

--- Check if an EventGroup exists in the EventNamespace.
---
---@param group string #Name of the EventGroup to search
---@return boolean
function obe.Event._EventNamespaceView:doesGroupExists(group) end


---@class obe.Event.LuaEventListener
obe.Event._LuaEventListener = {};

--- obe.Event.LuaEventListener constructor
---
---@param callback function #
---@return obe.Event.LuaEventListener
function obe.Event.LuaEventListener(callback) end



---@class obe.Event.ScopeProfiler
obe.Event._ScopeProfiler = {};

--- obe.Event.ScopeProfiler constructor
---
---@param results obe.Event.CallbackProfiler #
---@return obe.Event.ScopeProfiler
function obe.Event.ScopeProfiler(results) end




---@alias obe.Event.Callback fun()

---@alias obe.Event.EventProfiler table<string, obe.Event.CallbackProfiler>

---@alias obe.Event.EventGroupPtr obe.Event.EventGroup

---@alias obe.Event.ExternalEventListener obe.Event.LuaEventListener

---@alias obe.Event.OnListenerChange fun(p0:obe.Event.ListenerChangeState, p1:string)
---@param self obe.Event.EventGroup #
---@param name string #
function obe.Event.add(self, name) end

---@param self obe.Event.EventGroup #
---@param name string #
---@param data? table #
function obe.Event.trigger(self, name, data) end


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
return obe.Event;