---@meta

obe.System = {};
---@class obe.System.ContextualPathFactory
obe.System._ContextualPathFactory = {};

--- obe.System.ContextualPathFactory constructor
---
---@param base string #
---@return obe.System.ContextualPathFactory
function obe.System.ContextualPathFactory(base) end

--- obe.System.ContextualPathFactory constructor
---
---@param base string #
---@param customMounts obe.System.MountList #
---@return obe.System.ContextualPathFactory
function obe.System.ContextualPathFactory(base, customMounts) end



---@class obe.System.Cursor
obe.System._Cursor = {};

--- Creates a Cursor.
---
---@param window obe.System.Window #
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.System.Cursor
function obe.System.Cursor(window, eventNamespace) end


--- Gets the x Coordinate of the Cursor Position (Constrained)
---
---@return number
function obe.System._Cursor:getConstrainedX() end

--- Gets the y Coordinate of the Cursor Position (Constrained)
---
---@return number
function obe.System._Cursor:getConstrainedY() end

--- Gets the x Coordinate of the raw (System) position of the Cursor (Unconstrained)
---
---@return number
function obe.System._Cursor:getX() end

--- Gets the y Coordinate of the raw (System) position of the Cursor (Unconstrained)
---
---@return number
function obe.System._Cursor:getY() end

--- Sets the x Coordinate of the Cursor Position.
---
---@param x number #An int containing the x Coordinate of the new Cursor Position
function obe.System._Cursor:setX(x) end

--- Sets the y Coordinate of the Cursor Position.
---
---@param y number #An int containing the y Coordinate of the new Cursor Position
function obe.System._Cursor:setY(y) end

--- Sets the Position of the Cursor.
---
---@param x number #An int containing the x Coordinate of the new Cursor Position
---@param y number #An int containing the y Coordinate of the new Cursor Position
function obe.System._Cursor:setPosition(x, y) end

function obe.System._Cursor:show() end

function obe.System._Cursor:hide() end

---@param visible boolean #
function obe.System._Cursor:setVisible(visible) end

---@return boolean
function obe.System._Cursor:isVisible() end

---@return obe.Transform.UnitVector
function obe.System._Cursor:getPosition() end

---@return obe.Transform.UnitVector
function obe.System._Cursor:getScenePosition() end

--- Updates the Cursor.
---
function obe.System._Cursor:update() end

--- Sets the Cursor's constraint.
---
---@param constraint obe.System.Cursor.PositionConstraint #A function returning the constrained Position of the Cursor (x, y coordinates) and taking the Cursor pointer in parameter
---@param condition? obe.System.Cursor.ConstraintCondition #condition for the constraint to apply
function obe.System._Cursor:setConstraint(constraint, condition) end

---@param button sf.Mouse.Button #
---@return boolean
function obe.System._Cursor:isPressed(button) end

--- Change the cursor.
---
---@param newCursor obe.System.CursorModel #CursorModel defining the cursor to display
function obe.System._Cursor:setCursor(newCursor) end


---@class obe.System.CursorModel
obe.System._CursorModel = {};


--- Set cursor appearance and hotspot from an image file.
---
---@param filename string #Image file to use for the cursor
---@param hotspotX number #X coordinate on image (in pixels) of the cursor hotspot
---@param hotspotY number #Y coordinate on image (in pixels) of the cursor hotspot
---@return boolean
function obe.System._CursorModel:loadFromFile(filename, hotspotX, hotspotY) end

--- Loads a native system cursor.
---
---@param type obe.System.CursorType #Native system cursor type
---@return boolean
function obe.System._CursorModel:loadFromSystem(type) end


---@class obe.System.FindResult
obe.System._FindResult = {};

--- obe.System.FindResult constructor
---
---@param pathType obe.System.PathType #
---@param pathNotFound string #
---@param query string #
---@param mounts obe.System.MountList #
---@return obe.System.FindResult
function obe.System.FindResult(pathType, pathNotFound, query, mounts) end

--- obe.System.FindResult constructor
---
---@param pathType obe.System.PathType #
---@param mount obe.System.MountablePath #
---@param path string #
---@param query string #
---@param element? string #
---@return obe.System.FindResult
function obe.System.FindResult(pathType, mount, path, query, element) end


---@return string
function obe.System._FindResult:hypotheticalPath() end

---@return string
function obe.System._FindResult:path() end

