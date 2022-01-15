---@meta

obe.Graphics = {};
---@class obe.Graphics.Color : obe.Types.Serializable
---@field r number #
---@field g number #
---@field b number #
---@field a number #
---@field AliceBlue obe.Graphics.Color #
---@field AntiqueWhite obe.Graphics.Color #
---@field Aqua obe.Graphics.Color #
---@field Aquamarine obe.Graphics.Color #
---@field Azure obe.Graphics.Color #
---@field Beige obe.Graphics.Color #
---@field Bisque obe.Graphics.Color #
---@field Black obe.Graphics.Color #
---@field BlanchedAlmond obe.Graphics.Color #
---@field Blue obe.Graphics.Color #
---@field BlueViolet obe.Graphics.Color #
---@field Brown obe.Graphics.Color #
---@field BurlyWood obe.Graphics.Color #
---@field CadetBlue obe.Graphics.Color #
---@field Chartreuse obe.Graphics.Color #
---@field Chocolate obe.Graphics.Color #
---@field Coral obe.Graphics.Color #
---@field CornflowerBlue obe.Graphics.Color #
---@field Cornsilk obe.Graphics.Color #
---@field Crimson obe.Graphics.Color #
---@field Cyan obe.Graphics.Color #
---@field DarkBlue obe.Graphics.Color #
---@field DarkCyan obe.Graphics.Color #
---@field DarkGoldenrod obe.Graphics.Color #
---@field DarkGray obe.Graphics.Color #
---@field DarkGreen obe.Graphics.Color #
---@field DarkKhaki obe.Graphics.Color #
---@field DarkMagenta obe.Graphics.Color #
---@field DarkOliveGreen obe.Graphics.Color #
---@field DarkOrange obe.Graphics.Color #
---@field DarkOrchid obe.Graphics.Color #
---@field DarkRed obe.Graphics.Color #
---@field DarkSalmon obe.Graphics.Color #
---@field DarkSeaGreen obe.Graphics.Color #
---@field DarkSlateBlue obe.Graphics.Color #
---@field DarkSlateGray obe.Graphics.Color #
---@field DarkTurquoise obe.Graphics.Color #
---@field DarkViolet obe.Graphics.Color #
---@field DeepPink obe.Graphics.Color #
---@field DeepSkyBlue obe.Graphics.Color #
---@field DimGray obe.Graphics.Color #
---@field DodgerBlue obe.Graphics.Color #
---@field FireBrick obe.Graphics.Color #
---@field FloralWhite obe.Graphics.Color #
---@field ForestGreen obe.Graphics.Color #
---@field Fuchsia obe.Graphics.Color #
---@field Gainsboro obe.Graphics.Color #
---@field GhostWhite obe.Graphics.Color #
---@field Gold obe.Graphics.Color #
---@field Goldenrod obe.Graphics.Color #
---@field Gray obe.Graphics.Color #
---@field Green obe.Graphics.Color #
---@field GreenYellow obe.Graphics.Color #
---@field HoneyDew obe.Graphics.Color #
---@field HotPink obe.Graphics.Color #
---@field IndianRed obe.Graphics.Color #
---@field Indigo obe.Graphics.Color #
---@field Ivory obe.Graphics.Color #
---@field Khaki obe.Graphics.Color #
---@field Lavender obe.Graphics.Color #
---@field LavenderBlush obe.Graphics.Color #
---@field LawnGreen obe.Graphics.Color #
---@field LemonChiffon obe.Graphics.Color #
---@field LightBlue obe.Graphics.Color #
---@field LightCoral obe.Graphics.Color #
---@field LightCyan obe.Graphics.Color #
---@field LightGoldenrodYellow obe.Graphics.Color #
---@field LightGray obe.Graphics.Color #
---@field LightGreen obe.Graphics.Color #
---@field LightPink obe.Graphics.Color #
---@field LightSalmon obe.Graphics.Color #
---@field LightSeaGreen obe.Graphics.Color #
---@field LightSkyBlue obe.Graphics.Color #
---@field LightSlateGray obe.Graphics.Color #
---@field LightSteelBlue obe.Graphics.Color #
---@field LightYellow obe.Graphics.Color #
---@field Lime obe.Graphics.Color #
---@field LimeGreen obe.Graphics.Color #
---@field Linen obe.Graphics.Color #
---@field Magenta obe.Graphics.Color #
---@field Maroon obe.Graphics.Color #
---@field MediumAquamarine obe.Graphics.Color #
---@field MediumBlue obe.Graphics.Color #
---@field MediumOrchid obe.Graphics.Color #
---@field MediumPurple obe.Graphics.Color #
---@field MediumSeaGreen obe.Graphics.Color #
---@field MediumSlateBlue obe.Graphics.Color #
---@field MediumSpringGreen obe.Graphics.Color #
---@field MediumTurquoise obe.Graphics.Color #
---@field MediumVioletRed obe.Graphics.Color #
---@field MidnightBlue obe.Graphics.Color #
---@field MintCream obe.Graphics.Color #
---@field MistyRose obe.Graphics.Color #
---@field Moccasin obe.Graphics.Color #
---@field NavajoWhite obe.Graphics.Color #
---@field Navy obe.Graphics.Color #
---@field OldLace obe.Graphics.Color #
---@field Olive obe.Graphics.Color #
---@field OliveDrab obe.Graphics.Color #
---@field Orange obe.Graphics.Color #
---@field OrangeRed obe.Graphics.Color #
---@field Orchid obe.Graphics.Color #
---@field PaleGoldenrod obe.Graphics.Color #
---@field PaleGreen obe.Graphics.Color #
---@field PaleTurquoise obe.Graphics.Color #
---@field PaleVioletRed obe.Graphics.Color #
---@field PapayaWhip obe.Graphics.Color #
---@field PeachPuff obe.Graphics.Color #
---@field Peru obe.Graphics.Color #
---@field Pink obe.Graphics.Color #
---@field Plum obe.Graphics.Color #
---@field PowderBlue obe.Graphics.Color #
---@field Purple obe.Graphics.Color #
---@field RebeccaPurple obe.Graphics.Color #
---@field Red obe.Graphics.Color #
---@field RosyBrown obe.Graphics.Color #
---@field RoyalBlue obe.Graphics.Color #
---@field SaddleBrown obe.Graphics.Color #
---@field Salmon obe.Graphics.Color #
---@field SandyBrown obe.Graphics.Color #
---@field SeaGreen obe.Graphics.Color #
---@field SeaShell obe.Graphics.Color #
---@field Sienna obe.Graphics.Color #
---@field Silver obe.Graphics.Color #
---@field SkyBlue obe.Graphics.Color #
---@field SlateBlue obe.Graphics.Color #
---@field SlateGray obe.Graphics.Color #
---@field Snow obe.Graphics.Color #
---@field SpringGreen obe.Graphics.Color #
---@field SteelBlue obe.Graphics.Color #
---@field Tan obe.Graphics.Color #
---@field Teal obe.Graphics.Color #
---@field Thistle obe.Graphics.Color #
---@field Tomato obe.Graphics.Color #
---@field Turquoise obe.Graphics.Color #
---@field Violet obe.Graphics.Color #
---@field Wheat obe.Graphics.Color #
---@field White obe.Graphics.Color #
---@field WhiteSmoke obe.Graphics.Color #
---@field Yellow obe.Graphics.Color #
---@field YellowGreen obe.Graphics.Color #
obe.Graphics._Color = {};

