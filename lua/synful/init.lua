local groups = require("synful.groups")

-- can/ought this be moved to a setup function
require("synful.lualine")
require("synful.ftdetect.css")
require("synful.ftdetect.vim")
require("synful.ftdetect.lua")
require("synful.ftdetect.txt")

return {
	load = function()
		if vim.g.colors_name then
			vim.api.nvim_command("hi clear")
		end

		vim.g.colors_name = "synful"

		for group, styles in pairs(groups) do
			vim.api.nvim_set_hl(0, tostring(group), styles)
		end
	end,
}
