---@meta

obe.Utils.Math = {};
--- Get a random integer between the given bound.
---
---@param min number #Min bound
---@param max number #Max bound
---@return number
function obe.Utils.Math.randint(min, max) end

--- Get a random double.
---
---@return number
function obe.Utils.Math.randfloat() end

--- Get the lowest value between the two given values.
---
---@param min1 N #First value to check
---@param min2 N #Second value to check
---@return N
function obe.Utils.Math.getMin(min1, min2) end

--- Get the highest value between the two given values.
---
---@param max1 N #First value to check
---@param max2 N #Second value to check
---@return N
function obe.Utils.Math.getMax(max1, max2) end

--- Check if the given value is between the lower bound and the upper bound.
---
---@param target N #Value to check
---@param lowerBound N1 #Lower bound
---@param upperBound N2 #Upper bound
---@return boolean
function obe.Utils.Math.isBetween(target, lowerBound, upperBound) end

--- Check if a double is an integer (3.0 for example is equal to 3)
---
---@param value number #Value to check
---@return boolean
function obe.Utils.Math.isDoubleInt(value) end

--- Get the sign of the given number.
---
---@param val T #Value to check the sign
---@return number
function obe.Utils.Math.sign(val) end

--- Converts a degrees angle to radians.
---
---@param value number #Angle in degrees
---@return number
function obe.Utils.Math.convertToRadian(value) end

--- Converts a radians angle to degrees.
---
---@param value number #Angle in radians
---@return number
function obe.Utils.Math.convertToDegree(value) end

--- Normalizes a value between start and end.
---
---@param value number #Value to normalize
---@param low number #Lower bound
---@param high number #Higher bound
---@return number
function obe.Utils.Math.normalize(value, low, high) end


---@type number
obe.Utils.Math.pi = {};
return obe.Utils.Math;