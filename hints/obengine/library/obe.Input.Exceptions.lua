---@meta

obe.Input.Exceptions = {};
---@class obe.Input.Exceptions.InputButtonAlreadyInCombination : obe.Exception[obe.Input.Exceptions.InputButtonAlreadyInCombination]
obe.Input.Exceptions._InputButtonAlreadyInCombination = {};

--- obe.Input.Exceptions.InputButtonAlreadyInCombination constructor
---
---@param button string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InputButtonAlreadyInCombination
function obe.Input.Exceptions.InputButtonAlreadyInCombination(button, info) end



---@class obe.Input.Exceptions.InputButtonInvalidOperation : obe.Exception[obe.Input.Exceptions.InputButtonInvalidOperation]
obe.Input.Exceptions._InputButtonInvalidOperation = {};

--- obe.Input.Exceptions.InputButtonInvalidOperation constructor
---
---@param inputButtonType string #
---@param operationType string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InputButtonInvalidOperation
function obe.Input.Exceptions.InputButtonInvalidOperation(inputButtonType, operationType, info) end



---@class obe.Input.Exceptions.InvalidGamepadButton : obe.Exception[obe.Input.Exceptions.InvalidGamepadButton]
obe.Input.Exceptions._InvalidGamepadButton = {};

--- obe.Input.Exceptions.InvalidGamepadButton constructor
---
---@param gamepadButtonId string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidGamepadButton
function obe.Input.Exceptions.InvalidGamepadButton(gamepadButtonId, info) end



---@class obe.Input.Exceptions.InvalidInputButtonState : obe.Exception[obe.Input.Exceptions.InvalidInputButtonState]
obe.Input.Exceptions._InvalidInputButtonState = {};

--- obe.Input.Exceptions.InvalidInputButtonState constructor
---
---@param state string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputButtonState
function obe.Input.Exceptions.InvalidInputButtonState(state, info) end



---@class obe.Input.Exceptions.InvalidInputCombinationCode : obe.Exception[obe.Input.Exceptions.InvalidInputCombinationCode]
obe.Input.Exceptions._InvalidInputCombinationCode = {};

--- obe.Input.Exceptions.InvalidInputCombinationCode constructor
---
---@param action string #
---@param combinationCode string #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputCombinationCode
function obe.Input.Exceptions.InvalidInputCombinationCode(action, combinationCode, info) end



---@class obe.Input.Exceptions.InvalidInputTypeEnumValue : obe.Exception[obe.Input.Exceptions.InvalidInputTypeEnumValue]
obe.Input.Exceptions._InvalidInputTypeEnumValue = {};

--- obe.Input.Exceptions.InvalidInputTypeEnumValue constructor
---
---@param enumValue number #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.InvalidInputTypeEnumValue
function obe.Input.Exceptions.InvalidInputTypeEnumValue(enumValue, info) end



---@class obe.Input.Exceptions.UnknownInputAction : obe.Exception[obe.Input.Exceptions.UnknownInputAction]
obe.Input.Exceptions._UnknownInputAction = {};

--- obe.Input.Exceptions.UnknownInputAction constructor
---
---@param actionName string #
---@param existingActions string[] #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.UnknownInputAction
function obe.Input.Exceptions.UnknownInputAction(actionName, existingActions, info) end



---@class obe.Input.Exceptions.UnknownInputButton : obe.Exception[obe.Input.Exceptions.UnknownInputButton]
obe.Input.Exceptions._UnknownInputButton = {};

--- obe.Input.Exceptions.UnknownInputButton constructor
---
---@param buttonName string #
---@param existingButtons string[] #
---@param info obe.DebugInfo #
---@return obe.Input.Exceptions.UnknownInputButton
function obe.Input.Exceptions.UnknownInputButton(buttonName, existingButtons, info) end



return obe.Input.Exceptions;