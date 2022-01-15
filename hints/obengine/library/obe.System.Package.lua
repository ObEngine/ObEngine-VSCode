---@meta

obe.System.Package = {};
--- Get the Location of the Package identified by packageName.
---
---@param packageName string #Name of the Package you want to get the path.
---@return string
function obe.System.Package.GetPackageLocation(packageName) end

--- Get if the Package exists or not.
---
---@param packageName string #Name of the Package you want to check the existence.
---@return boolean
function obe.System.Package.PackageExists(packageName) end

---@return string[]
function obe.System.Package.ListPackages() end

--- Installs a Package.
---
---@param packageName string #Is the name of the .opaque file located in Package/ folder (without the .opaque extension)
---@return boolean
function obe.System.Package.Install(packageName) end

--- Load a new Package in the mounted paths.
---
---@param packageName string #Name of the Package to load.
---@param prefix string #Prefix that can be used to reference Package root path
---@param priority? number #Priority of the path that will be mounted.
---@return boolean
function obe.System.Package.Load(packageName, prefix, priority) end

return obe.System.Package;