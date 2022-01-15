---@meta

obe.Transform = {};
---@class obe.Transform.Matrix2D
obe.Transform._Matrix2D = {};

--- obe.Transform.Matrix2D constructor
---
---@param elements number[] #
---@return obe.Transform.Matrix2D
function obe.Transform.Matrix2D(elements) end


---@param vector obe.Transform.UnitVector #
---@return obe.Transform.UnitVector
function obe.Transform._Matrix2D:product(vector) end


---@class obe.Transform.Movable
obe.Transform._Movable = {};


--- Set the position of the Movable using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the Movable
function obe.Transform._Movable:setPosition(position) end

--- Moves the Movable (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Transform._Movable:move(position) end

--- Get the Position of the Movable.
---
---@return obe.Transform.UnitVector
function obe.Transform._Movable:getPosition() end


---@class obe.Transform.Polygon : obe.Transform.UnitBasedObject, obe.Transform.Movable
---@field DefaultTolerance number #
obe.Transform._Polygon = {};

--- obe.Transform.Polygon constructor
---
---@return obe.Transform.Polygon
function obe.Transform.Polygon() end

--- obe.Transform.Polygon constructor
---
---@param polygon obe.Transform.Polygon #
---@return obe.Transform.Polygon
function obe.Transform.Polygon(polygon) end


--- Adds a new Point to the Polygon at Position (x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position where to add the new Point
---@param pointIndex? number #Index where to insert the new Point, Use pointIndex = -1 <DefaultArg> to insert at the end (between last and first Point)
function obe.Transform._Polygon:addPoint(position, pointIndex) end

--- Finds the closest Line from the given Position.
---
---@param position obe.Transform.UnitVector #Position used to get the closest Line
---@return obe.Transform.PolygonSegment
function obe.Transform._Polygon:findClosestSegment(position) end

--- Find the closest Point from the given Position(x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position used to get the closest Point
---@param neighbor? boolean #Get the closest neighbor of the closest Point instead of the Point
---@param excludedPoints? obe.Transform.point_index_t[] #A std::vector containing points you want to exclude from the calculus (Not used in neighbor check step)
---@return obe.Transform.PolygonPoint
function obe.Transform._Polygon:findClosestPoint(position, neighbor, excludedPoints) end

--- Get all the Points of the Polygon.
---
---@return obe.Transform.PolygonPath
function obe.Transform._Polygon:getAllPoints() end

--- Get the position of the Master Point (centroid) of the Polygon.
---
---@return obe.Transform.UnitVector
function obe.Transform._Polygon:getCentroid() end

--- Get the number of points in the Polygon.
---
---@return number
function obe.Transform._Polygon:getPointsAmount() end

--- Get the Position of the first point (index 0) of the Polygon.
---
---@return obe.Transform.UnitVector
function obe.Transform._Polygon:getPosition() end

--- Gets the current angle of the PolygonalCollider.
---
---@return number
function obe.Transform._Polygon:getRotation() end

--- Gets the segment of the Polygon at index segment.
---
---@param segment obe.Transform.point_index_t #Index of the Segment to get
---@return obe.Transform.PolygonSegment
function obe.Transform._Polygon:getSegment(segment) end

--- Get if the Position (x, y) is on one of the side of the Polygon.
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance? number #Amount of SceneUnits allowed around the position
---@return obe.Transform.PolygonSegment?
function obe.Transform._Polygon:getSegmentContainingPoint(position, tolerance) end

--- Check if the MasterPoint of the Polygon is on Position (x - tolerance <= x <= x + tolerance, y - tolerance <= tolerance <= y + tolerance)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance obe.Transform.UnitVector #Position tolerance, bigger number means less precise
---@return boolean
function obe.Transform._Polygon:isCentroidAroundPosition(position, tolerance) end

--- Check if a point of the Polygon is on Position (x - tolerance <= x <= x + tolerance, y - tolerance <= tolerance <= y + tolerance)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position to test
---@param tolerance obe.Transform.UnitVector #Position tolerance, bigger number means less precise
---@return obe.Transform.PolygonPoint?
function obe.Transform._Polygon:getPointAroundPosition(position, tolerance) end

--- Moves the Polygon (relative to the current position)
---
---@param position obe.Transform.UnitVector #UnitVector containing the offset to move the Polygon
function obe.Transform._Polygon:move(position) end

--- Adds an angle to the current angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to add to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Transform._Polygon:rotate(angle, origin) end

--- Sets the new position of the Polygon (using the point at index 0)
---
---@param position obe.Transform.UnitVector #UnitVector containing the new Position of the Polygon
function obe.Transform._Polygon:setPosition(position) end

--- Sets the angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to set to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Transform._Polygon:setRotation(angle, origin) end

---@param position obe.Transform.UnitVector #
function obe.Transform._Polygon:setPositionFromCentroid(position) end

---@return obe.Transform.Rect
function obe.Transform._Polygon:getBoundingBox() end


---@class obe.Transform.PolygonPoint : obe.Transform.UnitVector
---@field index obe.Transform.point_index_t #
obe.Transform._PolygonPoint = {};

--- obe.Transform.PolygonPoint constructor
---
---@param parent obe.Transform.Polygon #
---@param index obe.Transform.point_index_t #
---@return obe.Transform.PolygonPoint
function obe.Transform.PolygonPoint(parent, index) end

--- obe.Transform.PolygonPoint constructor
---
---@param parent obe.Transform.Polygon #
---@param index obe.Transform.point_index_t #
---@param position obe.Transform.UnitVector #
---@return obe.Transform.PolygonPoint
function obe.Transform.PolygonPoint(parent, index, position) end


function obe.Transform._PolygonPoint:remove() end

---@param position obe.Transform.UnitVector #
---@return number
function obe.Transform._PolygonPoint:distance(position) end

---@param from obe.Transform.PolygonPoint.RelativePositionFrom #
---@return obe.Transform.UnitVector
function obe.Transform._PolygonPoint:getRelativePosition(from) end

---@param from obe.Transform.PolygonPoint.RelativePositionFrom #
---@param position obe.Transform.UnitVector #
function obe.Transform._PolygonPoint:setRelativePosition(from, position) end

---@param position obe.Transform.UnitVector #
function obe.Transform._PolygonPoint:move(position) end


---@class obe.Transform.PolygonSegment
---@field first obe.Transform.PolygonPoint #
---@field second obe.Transform.PolygonPoint #
obe.Transform._PolygonSegment = {};

--- obe.Transform.PolygonSegment constructor
---
---@param first obe.Transform.PolygonPoint #
---@param second obe.Transform.PolygonPoint #
---@return obe.Transform.PolygonSegment
function obe.Transform.PolygonSegment(first, second) end


---@return number
function obe.Transform._PolygonSegment:getAngle() end

---@return number
function obe.Transform._PolygonSegment:getLength() end


---@class obe.Transform.Rect : obe.Transform.Movable
---@field x number #
---@field y number #
---@field width number #
---@field height number #
obe.Transform._Rect = {};

--- obe.Transform.Rect constructor
---
---@return obe.Transform.Rect
function obe.Transform.Rect() end

--- obe.Transform.Rect constructor
---
---@param position obe.Transform.UnitVector #
---@param size obe.Transform.UnitVector #
---@return obe.Transform.Rect
function obe.Transform.Rect(position, size) end


--- Transform the UnitVector passed by reference using the given Referential.
---
---@param vec obe.Transform.UnitVector #The UnitVector you want to transform
---@param ref obe.Transform.Referential #The chosen Rect::Referential
---@param type obe.Transform.ReferentialConversionType #The way you want to transform your UnitVector From : Referential::TopLeft to ref To : ref to Referential::TopLeft
function obe.Transform._Rect:transformRef(vec, ref, type) end

--- Moves the Rectangle (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Transform._Rect:move(position) end

--- Set the Position of a specific Referential of the Rect (The opposite Point won't move)
---
---@param position obe.Transform.UnitVector #Position to affect to the specific Referential
---@param ref? obe.Transform.Referential #Referential you want to move
function obe.Transform._Rect:setPointPosition(position, ref) end

--- Move a specific Referential of the Rect (The opposite Point won't move)
---
---@param position obe.Transform.UnitVector #Position to add to the specific Referential
---@param ref? obe.Transform.Referential #Referential you want to move
function obe.Transform._Rect:movePoint(position, ref) end

--- Set the size of the Rect.
---
---@param size obe.Transform.UnitVector #New size of the Rect
---@param ref? obe.Transform.Referential #Referential used to resize the Rect (Referential that won't move)
function obe.Transform._Rect:setSize(size, ref) end

--- Scales the Rect (Relative to the current size)
---
---@param size obe.Transform.UnitVector #Size to multiply to the current size
---@param ref? obe.Transform.Referential #Referential used to scale the Rect (Referential that won't move)
function obe.Transform._Rect:scale(size, ref) end

--- Get the Size of the Rect.
---
---@return obe.Transform.UnitVector
function obe.Transform._Rect:getSize() end

--- Get the Scale Factor of the Rect.
---
---@return obe.Transform.UnitVector
function obe.Transform._Rect:getScaleFactor() end

---@return number
function obe.Transform._Rect:getRotation() end

---@param angle number #
---@param origin obe.Transform.UnitVector #
function obe.Transform._Rect:setRotation(angle, origin) end

---@param angle number #
---@param origin obe.Transform.UnitVector #
function obe.Transform._Rect:rotate(angle, origin) end

--- Draws the Rect for debug purposes <REMOVE>
---
---@param surface obe.Graphics.RenderTarget #
---@param x number #
---@param y number #
function obe.Transform._Rect:draw(surface, x, y) end

--- Checks if the Rect intersects a specified Rect.
---
---@param rect obe.Transform.Rect #
---@return boolean
function obe.Transform._Rect:intersects(rect) end

---@param rect obe.Transform.Rect #
---@return obe.Transform.Rect?
function obe.Transform._Rect:intersection(rect) end


---@class obe.Transform.Referential
---@field TopLeft obe.Transform.Referential #Referential TopLeft.
---@field Top obe.Transform.Referential #Referential Top.
---@field TopRight obe.Transform.Referential #Referential TopRight.
---@field Left obe.Transform.Referential #Referential Left.
---@field Center obe.Transform.Referential #Referential Center.
---@field Right obe.Transform.Referential #Referential Right.
---@field BottomLeft obe.Transform.Referential #Referential BottomLeft.
---@field Bottom obe.Transform.Referential #Referential Bottom.
---@field BottomRight obe.Transform.Referential #Referential BottomRight.
---@field Referentials obe.Transform.Referential[] #
obe.Transform._Referential = {};

--- obe.Transform.Referential constructor
---
---@return obe.Transform.Referential
function obe.Transform.Referential() end

--- obe.Transform.Referential constructor
---
---@param refX number #
---@param refY number #
---@return obe.Transform.Referential
function obe.Transform.Referential(refX, refY) end


--- Get the opposite Referential in a Rect.
---
---@param axis? obe.Transform.FlipAxis #
---@return obe.Transform.Referential
function obe.Transform._Referential:flip(axis) end

--- Get if the Referential is on the left side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnLeftSide() end

--- Get if the Referential is on the right side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnRightSide() end

--- Get if the Referential is on the top side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnTopSide() end

--- Get if the Referential is on the bottom side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnBottomSide() end

--- Get if the Referential is on a corner of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnCorner() end

--- Get if the Referential is on a side of a normalized Rect.
---
---@return boolean
function obe.Transform._Referential:isOnSide() end

--- Get if the Referential is one of the 9 known referentials (TopLeft, Top, TopRight, Left, Center, Right, BottomLeft, Bottom, BottomRight)
---
---@return boolean
function obe.Transform._Referential:isKnown() end

--- Get the normalized position of a Referential in a Rect (-1 : Left / Top, 0 = Center, 1 = Right / Bottom)
---
---@return obe.Transform.UnitVector
function obe.Transform._Referential:getOffset() end

--- Get the name of a Referential in std::string form.
---
---@param format? string #Format (fmt) of the string returned
---@return string
function obe.Transform._Referential:toString(format) end

--- Gets a Referential based on its name.
---
---@param ref string #Name of the Referential
---@return obe.Transform.Referential
function obe.Transform._Referential:FromString(ref) end


---@class obe.Transform.UnitBasedObject
obe.Transform._UnitBasedObject = {};


--- Set the unit the Object should work with.
---
---@param unit obe.Transform.Units #Unit you want the Object to work with
function obe.Transform._UnitBasedObject:setWorkingUnit(unit) end

--- Get the unit the Object works with.
---
---@return obe.Transform.Units
function obe.Transform._UnitBasedObject:getWorkingUnit() end


---@class obe.Transform.UnitVector
---@field x number #x Coordinate of the UnitVector (related to Unit)
---@field y number #y Coordinate of the UnitVector (related to Unit)
---@field unit obe.Transform.Units #Unit of the UnitVector.
---@field View obe.Transform.ViewStruct #Struct used for UnitVector conversions, do not modify !
---@field Screen obe.Transform.ScreenStruct #Struct used for UnitVector conversions, do not modify !
obe.Transform._UnitVector = {};

--- Constructor of UnitVector.
---
---@param unit? obe.Transform.Units #Unit of the UnitVector
---@return obe.Transform.UnitVector
function obe.Transform.UnitVector(unit) end

--- Constructor (with x, y) of UnitVector.
---
---@param x number #x Coordinate of the UnitVector
---@param y number #y Coordinate of the UnitVector
---@param unit? obe.Transform.Units #Unit of the UnitVector
---@return obe.Transform.UnitVector
function obe.Transform.UnitVector(x, y, unit) end


--- Return an UnitVector with the converted values (x, y) to the Unit you want.
---
---@param pUnit obe.Transform.Units #An enum value from Transform::Units
---@return obe.Transform.UnitVector
function obe.Transform._UnitVector:to(pUnit) end

--- Unpacks the UnitVector to a tuple (can be used with structured bindings)
---
---@return table<number, number>
function obe.Transform._UnitVector:unpack() end

---@param angle number #
---@param zero? obe.Transform.UnitVector #
---@return obe.Transform.UnitVector
function obe.Transform._UnitVector:rotate(angle, zero) end

---@param vec obe.Transform.UnitVector #
---@return number
function obe.Transform._UnitVector:distance(vec) end

--- Return the length of the UnitVector.
---
---@return number
function obe.Transform._UnitVector:magnitude() end


---@class obe.Transform.ScreenStruct
---@field w number #
---@field h number #
obe.Transform._ScreenStruct = {};



---@class obe.Transform.ViewStruct
---@field w number #
---@field h number #
---@field x number #
---@field y number #
obe.Transform._ViewStruct = {};




---@alias obe.Transform.point_index_t number

---@alias obe.Transform.PolygonPath obe.Transform.PolygonPoint[]
--- Converts a std::string to an Unit.
---
---@param unit string #Unit in string form
---@return obe.Transform.Units
function obe.Transform.stringToUnits(unit) end

--- Converts an Unit to a std::string.
---
---@param unit obe.Transform.Units #The Units enum value you want to convert into a string
---@return string
function obe.Transform.unitsToString(unit) end


--- Conversion Type for Referential Usage.
---
---@class obe.Transform.ReferentialConversionType
obe.Transform.ReferentialConversionType = {
    From = 0,
    To = 1,
};

--- Enum which contains value to indicate which kind of flip you want to perform on a Referential.
---
---@class obe.Transform.FlipAxis
obe.Transform.FlipAxis = {
    Horizontal = 0,
    Vertical = 1,
    Both = 2,
};

--- Different Units used to work with elements position / size in the Scene.
---
---@class obe.Transform.Units
obe.Transform.Units = {
    ViewPercentage = 0,
    ViewPixels = 1,
    ViewUnits = 2,
    ScenePixels = 3,
    SceneUnits = 4,
};
return obe.Transform;