--- obe.Graphics.Color constructor
---
---@return obe.Graphics.Color
function obe.Graphics.Color() end

--- obe.Graphics.Color constructor
---
---@param r number #
---@param g number #
---@param b number #
---@param a? number #
---@return obe.Graphics.Color
function obe.Graphics.Color(r, g, b, a) end

--- obe.Graphics.Color constructor
---
---@param nameOrHex string #
---@return obe.Graphics.Color
function obe.Graphics.Color(nameOrHex) end

--- obe.Graphics.Color constructor
---
---@param color sf.Color #
---@return obe.Graphics.Color
function obe.Graphics.Color(color) end


--- Loads an object from a vili node.
---
---@param data vili.node #vili node containing the data of the object
function obe.Graphics._Color:load(data) end

---@param string string #
function obe.Graphics._Color:fromString(string) end

---@param name string #
---@param strict? boolean #
---@return boolean
function obe.Graphics._Color:fromName(name, strict) end

---@param hexCode string #
function obe.Graphics._Color:fromHex(hexCode) end

---@param r number #
---@param g number #
---@param b number #
---@param a? number #
function obe.Graphics._Color:fromRgb(r, g, b, a) end

---@param H number #
---@param S number #
---@param V number #
function obe.Graphics._Color:fromHsv(H, S, V) end

