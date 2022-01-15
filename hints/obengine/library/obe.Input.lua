---@meta

obe.Input = {};
---@class obe.Input.InputAction : obe.Types.Identifiable
obe.Input._InputAction = {};

--- Creates a new InputAction.
---
---@param actionsEvents obe.Event.EventGroup #Pointer to the Actions EventGroup
---@param id string #Id of the InputAction
---@return obe.Input.InputAction
function obe.Input.InputAction(actionsEvents, id) end


--- Adds an InputCondition to the InputAction.
---
---@param condition obe.Input.InputCondition #An InputCondition to add to the InputAction
function obe.Input._InputAction:addCondition(condition) end

--- Adds a context to the InputAction.
---
---@param context string #New context for the InputAction
function obe.Input._InputAction:addContext(context) end

--- Check if the InputAction is enabled.
---
---@return boolean
function obe.Input._InputAction:check() end

--- Clears all the InputCondition of the InputAction.
---
function obe.Input._InputAction:clearConditions() end

--- Get all the contexts the InputAction is in.
---
---@return string[]
function obe.Input._InputAction:getContexts() end

--- Gets the delay required between two InputAction triggerings.
---
---@return obe.Time.TimeUnit
function obe.Input._InputAction:getInterval() end

--- Gets the delay between two 'Hold' callbacks activations.
---
---@return obe.Time.TimeUnit
function obe.Input._InputAction:getRepeat() end

--- Sets the delay required between two InputAction triggerings.
---
---@param delay obe.Time.TimeUnit #Delay required between two InputAction triggerings (in ms)
function obe.Input._InputAction:setInterval(delay) end

--- Sets the delay between two 'Hold' callbacks activations.
---
---@param delay obe.Time.TimeUnit #Delay required between two 'Hold' callbacks activations
function obe.Input._InputAction:setRepeat(delay) end

--- Updates the InputAction.
---
function obe.Input._InputAction:update() end

---@return obe.Input.InputButton[]
function obe.Input._InputAction:getInvolvedButtons() end

---@param monitors obe.Input.InputButtonMonitorPtr[] #
function obe.Input._InputAction:enable(monitors) end

function obe.Input._InputAction:disable() end

---@return boolean
function obe.Input._InputAction:isEnabled() end


---@class obe.Input.InputButton
obe.Input._InputButton = {};

--- Creates a new InputButton representing a Keyboard key.
---
---@param key sf.Keyboard.Key #SFML Keyboard Key
---@param name string #Name of the Key
---@param returnChar string #The character printed when the key is pressed
---@param type obe.Input.InputType #Type of the Key (Arrows, Alpha, Numeric, NumericNP, Functions, Others)
---@return obe.Input.InputButton
function obe.Input.InputButton(key, name, returnChar, type) end

--- Creates a new InputButton representing a Mouse Button.
---
---@param key sf.Mouse.Button #SFML Mouse Button
---@param name string #Name of the Mouse Button
---@return obe.Input.InputButton
function obe.Input.InputButton(key, name) end

--- Creates a new InputButton representing a Gamepad Button.
---
---@param gamepadIndex number #Index of the gamepad
---@param buttonIndex number #Index of the button of the gamepad
---@param name string #Name of the gamepad Button
---@return obe.Input.InputButton
function obe.Input.InputButton(gamepadIndex, buttonIndex, name) end

--- Creates a new InputButton representing a gamepad Axis.
---
---@param gamepadIndex number #Index of the gamepad
---@param gamepadAxis sf.Joystick.Axis #Enum value of the Gamepad Axis
---@param detect Tuple_ObeInputAxisThresholdDirection_Number #Pair containing the check type (More / Less) and the threshold before axis activation detection
---@param name string #Name of the gamepad Axis
---@return obe.Input.InputButton
function obe.Input.InputButton(gamepadIndex, gamepadAxis, detect, name) end

--- obe.Input.InputButton constructor
---
---@param direction obe.Input.MouseWheelScrollDirection #
---@param name string #
---@return obe.Input.InputButton
function obe.Input.InputButton(direction, name) end

--- obe.Input.InputButton constructor
---
---@param other obe.Input.InputButton #
---@return obe.Input.InputButton
function obe.Input.InputButton(other) end


---@param other obe.Input.InputButton #
function obe.Input._InputButton:reload(other) end

--- Get Axis Position value if InputButton is an axis (throws error otherwise)
---
---@return number
function obe.Input._InputButton:getAxisPosition() end

---@return number
function obe.Input._InputButton:getWheelDelta() end

--- Get the SFML Keyboard Key.
---
---@return sf.Keyboard.Key
function obe.Input._InputButton:getKey() end

--- Get the name of the Key.
---
---@return string
function obe.Input._InputButton:getName() end

--- Get the type of the Key (Arrows, Alpha, Numeric, NumericNP, Functions, Others)
---
---@return obe.Input.InputType
function obe.Input._InputButton:getType() end

--- Equivalent to InputButton::getType() == inputType.
---
---@param inputType obe.Input.InputType #Type to test the equivalence
---@return boolean
function obe.Input._InputButton:is(inputType) end

--- Get if the key is pressed.
---
---@return boolean
function obe.Input._InputButton:isPressed() end

--- Get if the key prints a writable character.
---
---@return boolean
function obe.Input._InputButton:isWritable() end


---@class obe.Input.InputButtonMonitor
obe.Input._InputButtonMonitor = {};

--- Constructor of InputButtonMonition.
---
---@param button obe.Input.InputButton #Pointer to the InputButton to monitor
---@return obe.Input.InputButtonMonitor
function obe.Input.InputButtonMonitor(button) end