---@return obe.System.MountablePath
function obe.System._FindResult:mount() end

---@return string
function obe.System._FindResult:query() end

---@return string
function obe.System._FindResult:element() end

---@return boolean
function obe.System._FindResult:success() end


---@class obe.System.MountablePath
---@field pathType obe.System.MountablePathType #Type of the mounted path.
---@field basePath string #Path of the mounted path.
---@field prefix string #Prefix of the mounted path.
---@field priority number #Priority of the mounted path (Higher priority means overriding lower priority Paths)
---@field implicit boolean #Allows the path to be used implicitly (without prefix)
obe.System._MountablePath = {};

--- Constructor of MountablePath.
---
---@param pathType obe.System.MountablePathType #Type of the mounted path
---@param basePath string #Path to the mounted path
---@param prefix string #
---@param priority? number #Priority of the mounted path
---@param implicit? boolean #
---@return obe.System.MountablePath
function obe.System.MountablePath(pathType, basePath, prefix, priority, implicit) end


--- Function called to Mount all Paths using 'mount.vili' file.
---
---@param fromCWD? boolean #
---@param fromExe? boolean #
function obe.System._MountablePath:LoadMountFile(fromCWD, fromExe) end

--- Add a Path to Mounted Paths.
---
---@param path obe.System.MountablePath #Path to mount
---@param samePrefixPolicy? obe.System.SamePrefixPolicy #action to take whenever two or more MountablePath with the same prefix are found
function obe.System._MountablePath:Mount(path, samePrefixPolicy) end

--- Remove a Path from Mounted Paths.
---
---@param path obe.System.MountablePath #Path to unmount
function obe.System._MountablePath:Unmount(path) end

--- Remove all Paths from Mounted Paths.
---
function obe.System._MountablePath:UnmountAll() end

--- All the Mounted Paths.
---
---@return obe.System.MountList
function obe.System._MountablePath:Paths() end

--- All the Mounted Paths as strings.
---
---@return string[]
function obe.System._MountablePath:StringPaths() end

--- Sort the mounted paths based on their priorities.
---
function obe.System._MountablePath:Sort() end

--- Retrieve a MountablePath based on the prefix.
---
---@param prefix string #
---@return obe.System.MountablePath
function obe.System._MountablePath:FromPrefix(prefix) end

---@return string[]
function obe.System._MountablePath:GetAllPrefixes() end


---@class obe.System.Path
obe.System._Path = {};

--- Default constructor of Path.
---
---@return obe.System.Path
function obe.System.Path() end

--- Build a path with a custom registry of MountablePath that it will be able to search from.
---
---@param mount obe.System.MountList #A reference containing the mount points the Path should be using
---@return obe.System.Path
function obe.System.Path(mount) end

--- Build a path from an other path (Copy constructor)
---
---@param path obe.System.Path #The Path to build the new Path from
---@return obe.System.Path
function obe.System.Path(path) end

--- Build a path from a std::string_view.
---
---@param path string #Path in std::string_view form
---@return obe.System.Path
function obe.System.Path(path) end

--- Build a path with explicit prefix.
---
---@param prefix string #Prefix in std::string_view form
---@param path string #Path in std::string_view form
---@return obe.System.Path
function obe.System.Path(prefix, path) end


--- Replaces Path's value with a new one.
---
---@param path string #New value for Path
---@return obe.System.Path
function obe.System._Path:set(path) end

--- Returns a new Path which is the current one concatenated with the given string.
---
---@param path string #String containing the path part to add
---@return obe.System.Path
function obe.System._Path:add(path) end

--- Get the last part of a Path.
---
---@return string
function obe.System._Path:last() end

--- Build a path using the current path and the BasePath at given index.
---
---@param index number #Index of the BasePath to use
---@return obe.System.Path
function obe.System._Path:getPath(index) end

--- Finds the most prioritized file corresponding to the Path.
---
---@param pathType? obe.System.PathType #
---@return obe.System.FindResult[]
function obe.System._Path:list(pathType) end

---@param pathType? obe.System.PathType #
---@return obe.System.FindResult
function obe.System._Path:find(pathType) end

---@param pathType? obe.System.PathType #
---@return obe.System.FindResult[]
function obe.System._Path:findAll(pathType) end

--- Get the current path in string form.
---
---@return string
function obe.System._Path:toString() end