---@return number
function obe.Graphics._Color:toInteger() end

---@return string
function obe.Graphics._Color:toHex() end

---@return string?
function obe.Graphics._Color:toName() end

---@return obe.Graphics.Hsv
function obe.Graphics._Color:toHsv() end

---@return string
function obe.Graphics._Color:toString() end

---@param randomAlpha? boolean #
---@return obe.Graphics.Color
function obe.Graphics._Color:Random(randomAlpha) end


---@class obe.Graphics.Font
obe.Graphics._Font = {};

--- obe.Graphics.Font constructor
---
---@return obe.Graphics.Font
function obe.Graphics.Font() end

--- obe.Graphics.Font constructor
---
---@param font obe.Graphics.Font #
---@return obe.Graphics.Font
function obe.Graphics.Font(font) end

--- obe.Graphics.Font constructor
---
---@param font sf.Font #
---@return obe.Graphics.Font
function obe.Graphics.Font(font) end


---@param filename string #
---@return boolean
function obe.Graphics._Font:loadFromFile(filename) end


---@class obe.Graphics.PositionTransformer
obe.Graphics._PositionTransformer = {};

--- Default PositionTransformer constructor.
---
---@return obe.Graphics.PositionTransformer
function obe.Graphics.PositionTransformer() end

--- Non-Default PositionTransformer constructor.
---
---@param xTransformer string #Name of the Transformer the x Coordinate should use
---@param yTransformer string #Name of the Transformer the y Coordinate should use
---@return obe.Graphics.PositionTransformer
function obe.Graphics.PositionTransformer(xTransformer, yTransformer) end


--- Gets the CoordinateTransformer of x Coordinate.
---
---@return obe.Graphics.CoordinateTransformer
function obe.Graphics._PositionTransformer:getXTransformer() end

--- Gets the name of the CoordinateTransformer of x Coordinate.
---
---@return string
function obe.Graphics._PositionTransformer:getXTransformerName() end

--- Gets the CoordinateTransformer of y Coordinate.
---
---@return obe.Graphics.CoordinateTransformer
function obe.Graphics._PositionTransformer:getYTransformer() end

--- Gets the name of the CoordinateTransformer of y Coordinate.
---
---@return string
function obe.Graphics._PositionTransformer:getYTransformerName() end


---@class obe.Graphics.RenderTarget
obe.Graphics._RenderTarget = {};

--- obe.Graphics.RenderTarget constructor
---
---@param target sf.RenderTarget #
---@return obe.Graphics.RenderTarget
function obe.Graphics.RenderTarget(target) end

--- obe.Graphics.RenderTarget constructor
---
---@param window sf.RenderWindow #
---@return obe.Graphics.RenderTarget
function obe.Graphics.RenderTarget(window) end


---@return obe.Transform.UnitVector
function obe.Graphics._RenderTarget:getSize() end


---@class obe.Graphics.Renderable
obe.Graphics._Renderable = {};

--- obe.Graphics.Renderable constructor
---
---@return obe.Graphics.Renderable
function obe.Graphics.Renderable() end


--- Get the layer of the Renderable.
---
---@return number
function obe.Graphics._Renderable:getLayer() end

--- Get the Z-depth of the Renderable.
---
---@return number
function obe.Graphics._Renderable:getZDepth() end

--- Get the visibility of the Renderable.
---
---@return boolean
function obe.Graphics._Renderable:isVisible() end

--- Set the layer of the Renderable.
---
---@param layer number #Layer where to put the Renderable (Higher layer is behind lower ones)
function obe.Graphics._Renderable:setLayer(layer) end

--- Set the Z-Depth of the Renderable (SubLayers)
---
---@param zdepth number #z-depth of the Renderable (Higher z-depth is behind lower ones)
function obe.Graphics._Renderable:setZDepth(zdepth) end

--- Set the visibility of the Renderable.
---
---@param visible boolean #If visible is equal to true, the Renderable will be visible, if visible is equal to false, it won't be visible
function obe.Graphics._Renderable:setVisible(visible) end

function obe.Graphics._Renderable:show() end

function obe.Graphics._Renderable:hide() end

---@param surface obe.Graphics.RenderTarget #
---@param camera obe.Scene.Camera #
function obe.Graphics._Renderable:draw(surface, camera) end


---@class obe.Graphics.RichText : sf.Drawable, sf.Transformable
obe.Graphics._RichText = {};

