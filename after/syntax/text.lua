local groups = {
	{ "Macro", "*" },
	{ "Macro", "•" },
	{ "Boolean", "true" },
	{ "Boolean", "false" },
	{ "Tag", "TODO" },
	{ "Macro", "NOTE" },
	{ "Number", "22" },
	{ "Number", "+" },
	{ "Number", "-" },
	{ "Number", "*" },
	{ "Number", "•" },
	{ "Comment", "--.*" },
	-- single quotes
	{ "String", "'.*'" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[2] .. "'")
end
