---@meta

obe.Graphics.Utils = {};
---@class obe.Graphics.Utils.DrawPolygonOptions
---@field lines boolean #
---@field points boolean #
---@field radius number #
---@field lineColor obe.Graphics.Color #
---@field pointColor obe.Graphics.Color #
---@field specificLineColor table<number, obe.Graphics.Color> #
---@field specificPointColor table<number, obe.Graphics.Color> #
obe.Graphics.Utils._DrawPolygonOptions = {};



--- Draws a Point.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the point
---@param x number #x Coordinate of the position of the Point
---@param y number #y Coordinate of the position of the Point
---@param radius number #Radius of the Point to draw
---@param color obe.Graphics.Color #Color of the new Point
function obe.Graphics.Utils.drawPoint(surface, x, y, radius, color) end

--- Draws a Line.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the line
---@param x1 number #x Coordinate of the first point of the line
---@param y1 number #y Coordinate of the first point of the line
---@param x2 number #x Coordinate of the second point of the line
---@param y2 number #y Coordinate of the second point of the line
---@param thickness number #Thickness of the line you want to draw (2 = Minimal visible size)
---@param color obe.Graphics.Color #Color of the line you want to draw
function obe.Graphics.Utils.drawLine(surface, x1, y1, x2, y2, thickness, color) end

--- Draws a Polygon.
---
---@param surface obe.Graphics.RenderTarget #RenderSurface where to render the polygon
---@param points obe.Transform.UnitVector[] #List of all the Polygon points positions
---@param options obe.Graphics.Utils.DrawPolygonOptions #Drawing options : <lines> bool : Are the lines of the Polygon visible ? (true = visible, false = not visible) <points> bool : Are the points of the Polygon visible ? (true = visible, false = not visible) <radius> unsigned int : The radius of the points of the Polygon. <line_color> Color : Default color of the lines of the Polygon. <line_color_x> Color : Color of a specific line of the Polygon where x is the index of the line <point_color> Color : Default color of the points of the Polygon <point_color_x> Color : Color of a specific point of the Polygon where x is the index of the point
function obe.Graphics.Utils.drawPolygon(surface, points, options) end

return obe.Graphics.Utils;