--- obe.Graphics.RichText constructor
---
---@return obe.Graphics.RichText
function obe.Graphics.RichText() end

--- obe.Graphics.RichText constructor
---
---@param font obe.Graphics.Font #
---@return obe.Graphics.RichText
function obe.Graphics.RichText(font) end


function obe.Graphics._RichText:clear() end

---@param text obe.Graphics.Text #
---@return obe.Graphics.RichText
function obe.Graphics._RichText:append(text) end

---@return obe.Graphics.Font
function obe.Graphics._RichText:getFont() end

---@param font obe.Graphics.Font #
function obe.Graphics._RichText:setFont(font) end

---@return Line[]
function obe.Graphics._RichText:getLines() end

---@return number
function obe.Graphics._RichText:getCharacterSize() end

---@param size number #
function obe.Graphics._RichText:setCharacterSize(size) end

---@return sf.FloatRect
function obe.Graphics._RichText:getLocalBounds() end

---@return sf.FloatRect
function obe.Graphics._RichText:getGlobalBounds() end


---@class obe.Graphics.Shader : sf.Shader, obe.Types.Serializable
obe.Graphics._Shader = {};

--- obe.Graphics.Shader constructor
---
---@return obe.Graphics.Shader
function obe.Graphics.Shader() end

--- obe.Graphics.Shader constructor
---
---@param path string #
---@return obe.Graphics.Shader
function obe.Graphics.Shader(path) end


--- Dumps the content of the Shader to a Vili Node.
---
---@return vili.node
function obe.Graphics._Shader:dump() end

--- Loads the Shader from a Vili Node.
---
---@param data vili.node #Vili Node containing the data of the Shader
function obe.Graphics._Shader:load(data) end

---@param path string #
function obe.Graphics._Shader:loadShader(path) end


---@class obe.Graphics.Sprite : obe.Transform.UnitBasedObject, obe.Types.Selectable, obe.Transform.Rect, obe.Graphics.Renderable, obe.Component.Component[obe.Graphics.Sprite], obe.Engine.ResourceManagedObject
---@field ComponentType string #
obe.Graphics._Sprite = {};

--- Creates a new Sprite with the given Id.
---
---@param id string #A std::string containing the Id of the Sprite
---@return obe.Graphics.Sprite
function obe.Graphics.Sprite(id) end


--- Draws the handle used to scale the Sprite.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the handle
---@param camera obe.Scene.Camera #contains the offset for drawing the handle
function obe.Graphics._Sprite:drawHandle(surface, camera) end

--- Dumps the content of the Sprite to a ComplexNode.
---
---@return vili.node
function obe.Graphics._Sprite:dump() end

--- Get the blend color of the Sprite.
---
---@return obe.Graphics.Color
function obe.Graphics._Sprite:getColor() end

--- Get the HandlePoint of the Sprite at the given Position(x, y)
---
---@param cameraPosition obe.Transform.UnitVector #Position of the Scene Camera
---@param posX number #x Coordinate of the Position you try to pick the HandlePoint
---@param posY number #y Coordinate of the Position you try to pick the HandlePoint
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics._Sprite:getHandlePoint(cameraPosition, posX, posY) end

--- Get the Id of the parent.
---
---@return string
function obe.Graphics._Sprite:getParentId() end

--- Get the path of the Texture loaded by the Sprite.
---
---@return string
function obe.Graphics._Sprite:getPath() end

--- Gets the PositionTransformer used by the Sprite.
---
---@return obe.Graphics.PositionTransformer
function obe.Graphics._Sprite:getPositionTransformer() end

--- Get the Bounding Rect of the internal Sprite.
---
---@return obe.Transform.Rect
function obe.Graphics._Sprite:getRect() end

---@return obe.Graphics.Shader
function obe.Graphics._Sprite:getShader() end

--- Get the internal Sprite of the Sprite.
---
---@return sfe.ComplexSprite
function obe.Graphics._Sprite:getSprite() end

--- Get the height of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getSpriteHeight() end

--- Get the width of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getSpriteWidth() end

--- Get the x Coordinate of the scale factor of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getXScaleFactor() end

--- Get the y Coordinate of the scale factor of the Sprite.
---
---@return number
function obe.Graphics._Sprite:getYScaleFactor() end

---@return boolean
function obe.Graphics._Sprite:getAntiAliasing() end

---@return boolean
function obe.Graphics._Sprite:hasShader() end

