---@meta

obe.Graphics.Canvas = {};
---@class obe.Graphics.Canvas.Bezier : obe.Graphics.Canvas.CanvasElement
---@field points obe.Transform.UnitVector[] #
---@field colors obe.Graphics.Color[] #
---@field precision number #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Bezier = {};

--- obe.Graphics.Canvas.Bezier constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.Bezier
function obe.Graphics.Canvas.Bezier(parent, id) end


--- Draw the Bezier Curve.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Sprite to
function obe.Graphics.Canvas._Bezier:draw(target) end


---@class obe.Graphics.Canvas.Canvas
obe.Graphics.Canvas._Canvas = {};

--- Create a new Canvas.
---
---@param width number #Width of the Canvas (in pixels)
---@param height number #Height of the Canvas (in pixels)
---@return obe.Graphics.Canvas.Canvas
function obe.Graphics.Canvas.Canvas(width, height) end


--- Adds a new CanvasElement of type T to the Canvas.
---
---@param id string #Id of the new element to add to the canvas
---@return T
function obe.Graphics.Canvas._Canvas:add(id) end

--- Get a CanvasElement with the given id.
---
---@param id string #Id of the CanvasElement you want to retrieve
---@return obe.Graphics.Canvas.CanvasElement
function obe.Graphics.Canvas._Canvas:get(id) end

--- Render all the Canvas content to the Sprite target.
---
---@param target obe.Graphics.Sprite #
function obe.Graphics.Canvas._Canvas:render(target) end

--- Clear all CanvasElement from the Canvas.
---
function obe.Graphics.Canvas._Canvas:clear() end

--- Remove a CanvasElement from the Canvas.
---
---@param id string #Id of the CanvasElement to remove
function obe.Graphics.Canvas._Canvas:remove(id) end

--- Get the current Texture of the Canvas.
---
---@return obe.Graphics.Texture
function obe.Graphics.Canvas._Canvas:getTexture() end

--- Ask the Canvas to sort elements for the next rendering.
---
function obe.Graphics.Canvas._Canvas:requiresSort() end


---@class obe.Graphics.Canvas.CanvasElement : obe.Types.ProtectedIdentifiable
---@field parent obe.Graphics.Canvas.Canvas #
---@field layer number #
---@field visible boolean #
---@field type obe.Graphics.Canvas.CanvasElementType #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._CanvasElement = {};

--- Create a new CanvasElement.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new CanvasElement
---@return obe.Graphics.Canvas.CanvasElement
function obe.Graphics.Canvas.CanvasElement(parent, id) end


--- Abstract draw method.
---
---@param target obe.Graphics.RenderTarget #Target where to render the result
function obe.Graphics.Canvas._CanvasElement:draw(target) end

--- Change layer or object and will ask the Canvas to reorder elements automatically.
---
---@param layer number #
function obe.Graphics.Canvas._CanvasElement:setLayer(layer) end


---@class obe.Graphics.Canvas.CanvasPositionable : obe.Graphics.Canvas.CanvasElement
---@field position obe.Transform.UnitVector #
obe.Graphics.Canvas._CanvasPositionable = {};

--- obe.Graphics.Canvas.CanvasPositionable constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.CanvasPositionable
function obe.Graphics.Canvas.CanvasPositionable(parent, id) end



---@class obe.Graphics.Canvas.Circle : obe.Graphics.Canvas.CanvasPositionable
---@field shape obe.Graphics.Shapes.Circle #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Circle = {};

--- Create a new Circle.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Circle
---@return obe.Graphics.Canvas.Circle
function obe.Graphics.Canvas.Circle(parent, id) end


--- Draw the Circle.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Circle to
function obe.Graphics.Canvas._Circle:draw(target) end


