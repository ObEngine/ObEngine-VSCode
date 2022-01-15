---@meta

obe.Collision = {};
---@class obe.Collision.CollisionData
---@field colliders obe.Collision.PolygonalCollider[] #Colliders the collider touched during the collision (empty if no collision occurs)
---@field offset obe.Transform.UnitVector #Maximum distance that can be traveled before collision.
obe.Collision._CollisionData = {};



---@class obe.Collision.InnerTest
obe.Collision._InnerTest = {};


---@return obe.Collision.InnerTest.CoolChild
function obe.Collision._InnerTest:build() end


---@class obe.Collision.PolygonalCollider : obe.Transform.Polygon, obe.Types.Selectable, obe.Component.Component[obe.Collision.PolygonalCollider]
---@field ComponentType string #
obe.Collision._PolygonalCollider = {};

--- Constructs a PolygonalCollider.
---
---@param id string #Id of the PolygonalCollider (Used to retrieve it for example)
---@return obe.Collision.PolygonalCollider
function obe.Collision.PolygonalCollider(id) end

--- obe.Collision.PolygonalCollider constructor
---
---@param collider obe.Collision.PolygonalCollider #
---@return obe.Collision.PolygonalCollider
function obe.Collision.PolygonalCollider(collider) end


--- Adds a Tag to the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List where you want to add the Tag (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to add
function obe.Collision._PolygonalCollider:addTag(tagType, tag) end

--- Clears Tags of the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List you want to clear (Tag / Accepted /Rejected)
function obe.Collision._PolygonalCollider:clearTags(tagType) end

--- Check if the Collider contains one of the Tag in parameter.
---
---@param tagType obe.Collision.ColliderTagType #List from where you want to check the Tags existence (Tag / Accepted / Rejected)
---@param tags string[] #List of Tags you want to check the existence
---@return boolean
function obe.Collision._PolygonalCollider:doesHaveAnyTag(tagType, tags) end

--- Checks if the Collider contains a Tag.
---
---@param tagType obe.Collision.ColliderTagType #List from where you want to check the Tag existence (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to check the existence
---@return boolean
function obe.Collision._PolygonalCollider:doesHaveTag(tagType, tag) end

--- Dumps the content of the PolygonalCollider to a ComplexNode.
---
---@return vili.node
function obe.Collision._PolygonalCollider:dump() end

--- Gets all the Tags from one of the Lists.
---
---@param tagType obe.Collision.ColliderTagType #List where you want to get all the Tags from (Tag / Accepted / Rejected)
---@return string[]
function obe.Collision._PolygonalCollider:getAllTags(tagType) end

--- Get the Id of the parent of the Collider (When used in a GameObject)
---
---@return string
function obe.Collision._PolygonalCollider:getParentId() end

--- Loads the PolygonalCollider from a ComplexNode.
---
---@param data vili.node #ComplexNode containing the data of the PolygonalCollider
function obe.Collision._PolygonalCollider:load(data) end

--- Removes a Tag of the Collider.
---
---@param tagType obe.Collision.ColliderTagType #List you want to remove a Collider from (Tag / Accepted / Rejected)
---@param tag string #Name of the Tag you want to remove
function obe.Collision._PolygonalCollider:removeTag(tagType, tag) end

--- Set the Id of the parent of the Collider (When used in a GameObject)
---
---@param parent string #A std::string containing the Id of the parent of the Collider
function obe.Collision._PolygonalCollider:setParentId(parent) end

---@return string
function obe.Collision._PolygonalCollider:type() end

---@return obe.Transform.Rect
function obe.Collision._PolygonalCollider:getBoundingBox() end

--- Adds a new Point to the Polygon at Position (x, y)
---
---@param position obe.Transform.UnitVector #Coordinate of the Position where to add the new Point
---@param pointIndex? number #Index where to insert the new Point, Use pointIndex = -1 <DefaultArg> to insert at the end (between last and first Point)
function obe.Collision._PolygonalCollider:addPoint(position, pointIndex) end

--- Moves the Movable (Adds the given position to the current one)
---
---@param position obe.Transform.UnitVector #Position to add to the current Position
function obe.Collision._PolygonalCollider:move(position) end

--- Adds an angle to the current angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to add to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Collision._PolygonalCollider:rotate(angle, origin) end

--- Set the position of the Movable using an UnitVector.
---
---@param position obe.Transform.UnitVector #Position to affect to the Movable
function obe.Collision._PolygonalCollider:setPosition(position) end

--- Sets the angle of the PolygonalCollider (will rotate all points around the given origin)
---
---@param angle number #Angle to set to the PolygonalCollider
---@param origin obe.Transform.UnitVector #Origin to rotate all the points around
function obe.Collision._PolygonalCollider:setRotation(angle, origin) end

---@param position obe.Transform.UnitVector #
function obe.Collision._PolygonalCollider:setPositionFromCentroid(position) end


---@class obe.Collision.Trajectory : obe.Types.Togglable
obe.Collision._Trajectory = {};

--- obe.Collision.Trajectory constructor
---
---@param unit? obe.Transform.Units #
---@return obe.Collision.Trajectory
function obe.Collision.Trajectory(unit) end


---@param acceleration number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addAcceleration(acceleration) end

---@param angle number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addAngle(angle) end

---@param check obe.Collision.TrajectoryCheckFunction #
function obe.Collision._Trajectory:addCheck(check) end

---@param speed number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:addSpeed(speed) end

---@return number
function obe.Collision._Trajectory:getAcceleration() end

---@return number
function obe.Collision._Trajectory:getAngle() end

---@return obe.Collision.TrajectoryCheckFunction[]
function obe.Collision._Trajectory:getChecks() end

---@return obe.Collision.OnCollideCallback
function obe.Collision._Trajectory:getOnCollideCallback() end

---@return number
function obe.Collision._Trajectory:getSpeed() end

---@return boolean
function obe.Collision._Trajectory:getStatic() end

---@return obe.Transform.Units
function obe.Collision._Trajectory:getUnit() end

---@param callback obe.Collision.OnCollideCallback #
function obe.Collision._Trajectory:onCollide(callback) end

---@param acceleration number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setAcceleration(acceleration) end

---@param angle number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setAngle(angle) end

---@param speed number #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setSpeed(speed) end

---@param tStatic boolean #
---@return obe.Collision.Trajectory
function obe.Collision._Trajectory:setStatic(tStatic) end


---@class obe.Collision.TrajectoryNode
obe.Collision._TrajectoryNode = {};

--- obe.Collision.TrajectoryNode constructor
---
---@param sceneNode obe.Scene.SceneNode #
---@return obe.Collision.TrajectoryNode
function obe.Collision.TrajectoryNode(sceneNode) end


---@param id string #
---@param unit? obe.Transform.Units #
---@return obe.Collision.Trajectory
function obe.Collision._TrajectoryNode:addTrajectory(id, unit) end

---@return obe.Scene.SceneNode
function obe.Collision._TrajectoryNode:getSceneNode() end

---@param id string #
---@return obe.Collision.Trajectory
function obe.Collision._TrajectoryNode:getTrajectory(id) end

---@param id string #
function obe.Collision._TrajectoryNode:removeTrajectory(id) end

---@param probe obe.Collision.PolygonalCollider #
function obe.Collision._TrajectoryNode:setProbe(probe) end

---@param dt number #
function obe.Collision._TrajectoryNode:update(dt) end



---@alias obe.Collision.OnCollideCallback fun(p0:obe.Collision.Trajectory, p1:obe.Transform.UnitVector, p2:obe.Collision.CollisionData)

---@alias obe.Collision.TrajectoryCheckFunction fun(p0:obe.Collision.Trajectory, p1:obe.Transform.UnitVector, p2:obe.Collision.PolygonalCollider)

--- Enum used when manipulating tags in the Collider.
---
---@class obe.Collision.ColliderTagType
obe.Collision.ColliderTagType = {
    Tag = 0,
    Accepted = 1,
    Rejected = 2,
};
return obe.Collision;