--- Gets a pointer to the monitored InputButton.
---
---@return obe.Input.InputButton
function obe.Input._InputButtonMonitor:getButton() end

--- Gets the state of the InputButton (InputButtonState)
---
---@return obe.Input.InputButtonState
function obe.Input._InputButtonMonitor:getState() end

--- Updates the InputButtonMonitor (needed to modify the linked InputButtonState)
---
---@param events obe.Event.EventGroupPtr #
function obe.Input._InputButtonMonitor:update(events) end

---@return boolean
function obe.Input._InputButtonMonitor:checkForRefresh() end


---@class obe.Input.InputCondition
obe.Input._InputCondition = {};

--- obe.Input.InputCondition constructor
---
---@return obe.Input.InputCondition
function obe.Input.InputCondition() end


--- Adds a new InputCombinationElement to the InputCondition.
---
---@param combinationElement obe.Input.InputCombinationElement #The InputCombinationElement to add to the InputCondition
function obe.Input._InputCondition:addCombinationElement(combinationElement) end

--- Checks if the condition is fulfilled.
---
---@return boolean
function obe.Input._InputCondition:check() end

--- Clears the InputCondition.
---
function obe.Input._InputCondition:clear() end

---@param monitors obe.Input.InputButtonMonitorPtr[] #
function obe.Input._InputCondition:enable(monitors) end

function obe.Input._InputCondition:disable() end

---@return boolean
function obe.Input._InputCondition:isEnabled() end


---@class obe.Input.InputManager : obe.Types.Togglable
obe.Input._InputManager = {};

--- Creates a new KeyboardManager.
---
---@param eventNamespace obe.Event.EventNamespace #
---@return obe.Input.InputManager
function obe.Input.InputManager(eventNamespace) end


--- Get if a KeyboardAction exists.
---
---@param actionId string #Id of the KeyboardAction to check the existence
---@return boolean
function obe.Input._InputManager:actionExists(actionId) end

--- Adds a new context the KeyboardManager will use.
---
---@param context string #Name of the context to add
---@return obe.Input.InputManager
function obe.Input._InputManager:addContext(context) end

--- Get the KeyboardAction identified by actionId if it exists.
---
---@param actionId string #Id of the KeyboardAction to retrieve
---@return obe.Input.InputAction
function obe.Input._InputManager:getAction(actionId) end

--- Gets all the contexts currently used by the InputManager.
---
---@return string[]
function obe.Input._InputManager:getContexts() end

--- Clears all Actions.
---
function obe.Input._InputManager:clear() end

--- Clear all contexts the KeyboardManager is using.
---
function obe.Input._InputManager:clearContexts() end

--- Configure KeyboardAction from a vili configuration file.
---
---@param config vili.node #Reference to the vili ComplexAttribute used to configure the KeyboardManager
function obe.Input._InputManager:configure(config) end

--- Removes a context in use.
---
---@param context string #Name of the context to remove
---@return obe.Input.InputManager
function obe.Input._InputManager:removeContext(context) end

--- Cleans all the contexts and adds a new one.
---
---@param context string #Name of the only context to use
function obe.Input._InputManager:setContext(context) end

--- Updates the KeyboardManager.
---
function obe.Input._InputManager:update() end

--- Get an InputButton from the given key.
---
---@param key string #Name of the InputButton you want to get
---@return obe.Input.InputButton
function obe.Input._InputManager:getInput(key) end

--- Get a list of all InputButtons which are pressed.
---
---@return obe.Input.InputButton[]
function obe.Input._InputManager:getPressedInputs() end

function obe.Input._InputManager:requireRefresh() end

function obe.Input._InputManager:initializeGamepads() end

---@param gamepadIndex number #
function obe.Input._InputManager:initializeGamepad(gamepadIndex) end



---@alias obe.Input.InputButtonMonitorPtr obe.Input.InputButtonMonitor

---@alias obe.Input.InputCombinationElement Tuple_ObeInputInputButton_ObeTypesFlagSetObeInputInputButtonState

---@alias obe.Input.InputCombination obe.Input.InputCombinationElement[]
--- Converts an InputButtonState to a std::string.
---
---@param state obe.Input.InputButtonState #InputButtonState to convert
---@return string
function obe.Input.inputButtonStateToString(state) end

--- Converts a string to the corresponding InputButtonState.
---
---@param state string #InputButtonState in string form
---@return obe.Input.InputButtonState
function obe.Input.stringToInputButtonState(state) end

---@param type obe.Input.InputType #
---@return string
function obe.Input.inputTypeToString(type) end


--- 
---
---@class obe.Input.MouseWheelScrollDirection
obe.Input.MouseWheelScrollDirection = {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3,
};

--- Trigger condition on an AxisButton input.
---
---@class obe.Input.AxisThresholdDirection
obe.Input.AxisThresholdDirection = {
    Less = 0,
    More = 1,
};

--- Possible states of InputButton.
---
---@class obe.Input.InputButtonState
obe.Input.InputButtonState = {
    Idle = 0,
    Hold = 1,
    Pressed = 2,
    Released = 3,
    LAST__ = 4,
};

--- The type of Input.
---
---@class obe.Input.InputType
obe.Input.InputType = {
    Alpha = 0,
    Numeric = 1,
    NumericNP = 2,
    Arrows = 3,
    Functions = 4,
    Mouse = 5,
    Others = 6,
    GamepadButton = 7,
    GamepadAxis = 8,
    ScrollWheel = 9,
};
return obe.Input;