---@class obe.Graphics.Canvas.Line : obe.Graphics.Canvas.CanvasElement
---@field p1 obe.Transform.UnitVector #
---@field p2 obe.Transform.UnitVector #
---@field thickness number #
---@field p1color obe.Graphics.Color #
---@field p2color obe.Graphics.Color #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Line = {};

--- Create a new Line.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Line
---@return obe.Graphics.Canvas.Line
function obe.Graphics.Canvas.Line(parent, id) end


--- Draw the Line.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Line to
function obe.Graphics.Canvas._Line:draw(target) end


---@class obe.Graphics.Canvas.Polygon : obe.Graphics.Canvas.CanvasPositionable
---@field shape obe.Graphics.Shapes.Polygon #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Polygon = {};

--- obe.Graphics.Canvas.Polygon constructor
---
---@param parent obe.Graphics.Canvas.Canvas #
---@param id string #
---@return obe.Graphics.Canvas.Polygon
function obe.Graphics.Canvas.Polygon(parent, id) end


--- Abstract draw method.
---
---@param target obe.Graphics.RenderTarget #Target where to render the result
function obe.Graphics.Canvas._Polygon:draw(target) end


---@class obe.Graphics.Canvas.Rectangle : obe.Graphics.Canvas.CanvasPositionable
---@field shape obe.Graphics.Shapes.Rectangle #
---@field size obe.Transform.UnitVector #
---@field Type obe.Graphics.Canvas.CanvasElementType #
obe.Graphics.Canvas._Rectangle = {};

--- Create a new Rectangle.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Rectangle
---@return obe.Graphics.Canvas.Rectangle
function obe.Graphics.Canvas.Rectangle(parent, id) end


--- Draw the Rectangle.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Rectangle to
function obe.Graphics.Canvas._Rectangle:draw(target) end


---@class obe.Graphics.Canvas.Text : obe.Graphics.Canvas.CanvasPositionable
---@field fontPath string #
---@field shape obe.Graphics.Shapes.Text #
---@field h_align obe.Graphics.Canvas.TextHorizontalAlign #
---@field v_align obe.Graphics.Canvas.TextVerticalAlign #
---@field texts obe.Graphics.Text[] #
---@field Type obe.Graphics.Canvas.CanvasElementType #
---@field text obe.Graphics.Text #Returns the current Text part.
obe.Graphics.Canvas._Text = {};

--- Create a new Text.
---
---@param parent obe.Graphics.Canvas.Canvas #Reference to the Canvas
---@param id string #Id of the new Text
---@return obe.Graphics.Canvas.Text
function obe.Graphics.Canvas.Text(parent, id) end


--- Draw the Text.
---
---@param target obe.Graphics.RenderTarget #Target where to draw the Text to
function obe.Graphics.Canvas._Text:draw(target) end

function obe.Graphics.Canvas._Text:refresh() end


---@param type obe.Graphics.Canvas.CanvasElementType #
---@return string
function obe.Graphics.Canvas.canvasElementTypeToString(type) end


--- Type of the CanvasElement, used for identification \lua_bind{Canvas.Type}.
---
---@class obe.Graphics.Canvas.CanvasElementType
obe.Graphics.Canvas.CanvasElementType = {
    CanvasElement = 0,
    Line = 1,
    Rectangle = 2,
    Text = 3,
    Circle = 4,
    Polygon = 5,
    Bezier = 6,
};

--- Horizontal alignment state of Text \lua_bind{Canvas.TextAlignment.Horizontal}.
---
---@class obe.Graphics.Canvas.TextHorizontalAlign
obe.Graphics.Canvas.TextHorizontalAlign = {
    Left = 0,
    Center = 1,
    Right = 2,
};

--- Vertical alignment of Text \lua_bind{Canvas.TextAlignment.Vertical}.
---
---@class obe.Graphics.Canvas.TextVerticalAlign
obe.Graphics.Canvas.TextVerticalAlign = {
    Top = 0,
    Center = 1,
    Bottom = 2,
};
return obe.Graphics.Canvas;