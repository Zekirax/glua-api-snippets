---@meta

cam = {}

---[CLIENT] Shakes the screen at a certain position.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.ApplyShake)
---@param pos Vector Origin of the shake.
---@param angles Angle Angles of the shake.
---@param factor number The shake factor.
function cam.ApplyShake(pos, angles, factor) end

---[CLIENT] Switches the renderer back to the previous drawing mode from a 3D orthographic rendering context.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.EndOrthoView)
function cam.EndOrthoView() end

---[CLIENT] Returns a copy of the model matrix that is at the top of the stack.
--- 	Editing the matrix **will not** edit the current view. To do so, you will have to **push** it.
--- 	This function essentially returns the copy of the last pushed model matrix.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.GetModelMatrix)
---@return VMatrix # The currently active matrix.
function cam.GetModelMatrix() end

---[CLIENT] Switches the renderer back to the previous drawing mode from a 3D2D context.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.End3D2D)
function cam.End3D2D() end

---[CLIENT] Switches the renderer back to the previous drawing mode from a 3D context.
---
--- This function is an alias of cam.End3D.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.End)
function cam.End() end

---[CLIENT] Tells the renderer to ignore the depth buffer and draw any upcoming operation "ontop" of everything that was drawn yet.
---
--- This is identical to calling `render.DepthRange( 0, 0.01 )` for `true` and  `render.DepthRange( 0, 1 )` for `false`. See render.DepthRange.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.IgnoreZ)
---@param ignoreZ boolean Determines whenever to ignore the depth buffer or not.
function cam.IgnoreZ(ignoreZ) end

---[CLIENT] Sets up a new 2D rendering context. Must be finished by cam.End2D.
---
--- This is almost always used with a render target from the render. To set its position use render.SetViewPort with a target already stored.
---
--- This will put an identity matrix at the top of the model matrix stack. If you are trying to use cam.PushModelMatrix, call it after this function and not before.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.Start2D)
function cam.Start2D() end

---[CLIENT] Sets up a new rendering context. This is an extended version of cam.Start3D and cam.Start2D. Must be finished by cam.End3D or cam.End2D.
---
--- This will not update current view properties for 3D contexts.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.Start)
---@param dataTbl table Render context config. See Structures/RenderCamData
function cam.Start(dataTbl) end

---[CLIENT] Pops the current active rendering matrix from the stack and reinstates the previous one.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.PopModelMatrix)
function cam.PopModelMatrix() end

---[CLIENT] Sets up a new 3d context using orthographic projection.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.StartOrthoView)
---@param leftOffset number The left plane offset.
---@param topOffset number The top plane offset.
---@param rightOffset number The right plane offset.
---@param bottomOffset number The bottom plane offset.
function cam.StartOrthoView(leftOffset, topOffset, rightOffset, bottomOffset) end

---[CLIENT] Switches the renderer back to the previous drawing mode from a 3D context.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.End3D)
function cam.End3D() end

---[CLIENT] Sets up a new 3D rendering context. Must be finished by cam.End3D.
---
--- For more advanced settings such as an orthographic view, use cam.Start instead.
---
---
---
--- Negative x/y values won't work.
---
--- This will not update current view properties.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.Start3D)
---@param pos? Vector Render cam position.
---@param angles? Angle Render cam angles.
---@param fov? number Field of view.
---@param x? number X coordinate of where to start the new view port.
---@param y? number Y coordinate of where to start the new view port.
---@param w? number Width of the new viewport.
---@param h? number Height of the new viewport.
---@param zNear? number Distance to near clipping plane.
---
---
--- Both zNear and zFar need a value before any of them work.
---
--- zNear also requires a value higher than 0.
---
---
---@param zFar? number Distance to far clipping plane.
function cam.Start3D(pos, angles, fov, x, y, w, h, zNear, zFar) end

---[CLIENT] Pushes the specified matrix onto the render matrix stack. Unlike opengl, this will replace the current model matrix.
---
--- This does not work with cam.Start3D2D if `multiply` is false.
--- When used in the Paint function of a panel, if you want to rely on the top-left position of the panel, you must use VMatrix:Translate with the (0, 0) position of the panel relative to the screen.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.PushModelMatrix)
---@param matrix VMatrix The matrix to push.
---@param multiply? boolean If set, multiplies given matrix with currently active matrix (cam.GetModelMatrix) before pushing.
function cam.PushModelMatrix(matrix, multiply) end

---[CLIENT] Sets up a new 2D rendering context. Must be finished by cam.End3D2D. This function pushes a new matrix onto the stack. (cam.PushModelMatrix)
---
--- Matrix formula:
--- ```
--- local m = Matrix()
--- m:SetAngles(angles)
--- m:SetTranslation(pos)
--- m:SetScale(Vector(scale, -scale, 1))
--- ```
---
---
---
--- This should be closed by cam.End3D2D otherwise the game crashes
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.Start3D2D)
---@param pos Vector Origin of the 3D2D context, ie. the top left corner, (0, 0).
---@param angles Angle Angles of the 3D2D context.
--- +x in the 2d context corresponds to +x of the angle (its forward direction).
--- +y in the 2d context corresponds to -y of the angle (its right direction).
---
--- If (dx, dy) are your desired (+x, +y) unit vectors, the angle you want is dx:AngleEx(dx:Cross(-dy)).
---@param scale number The scale of the render context.
--- If scale is 1 then 1 pixel in 2D context will equal to 1 unit in 3D context.
function cam.Start3D2D(pos, angles, scale) end

---[CLIENT] Switches the renderer back to the previous drawing mode from a 2D context.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cam.End2D)
function cam.End2D() end
