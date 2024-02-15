---@meta

---[CLIENT AND MENU] Returns the base color of the alpha bar. This is the color for which the alpha channel is being modified.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DAlphaBar:GetBarColor)
---@return table # The current base color.
function DAlphaBar:GetBarColor() end

---[CLIENT AND MENU] Returns the alpha value of the alpha bar.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DAlphaBar:GetValue)
---@return number # The current alpha value.
function DAlphaBar:GetValue() end

---@class DAlphaBar : DPanel
local DAlphaBar = {}

---[CLIENT AND MENU] Sets the base color of the alpha bar. This is the color for which the alpha channel is being modified.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DAlphaBar:SetBarColor)
---@param clr table The new Color to set. See Global.Color.
function DAlphaBar:SetBarColor(clr) end

---[CLIENT AND MENU] Sets the alpha value or the alpha bar.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DAlphaBar:SetValue)
---@param alpha number The new alpha value to set
function DAlphaBar:SetValue(alpha) end