---@class obe.System.Plugin : obe.Types.Identifiable
obe.System._Plugin = {};

--- obe.System.Plugin constructor
---
---@param id string #
---@param path string #
---@return obe.System.Plugin
function obe.System.Plugin(id, path) end


---@param engine obe.Engine.Engine #
function obe.System._Plugin:onInit(engine) end

---@param dt number #
function obe.System._Plugin:onUpdate(dt) end

function obe.System._Plugin:onRender() end

function obe.System._Plugin:onExit() end

---@return boolean
function obe.System._Plugin:hasOnInit() end

---@return boolean
function obe.System._Plugin:hasOnUpdate() end

---@return boolean
function obe.System._Plugin:hasOnRender() end

---@return boolean
function obe.System._Plugin:hasOnExit() end

---@return boolean
function obe.System._Plugin:isValid() end


---@class obe.System.Window
obe.System._Window = {};

--- obe.System.Window constructor
---
---@param configuration vili.node #
---@return obe.System.Window
function obe.System.Window(configuration) end


function obe.System._Window:create() end

function obe.System._Window:clear() end

function obe.System._Window:close() end

function obe.System._Window:display() end

---@return obe.Transform.UnitVector
function obe.System._Window:getRenderSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getWindowSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getScreenSize() end

---@return obe.Transform.UnitVector
function obe.System._Window:getSize() end

---@return boolean
function obe.System._Window:isOpen() end

---@param event sf.Event #
---@return boolean
function obe.System._Window:pollEvent(event) end

---@param width number #
---@param height number #
function obe.System._Window:setSize(width, height) end

---@param width number #
---@param height number #
function obe.System._Window:setWindowSize(width, height) end

---@param width number #
---@param height number #
function obe.System._Window:setRenderSize(width, height) end

---@param title string #
function obe.System._Window:setTitle(title) end

---@param enabled boolean #
function obe.System._Window:setVerticalSyncEnabled(enabled) end

---@param view sf.View #
function obe.System._Window:setView(view) end

---@param path string #
function obe.System._Window:setIcon(path) end

---@return obe.Graphics.RenderTarget
function obe.System._Window:getTarget() end

---@return sf.RenderWindow
function obe.System._Window:getWindow() end

---@return obe.Graphics.Color
function obe.System._Window:getClearColor() end

---@param color obe.Graphics.Color #
function obe.System._Window:setClearColor(color) end

---@param visible boolean #
function obe.System._Window:setMouseCursorVisible(visible) end



---@alias obe.System.MountList obe.System.MountablePath[]

---@alias obe.System.PluginFunction dynamicLinker.dynamicLinker.dlSymbol[T]?
---@param path string #
---@param warnOnMissingPrefix? boolean #
---@return table<number, string>
function obe.System.splitPathAndPrefix(path, warnOnMissingPrefix) end

---@param pathType obe.System.PathType #
---@return string
function obe.System.pathTypeToString(pathType) end

---@param stretchMode string #
---@return obe.System.StretchMode
function obe.System.stringToStretchMode(stretchMode) end


--- 
---
---@class obe.System.CursorType
obe.System.CursorType = {
    Arrow = 0,
    ArrowWait = 1,
    Wait = 2,
    Text = 3,
    Hand = 4,
    SizeHorizontal = 5,
    SizeVertical = 6,
    SizeTopLeftBottomRight = 7,
    SizeBottomLeftTopRight = 8,
    SizeAll = 9,
    Cross = 10,
    Help = 11,
    NotAllowed = 12,
};

--- Defines the source of a mounted path.
---
---@class obe.System.MountablePathType
obe.System.MountablePathType = {
    Path = 0,
    Package = 1,
    Project = 2,
};

--- action to take whenever two MountablePath with the same prefix are mounted
---
---@class obe.System.SamePrefixPolicy
obe.System.SamePrefixPolicy = {
    KeepBoth = 0,
    Skip = 1,
    Replace = 2,
};

--- 
---
---@class obe.System.PathType
obe.System.PathType = {
    All = 0,
    Directory = 1,
    File = 2,
};

--- 
---
---@class obe.System.WindowContext
obe.System.WindowContext = {
    GameWindow = 0,
    EditorWindow = 1,
};

--- 
---
---@class obe.System.StretchMode
obe.System.StretchMode = {
    None = 0,
    Center = 1,
    Stretch = 2,
    Fit = 3,
};
return obe.System;