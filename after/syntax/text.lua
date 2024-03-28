local groups = {
	{ "Macro", "*" },
	{ "Macro", "•" },
	{ "Tag", "TODO" },
	{ "Macro", "NOTE" },
	{ "Number", "22" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[2] .. "'")
end
