---@meta

obe.System.Exceptions = {};
---@class obe.System.Exceptions.InvalidMountFile : obe.Exception[obe.System.Exceptions.InvalidMountFile]
obe.System.Exceptions._InvalidMountFile = {};

--- obe.System.Exceptions.InvalidMountFile constructor
---
---@param mountFilePath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidMountFile
function obe.System.Exceptions.InvalidMountFile(mountFilePath, info) end



---@class obe.System.Exceptions.InvalidMouseButtonEnumValue : obe.Exception[obe.System.Exceptions.InvalidMouseButtonEnumValue]
obe.System.Exceptions._InvalidMouseButtonEnumValue = {};

--- obe.System.Exceptions.InvalidMouseButtonEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidMouseButtonEnumValue
function obe.System.Exceptions.InvalidMouseButtonEnumValue(enumValue, info) end



---@class obe.System.Exceptions.InvalidProjectFile : obe.Exception[obe.System.Exceptions.InvalidProjectFile]
obe.System.Exceptions._InvalidProjectFile = {};

--- obe.System.Exceptions.InvalidProjectFile constructor
---
---@param projectFilePath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.InvalidProjectFile
function obe.System.Exceptions.InvalidProjectFile(projectFilePath, info) end



---@class obe.System.Exceptions.MissingDefaultMountPoint : obe.Exception[obe.System.Exceptions.MissingDefaultMountPoint]
obe.System.Exceptions._MissingDefaultMountPoint = {};

--- obe.System.Exceptions.MissingDefaultMountPoint constructor
---
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MissingDefaultMountPoint
function obe.System.Exceptions.MissingDefaultMountPoint(info) end



---@class obe.System.Exceptions.MountFileMissing : obe.Exception[obe.System.Exceptions.MountFileMissing]
obe.System.Exceptions._MountFileMissing = {};

--- obe.System.Exceptions.MountFileMissing constructor
---
---@param currentPath string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MountFileMissing
function obe.System.Exceptions.MountFileMissing(currentPath, info) end



---@class obe.System.Exceptions.MountablePathIndexOverflow : obe.Exception[obe.System.Exceptions.MountablePathIndexOverflow]
obe.System.Exceptions._MountablePathIndexOverflow = {};

--- obe.System.Exceptions.MountablePathIndexOverflow constructor
---
---@param index number #
---@param maximum number #
---@param mounts string[] #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.MountablePathIndexOverflow
function obe.System.Exceptions.MountablePathIndexOverflow(index, maximum, mounts, info) end



---@class obe.System.Exceptions.PackageAlreadyInstalled : obe.Exception[obe.System.Exceptions.PackageAlreadyInstalled]
obe.System.Exceptions._PackageAlreadyInstalled = {};

--- obe.System.Exceptions.PackageAlreadyInstalled constructor
---
---@param package string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PackageAlreadyInstalled
function obe.System.Exceptions.PackageAlreadyInstalled(package, info) end



---@class obe.System.Exceptions.PackageFileNotFound : obe.Exception[obe.System.Exceptions.PackageFileNotFound]
obe.System.Exceptions._PackageFileNotFound = {};

--- obe.System.Exceptions.PackageFileNotFound constructor
---
---@param path string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PackageFileNotFound
function obe.System.Exceptions.PackageFileNotFound(path, info) end



---@class obe.System.Exceptions.PathError : obe.Exception[obe.System.Exceptions.PathError]
obe.System.Exceptions._PathError = {};

--- obe.System.Exceptions.PathError constructor
---
---@param prefix string #
---@param path string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.PathError
function obe.System.Exceptions.PathError(prefix, path, info) end



---@class obe.System.Exceptions.ResourceNotFound : obe.Exception[obe.System.Exceptions.ResourceNotFound]
obe.System.Exceptions._ResourceNotFound = {};

--- obe.System.Exceptions.ResourceNotFound constructor
---
---@param path string #
---@param pathType string #
---@param mounts string[] #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.ResourceNotFound
function obe.System.Exceptions.ResourceNotFound(path, pathType, mounts, info) end



---@class obe.System.Exceptions.UnknownPackage : obe.Exception[obe.System.Exceptions.UnknownPackage]
obe.System.Exceptions._UnknownPackage = {};

--- obe.System.Exceptions.UnknownPackage constructor
---
---@param package string #
---@param allPackages string[] #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownPackage
function obe.System.Exceptions.UnknownPackage(package, allPackages, info) end



---@class obe.System.Exceptions.UnknownPathPrefix : obe.Exception[obe.System.Exceptions.UnknownPathPrefix]
obe.System.Exceptions._UnknownPathPrefix = {};

--- obe.System.Exceptions.UnknownPathPrefix constructor
---
---@param prefix string #
---@param allPrefixes string[] #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownPathPrefix
function obe.System.Exceptions.UnknownPathPrefix(prefix, allPrefixes, info) end



---@class obe.System.Exceptions.UnknownProject : obe.Exception[obe.System.Exceptions.UnknownProject]
obe.System.Exceptions._UnknownProject = {};

--- obe.System.Exceptions.UnknownProject constructor
---
---@param project string #
---@param allProjects string[] #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownProject
function obe.System.Exceptions.UnknownProject(project, allProjects, info) end



---@class obe.System.Exceptions.UnknownStretchMode : obe.Exception[obe.System.Exceptions.UnknownStretchMode]
obe.System.Exceptions._UnknownStretchMode = {};

--- obe.System.Exceptions.UnknownStretchMode constructor
---
---@param stretchMode string #
---@param info obe.DebugInfo #
---@return obe.System.Exceptions.UnknownStretchMode
function obe.System.Exceptions.UnknownStretchMode(stretchMode, info) end



return obe.System.Exceptions;