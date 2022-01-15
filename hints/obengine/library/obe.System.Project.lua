---@meta

obe.System.Project = {};
---@class obe.System.Project.Project
obe.System.Project._Project = {};

--- obe.System.Project.Project constructor
---
---@return obe.System.Project.Project
function obe.System.Project.Project() end


--- Dumps the content of the Project to a vili node.
---
---@return vili.node
function obe.System.Project._Project:dump() end

--- Loads a Project from a vili node.
---
---@param data vili.node #vili node containing the data of the Project
function obe.System.Project._Project:load(data) end

---@param path string #
function obe.System.Project._Project:loadFromFile(path) end

function obe.System.Project._Project:mount() end

function obe.System.Project._Project:unmount() end

---@return string
function obe.System.Project._Project:getId() end

---@return boolean
function obe.System.Project._Project:isStandalone() end


---@class obe.System.Project.ProjectURLs
---@field homepage string #
---@field issues string #
---@field readme string #
---@field documentation string #
---@field license string #
obe.System.Project._ProjectURLs = {};


--- Dumps the content of the Project URLs to a vili node.
---
---@return vili.node
function obe.System.Project._ProjectURLs:dump() end

--- Loads a Project URLs from a vili node.
---
---@param data vili.node #vili node containing the data of the Project URLs
function obe.System.Project._ProjectURLs:load(data) end


--- Get the Location of the Project identified by projectName.
---
---@param projectName string #Name of the Project you want to get the path.
---@return string
function obe.System.Project.GetProjectLocation(projectName) end

--- Get if the Project exists or not.
---
---@param projectName string #Name of the Project you want to check the existence.
---@return boolean
function obe.System.Project.ProjectExists(projectName) end

--- Load a new Project in the mounted paths.
---
---@param projectName string #Name of the Project to load.
---@param prefix string #Prefix that can be used to reference Project root path
---@param priority? number #Priority of the path that will be mounted.
---@return boolean
function obe.System.Project.Load(projectName, prefix, priority) end

---@return string[]
function obe.System.Project.ListProjects() end

return obe.System.Project;