--- Loads the Sprite from a ComplexNode.
---
---@param data vili.node #ComplexNode containing the data of the Sprite
function obe.Graphics._Sprite:load(data) end

--- The Sprite will load the Texture at the given path.
---
---@param path string #A std::string containing the path of the texture to load
function obe.Graphics._Sprite:loadTexture(path) end

--- Rotate the sprite.
---
---@param addRotate number #The angle to add to the Sprite (0 -> 360 where 0 / 360 is the top)
function obe.Graphics._Sprite:rotate(addRotate) end

--- Apply a blend color to the Sprite.
---
---@param color obe.Graphics.Color #A Color containing the color to blend (Color::White is default normal color)
function obe.Graphics._Sprite:setColor(color) end

--- Set a new parent id.
---
---@param parent string #The id of the parent to apply to the Sprite
function obe.Graphics._Sprite:setParentId(parent) end

--- Sets the new Position Transform of the Sprite.
---
---@param transformer obe.Graphics.PositionTransformer #New PositionTransformer of the Sprite
function obe.Graphics._Sprite:setPositionTransformer(transformer) end

--- Set the rotation of the sprite.
---
---@param rotate number #The new angle of the Sprite (0 -> 360 where 0 / 360 is the top)
function obe.Graphics._Sprite:setRotation(rotate) end

--- Set the rotation origin of the Sprite.
---
---@param x number #x Coordinate of the new rotation origin of the Sprite
---@param y number #y Coordinate of the new rotation origin of the Sprite
function obe.Graphics._Sprite:setRotationOrigin(x, y) end

--- Set the scaling origin of the Sprite.
---
---@param x number #x Coordinate of the new scaling origin of the Sprite
---@param y number #y Coordinate of the new scaling origin of the Sprite
function obe.Graphics._Sprite:setScalingOrigin(x, y) end

---@param shader obe.Graphics.Shader #
function obe.Graphics._Sprite:setShader(shader) end

--- Sets the Texture of the Sprite.
---
---@param texture obe.Graphics.Texture #Texture to set
function obe.Graphics._Sprite:setTexture(texture) end

---@param x number #
---@param y number #
---@param width number #
---@param height number #
function obe.Graphics._Sprite:setTextureRect(x, y, width, height) end

--- Set the translation origin of the Sprite.
---
---@param x number #x Coordinate of the new translation origin of the Sprite
---@param y number #y Coordinate of the new translation origin of the Sprite
function obe.Graphics._Sprite:setTranslationOrigin(x, y) end

---@param antiAliasing boolean #
function obe.Graphics._Sprite:setAntiAliasing(antiAliasing) end

--- Reset internal Sprite Rect using texture size.
---
function obe.Graphics._Sprite:useTextureSize() end

---@param surface obe.Graphics.RenderTarget #
---@param camera obe.Scene.Camera #
function obe.Graphics._Sprite:draw(surface, camera) end

---@param resources obe.Engine.ResourceManager #
function obe.Graphics._Sprite:attachResourceManager(resources) end

---@return string
function obe.Graphics._Sprite:type() end


---@class obe.Graphics.SpriteHandlePoint
---@field m_dp obe.Transform.UnitVector #
---@field radius number #The radius of a HandlePoint.
obe.Graphics._SpriteHandlePoint = {};

--- Creates a Scale HandlePoint.
---
---@param parent obe.Graphics.Sprite #Rect of the parent Sprite
---@param ref obe.Transform.Referential #Referential of the HandlePoint
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics.SpriteHandlePoint(parent, ref) end

--- Creates a Rotate HandlePoint.
---
---@param parent obe.Graphics.Sprite #Rect of the parent Sprite
---@return obe.Graphics.SpriteHandlePoint
function obe.Graphics.SpriteHandlePoint(parent) end


--- Get the rect of the parent Sprite.
---
---@return obe.Transform.Rect
function obe.Graphics._SpriteHandlePoint:getRect() end

--- Get the Referential of the HandlePoint.
---
---@return obe.Transform.Referential
function obe.Graphics._SpriteHandlePoint:getReferential() end

--- Gets the type of the SpriteHandlePoint (either Rotate or Scale)
---
---@return obe.Graphics.SpriteHandlePointType
function obe.Graphics._SpriteHandlePoint:getType() end

--- Move the HandlePoint to the given Position.
---
---@param position obe.Transform.UnitVector #Position where the HandlePoint should move to
---@param camera obe.Transform.UnitVector #Camera used to manipulate PositionTransformers
function obe.Graphics._SpriteHandlePoint:moveTo(position, camera) end


