-- ┌─┐┬ ┬┌┐┌┌─┐┬ ┬┬
-- └─┐└┬┘│││├┤ │ ││
-- └─┘ ┴ ┘└┘└  └─┘┴─┘

local colour = require("colour")
local groups = require("groups")
local hues = {}

vim.g.colors_name = "synful"

for group, opts in pairs(groups) do
	vim.api.nvim_set_hl(0, group, opts)
end

for _, v in pairs(colour) do
	table.insert(hues, v)
end

vim.g.synful = hues
