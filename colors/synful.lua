-- ┌─┐┬ ┬┌┐┌┌─┐┬ ┬┬
-- └─┐└┬┘│││├┤ │ ││
-- └─┘ ┴ ┘└┘└  └─┘┴─┘

local colour = require("colour")
local groups = require("groups")

vim.g.colors_name = "synful"

for group, opts in pairs(groups) do
	vim.api.nvim_set_hl(0, group, opts)
end

vim.g.synful = colour

vim.api.nvim_create_user_command("Synful", function()
	local choices = {}

	for k, v in pairs(colour) do
		table.insert(choices, k .. " " .. v)
	end

	vim.ui.select(choices, { prompt = "", kind = "plain_text" }, function(choice)
		-- get the hex code of the selected colour which are all characters after the first space
		local thusly = string.sub(choice, string.find(choice, " ") + 1)
		vim.api.nvim_put({ thusly }, "c", false, true)
	end)
end, {})