---@class obe.Graphics.SvgTexture
obe.Graphics._SvgTexture = {};

--- obe.Graphics.SvgTexture constructor
---
---@param filename string #
---@return obe.Graphics.SvgTexture
function obe.Graphics.SvgTexture(filename) end

--- obe.Graphics.SvgTexture constructor
---
---@param texture obe.Graphics.SvgTexture #
---@return obe.Graphics.SvgTexture
function obe.Graphics.SvgTexture(texture) end


---@return boolean
function obe.Graphics._SvgTexture:getAutoscaling() end

---@param autoscaling boolean #
function obe.Graphics._SvgTexture:setAutoscaling(autoscaling) end

---@param width number #
---@param height number #
function obe.Graphics._SvgTexture:setSizeHint(width, height) end

---@return boolean
function obe.Graphics._SvgTexture:success() end


---@class obe.Graphics.Text
---@field color obe.Graphics.Color #
---@field outline obe.Graphics.Color #
---@field thickness number #
---@field style sf.Text.Style #
---@field string std.wstring #
obe.Graphics._Text = {};

--- obe.Graphics.Text constructor
---
---@return obe.Graphics.Text
function obe.Graphics.Text() end

--- obe.Graphics.Text constructor
---
---@param string string #
---@return obe.Graphics.Text
function obe.Graphics.Text(string) end



---@class obe.Graphics.Texture
obe.Graphics._Texture = {};

--- obe.Graphics.Texture constructor
---
---@return obe.Graphics.Texture
function obe.Graphics.Texture() end

--- obe.Graphics.Texture constructor
---
---@param texture sf.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(texture) end

--- obe.Graphics.Texture constructor
---
---@param texture sf.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(texture) end

--- obe.Graphics.Texture constructor
---
---@param copy obe.Graphics.Texture #
---@return obe.Graphics.Texture
function obe.Graphics.Texture(copy) end


---@param width number #
---@param height number #
---@return boolean
function obe.Graphics._Texture:create(width, height) end

---@param image sf.Image #
---@return boolean
function obe.Graphics._Texture:loadFromImage(image) end

---@return obe.Transform.UnitVector
function obe.Graphics._Texture:getSize() end

---@param width number #
---@param height number #
function obe.Graphics._Texture:setSizeHint(width, height) end

---@return boolean
function obe.Graphics._Texture:getAutoscaling() end

---@param autoscaling boolean #
function obe.Graphics._Texture:setAutoscaling(autoscaling) end

---@param antiAliasing boolean #
function obe.Graphics._Texture:setAntiAliasing(antiAliasing) end

---@return boolean
function obe.Graphics._Texture:isAntiAliased() end

---@param repeated boolean #
function obe.Graphics._Texture:setRepeated(repeated) end

---@return boolean
function obe.Graphics._Texture:isRepeated() end

function obe.Graphics._Texture:reset() end

---@return number
function obe.Graphics._Texture:useCount() end

---@return boolean
function obe.Graphics._Texture:isVector() end

---@return boolean
function obe.Graphics._Texture:isBitmap() end

---@return obe.Graphics.Texture
function obe.Graphics._Texture:MakeSharedTexture() end


---@class obe.Graphics.Hsv
---@field H number #
---@field S number #
---@field V number #
obe.Graphics._Hsv = {};




---@alias obe.Graphics.CoordinateTransformer fun(position:number, camera:number, layer:number):number

---@alias obe.Graphics.TextureWrapper sf.Texture|sf.Texture|sf.Texture|obe.Graphics.SvgTexture
function obe.Graphics.InitPositionTransformer() end

function obe.Graphics.MakeNullTexture() end


---@type table<string, obe.Graphics.CoordinateTransformer>
obe.Graphics.Transformers = {};

---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Parallax = {};

---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Camera = {};

---@type obe.Graphics.CoordinateTransformer
obe.Graphics.Position = {};

--- 
---
---@class obe.Graphics.ColorType
obe.Graphics.ColorType = {
    Rgba = 0,
    Hsv = 1,
    Hex = 2,
    ColorName = 3,
};

--- Type of the handle point of a Sprite (either scale or rotate)
---
---@class obe.Graphics.SpriteHandlePointType
obe.Graphics.SpriteHandlePointType = {
    ScaleHandle = 0,
    RotateHandle = 1,
};
return obe.Graphics;