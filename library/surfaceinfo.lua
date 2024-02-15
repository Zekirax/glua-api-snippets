---@meta

---@class SurfaceInfo
local SurfaceInfo = {}

---[SHARED] Checks if the brush surface is water.
---
--- This internally checks the SURFDRAW_WATER flag.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/SurfaceInfo:IsWater)
---@return boolean # Returns true if the surface is water.
function SurfaceInfo:IsWater() end

---[SHARED] Returns a list of vertices the brush surface is built from.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/SurfaceInfo:GetVertices)
---@return table # A list of Vector points. This will usually be 4 corners of a quadrilateral in counter-clockwise order.
function SurfaceInfo:GetVertices() end

---[SHARED] Checks if the brush surface is displaying the skybox.
---
--- This internally checks the SURFDRAW_SKY flag.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/SurfaceInfo:IsSky)
---@return boolean # Returns true if the surface is the sky.
function SurfaceInfo:IsSky() end

---[SHARED] Returns the brush surface's material.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/SurfaceInfo:GetMaterial)
---@return IMaterial # Material of one portion of a brush model.
function SurfaceInfo:GetMaterial() end

---[SHARED] Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.
---
--- This internally checks the SURFDRAW_NODRAW flag.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/SurfaceInfo:IsNoDraw)
---@return boolean # Returns true if this surface won't be drawn.
function SurfaceInfo:IsNoDraw() end
