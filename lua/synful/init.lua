-- ┌─┐┬ ┬┌┐┌┌─┐┬ ┬┬
-- └─┐└┬┘│││├┤ │ ││
-- └─┘ ┴ ┘└┘└  └─┘┴─┘
local M = {}

M.name = "synful"

vim.g.colors_name = "synful"

M.hues = {}
M.colour = require("colour")
M.groups = require("groups")

function M.setup()
	vim.cmd.colorscheme("synful")

	for group, opts in pairs(M.groups) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	for _, v in pairs(M.colour) do
		table.insert(M.hues, v)
	end
end

return M
