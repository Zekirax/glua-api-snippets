---@meta

gamemode = {}

---[SHARED] Called by the engine when a gamemode is being loaded.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/gamemode.Register)
---@param gm table Your GM table
---@param name string Name of your gamemode, lowercase, no spaces.
---@param derived string The gamemode name that your gamemode is derived from
function gamemode.Register(gm, name, derived) end

---[SHARED] This returns the internally stored gamemode table.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/gamemode.Get)
---@param name string The name of the gamemode you want to get
---@return table # The gamemode's table
function gamemode.Get(name) end

---[SHARED] Called by the engine to call a hook within the loaded gamemode.
---
--- The supplied event 'name' must be defined in the active gamemode. Otherwise, nothing will happen - not even hooks added with hook.Add will be called.
---
--- This is similar to hook.Run and hook.Call, except the hook library will call hooks created with hook.Add even if there is no corresponding gamemode function.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/gamemode.Call)
---@param name string The name of the hook to call.
---@param ... any The arguments
---@return any # The result of the hook function - can be up to 6 values. Returns false if the gamemode function doesn't exist (i.e. nothing happened), but remember - a hook can also return false.
function gamemode.Call(name, ...) end
