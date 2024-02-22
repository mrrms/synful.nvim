-- create a table with highlight groups and corresponding regex patterns
local groups = {
	{ "^--.*", "Comment" },
	{ "^%a[%w_]*", "Identifier" },
	{ "^%d+%.%d+%.%d+%.%d+", "Number" },
	{ "^%a[%w_]*%s*%a[%w_]*", "Todo" },
	-- strings between single quotes
	{ "^'.*'", "String" },
	{ '^".*"', "String" },
}

-- iterate through the 'groups' table to apply the highlight groups
for _, group in ipairs(groups) do
	-- syntax match <group[1]> <group[2]>
	vim.api.nvim_command("syntax match " .. group[2] .. " /" .. group[1] .. "/")
	vim.api.nvim_set_hl(0, group[1], { link = group[2] })
end
