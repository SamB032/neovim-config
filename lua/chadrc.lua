-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  tabufline = {
		enabled = false
	},
}

M.base46 = {
	theme = "catpuccin-macchiato",

	-- hl_override = {
		-- Comment = { italic = true },
		-- ["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
	load_on_startup = true,
}

return M
