local groups = {
	{ "Number", "%." },
	{ "Number", "%_" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[2] .. "'")
end
