---@meta

obe.Audio.Exceptions = {};
---@class obe.Audio.Exceptions.AudioFileNotFound : obe.Exception[obe.Audio.Exceptions.AudioFileNotFound]
obe.Audio.Exceptions._AudioFileNotFound = {};

--- obe.Audio.Exceptions.AudioFileNotFound constructor
---
---@param path string #
---@param mountedPaths string[] #
---@param info obe.DebugInfo #
---@return obe.Audio.Exceptions.AudioFileNotFound
function obe.Audio.Exceptions.AudioFileNotFound(path, mountedPaths, info) end



return obe.Audio.Exceptions;