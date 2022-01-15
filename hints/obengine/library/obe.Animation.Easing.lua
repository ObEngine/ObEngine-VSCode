---@meta

obe.Animation.Easing = {};

---@alias obe.Animation.Easing.EasingFunction fun(p0:number):number
---@param t number #
---@return number
function obe.Animation.Easing.Linear(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutSine(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuad(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutCubic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuart(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutQuint(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutExpo(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutCirc(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutBack(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutElastic(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InBounce(t) end

---@param t number #
---@return number
function obe.Animation.Easing.OutBounce(t) end

---@param t number #
---@return number
function obe.Animation.Easing.InOutBounce(t) end


--- 
---
---@class obe.Animation.Easing.EasingType
obe.Animation.Easing.EasingType = {
    Linear = 0,
    InSine = 1,
    OutSine = 2,
    InOutSine = 3,
    InQuad = 4,
    OutQuad = 5,
    InOutQuad = 6,
    InCubic = 7,
    OutCubic = 8,
    InOutCubic = 9,
    InQuart = 10,
    OutQuart = 11,
    InOutQuart = 12,
    InQuint = 13,
    OutQuint = 14,
    InOutQuint = 15,
    InExpo = 16,
    OutExpo = 17,
    InOutExpo = 18,
    InCirc = 19,
    OutCirc = 20,
    InOutCirc = 21,
    InBack = 22,
    OutBack = 23,
    InOutBack = 24,
    InElastic = 25,
    OutElastic = 26,
    InOutElastic = 27,
    InBounce = 28,
    OutBounce = 29,
    InOutBounce = 30,
};
return obe.Animation.Easing;