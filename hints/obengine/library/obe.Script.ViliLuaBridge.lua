---@meta

obe.Script.ViliLuaBridge = {};
---@param convert vili.node #
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliToLua(convert) end

---@param convert sol.object #
---@return vili.node
function obe.Script.ViliLuaBridge.luaToVili(convert) end

--- Adds a converted Vili ComplexAttribute to a Lua Table The key of the newly converted element in the table will be the ComplexAttribute's id.
---
---@param convert vili.node #The Vili Node you want to get the data from
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliObjectToLuaTable(convert) end

--- Add a Vili BaseAttribute in a Lua Table The key of the newly converted element in the table will be the BaseAttribute's id.
---
---@param convert vili.node #The Vili BaseAttribute you want to add in the Lua Table
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliPrimitiveToLuaValue(convert) end

--- Adds a converted Vili ListAttribute to a Lua Table. Index of the List will start at 0 (unlike default Lua lists which starts at 1). The key of the newly converted element in the table will be the ListAttribute's id.
---
---@param convert vili.node #The Vili ComplexAttribute you want to get the data from
---@return sol.lua_value
function obe.Script.ViliLuaBridge.viliArrayToLuaTable(convert) end

--- Converts a Lua Table to a Vili ComplexAttribute.
---
---@param convert table #The LuaTable you want to convert to a ComplexAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaTableToViliObject(convert) end

--- Converts a Lua Variable to a Vili BaseAttribute.
---
---@param convert sol.lua_value #The LuaVar you want to convert to a BaseAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaValueToViliPrimitive(convert) end

--- Converts a Lua Table to a Vili ListAttribute.
---
---@param convert table #The Lua Table you want to convert to a ListAttribute
---@return vili.node
function obe.Script.ViliLuaBridge.luaTableToViliArray(convert) end

return obe.Script.ViliLuaBridge;