---@meta

obe.Types = {};
---@class obe.Types.Identifiable
obe.Types._Identifiable = {};

--- Creates a new Identifiable.
---
---@param id string #A std::string containing the id of the Identifiable
---@return obe.Types.Identifiable
function obe.Types.Identifiable(id) end


--- Set a new id for the Identifiable.
---
---@param id string #Sets the id of the Identifiable
function obe.Types._Identifiable:setId(id) end

--- Get the id of the Identifiable.
---
---@return string
function obe.Types._Identifiable:getId() end


---@class obe.Types.ProtectedIdentifiable : obe.Types.Identifiable
obe.Types._ProtectedIdentifiable = {};



---@class obe.Types.Selectable
obe.Types._Selectable = {};

--- Constructor of Selectable Class.
---
---@param selected? boolean #Default state of m_selected
---@return obe.Types.Selectable
function obe.Types.Selectable(selected) end


--- Set the state of the Selectable.
---
---@param selected boolean #A boolean to set the state of the Selectable (true / false)
function obe.Types._Selectable:setSelected(selected) end

--- Selectable becomes unselected if it was selected and selected if it was not.
---
function obe.Types._Selectable:toggleSelected() end

--- Selects the Selectable.
---
function obe.Types._Selectable:select() end

--- Unselect the Selectable.
---
function obe.Types._Selectable:unselect() end

--- Get if the Selectable is selected or not.
---
---@return boolean
function obe.Types._Selectable:isSelected() end


---@class obe.Types.Serializable
obe.Types._Serializable = {};


--- Dumps the content of the Serializable object to a vili node.
---
---@return vili.node
function obe.Types._Serializable:dump() end

--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Types._Serializable:load(data) end


---@class obe.Types.Togglable
obe.Types._Togglable = {};

--- Constructor of Togglable Class.
---
---@param enabled boolean #Default state of m_enabled
---@return obe.Types.Togglable
function obe.Types.Togglable(enabled) end


--- Set the state of the Togglable.
---
---@param state boolean #A boolean to set the state of the Togglable (true / false)
function obe.Types._Togglable:setEnabled(state) end

--- Togglable disables if it was enabled and enables if it wasn't.
---
function obe.Types._Togglable:toggle() end

--- Enable the Togglable.
---
function obe.Types._Togglable:enable() end

--- Disable the Togglable.
---
function obe.Types._Togglable:disable() end

--- Get if the Togglable is enabled or not.
---
---@return boolean
function obe.Types._Togglable:isEnabled() end



---@alias obe.Types.is_scoped_enum std.integral_constant[boolean,std.is_enum[E >.value &&!std.is_convertible[E>,int >.value]]]
return obe.Types;