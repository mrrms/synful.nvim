local groups = {
	{ "tsStar", "Boolean", "*" },
	{ "tsComma", "LineNr", "," },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[3] .. "'")
	vim.cmd("hi def link " .. group[1] .. " " .. group[2])
end
