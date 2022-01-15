---@meta

obe.Graphics.Shapes = {};
---@class obe.Graphics.Shapes.Circle : obe.Graphics.Shapes.Shape[obe.Graphics.Shapes.Circle]
---@field shape sf.CircleShape #
obe.Graphics.Shapes._Circle = {};

--- obe.Graphics.Shapes.Circle constructor
---
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle() end

--- obe.Graphics.Shapes.Circle constructor
---
---@param shape sf.CircleShape #
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle(shape) end

--- obe.Graphics.Shapes.Circle constructor
---
---@param circle obe.Graphics.Shapes.Circle #
---@return obe.Graphics.Shapes.Circle
function obe.Graphics.Shapes.Circle(circle) end


---@param radius number #
function obe.Graphics.Shapes._Circle:setRadius(radius) end

---@return number
function obe.Graphics.Shapes._Circle:getRadius() end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Circle:draw(target, states) end


---@class obe.Graphics.Shapes.Polygon : obe.Graphics.Shapes.Shape[obe.Graphics.Shapes.Polygon]
---@field shape sf.ConvexShape #
obe.Graphics.Shapes._Polygon = {};

--- obe.Graphics.Shapes.Polygon constructor
---
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon() end

--- obe.Graphics.Shapes.Polygon constructor
---
---@param shape sf.ConvexShape #
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon(shape) end

--- obe.Graphics.Shapes.Polygon constructor
---
---@param polygon obe.Graphics.Shapes.Polygon #
---@return obe.Graphics.Shapes.Polygon
function obe.Graphics.Shapes.Polygon(polygon) end


---@param index number #
---@param position obe.Transform.UnitVector #
function obe.Graphics.Shapes._Polygon:setPointPosition(index, position) end

---@param index number #
---@return obe.Transform.UnitVector
function obe.Graphics.Shapes._Polygon:getPointPosition(index) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Polygon:draw(target, states) end


---@class obe.Graphics.Shapes.Rectangle : obe.Graphics.Shapes.Shape[obe.Graphics.Shapes.Rectangle]
---@field shape sf.RectangleShape #
obe.Graphics.Shapes._Rectangle = {};

--- obe.Graphics.Shapes.Rectangle constructor
---
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle() end

--- obe.Graphics.Shapes.Rectangle constructor
---
---@param shape sf.RectangleShape #
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle(shape) end

--- obe.Graphics.Shapes.Rectangle constructor
---
---@param rectangle obe.Graphics.Shapes.Rectangle #
---@return obe.Graphics.Shapes.Rectangle
function obe.Graphics.Shapes.Rectangle(rectangle) end


---@return obe.Transform.UnitVector
function obe.Graphics.Shapes._Rectangle:getSize() end

---@param size obe.Transform.UnitVector #
function obe.Graphics.Shapes._Rectangle:setSize(size) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Rectangle:draw(target, states) end


---@class obe.Graphics.Shapes.Text : obe.Graphics.Shapes.BaseShape[obe.Graphics.Shapes.Text]
---@field shape obe.Graphics.RichText #
obe.Graphics.Shapes._Text = {};

--- obe.Graphics.Shapes.Text constructor
---
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text() end

--- obe.Graphics.Shapes.Text constructor
---
---@param shape obe.Graphics.RichText #
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text(shape) end

--- obe.Graphics.Shapes.Text constructor
---
---@param text obe.Graphics.Shapes.Text #
---@return obe.Graphics.Shapes.Text
function obe.Graphics.Shapes.Text(text) end


function obe.Graphics.Shapes._Text:clear() end

---@param text obe.Graphics.Text #
function obe.Graphics.Shapes._Text:append(text) end

---@return obe.Graphics.Font
function obe.Graphics.Shapes._Text:getFont() end

---@param font obe.Graphics.Font #
function obe.Graphics.Shapes._Text:setFont(font) end

---@return number
function obe.Graphics.Shapes._Text:getCharacterSize() end

---@param size number #
function obe.Graphics.Shapes._Text:setCharacterSize(size) end

---@param target sf.RenderTarget #
---@param states sf.RenderStates #
function obe.Graphics.Shapes._Text:draw(target, states) end


return obe.Graphics.Shapes;