---@meta

---[CLIENT] Returns the internal row panel of a DProperties that this panel belongs to.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DProperty_Generic:GetRow)
---@return Panel # The row panel.
function DProperty_Generic:GetRow() end

---[CLIENT] Called by this control, or a derived control, to alert the row of the change.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DProperty_Generic:ValueChanged)
---@param newVal any The new value.
---@param force boolean Force an update.
function DProperty_Generic:ValueChanged(newVal, force) end

---[CLIENT] Called internally by DProperties.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DProperty_Generic:SetRow)
---@param row Panel The new row panel.
function DProperty_Generic:SetRow(row) end

---[CLIENT] Sets up a generic control for use by DProperties.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DProperty_Generic:Setup)
---@param data table See Editable Entities.
function DProperty_Generic:Setup(data) end

---@class DProperty_Generic : Panel
local DProperty_Generic = {}
