local groups = {
	{ "Boolean", "*" },
	{ "LineNr", "," },
	{ "Tag", "||" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[2] .. "'")
end
