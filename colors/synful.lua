-- ┌─┐┬ ┬┌┐┌┌─┐┬ ┬┬
-- └─┐└┬┘│││├┤ │ ││
-- └─┘ ┴ ┘└┘└  └─┘┴─┘

local colour = require("colour")
local groups = require("groups")

vim.g.colors_name = "synful"

for group, opts in pairs(groups) do
	vim.api.nvim_set_hl(0, group, opts)
end

return { colour = colour }
