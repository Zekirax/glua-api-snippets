---@meta

---@class DPanelList
local DPanelList = {}

---[CLIENT] Adds a existing panel to the end of DPanelList.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:AddItem)
---@param pnl Panel Panel to be used as element of list
---@param state string If set to "ownline", the item will take its own entire line.
function DPanelList:AddItem(pnl, state) end

---[CLIENT] Removes all items.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:CleanList)
function DPanelList:CleanList() end

---[CLIENT] Enables/creates the vertical scroll bar so that the panel list can be scrolled through.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:EnableVerticalScrollbar)
function DPanelList:EnableVerticalScrollbar() end

---[CLIENT] Returns all panels has added by DPanelList:AddItem
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:GetItems)
---@return table A table of panels used as items of DPanelList.
function DPanelList:GetItems() end

---[CLIENT] Returns offset of list items from the panel borders set by DPanelList:SetPadding
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:GetPadding)
---@return number Offset from panel borders
function DPanelList:GetPadding() end

---[CLIENT] Returns distance between list items set by DPanelList:SetSpacing
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:GetSpacing)
---@return number Distance between panels
function DPanelList:GetSpacing() end

---[CLIENT] 
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:InsertAtTop)
---@param insert Panel The panel to insert
---@param strLineState string If set to "ownline", no other panels will be placed to the left or right of the panel we are inserting
function DPanelList:InsertAtTop(insert, strLineState) end

---[CLIENT] Sets the offset of the lists items from the panel borders
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:SetPadding)
---@param Offset number Offset from panel borders
function DPanelList:SetPadding(Offset) end

---[CLIENT] Sets distance between list items
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DPanelList:SetSpacing)
---@param Distance number Distance between panels
function DPanelList:SetSpacing(Distance) end

