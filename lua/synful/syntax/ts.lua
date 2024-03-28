local groups = {
	{ "*", "Boolean" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[2] .. " /" .. group[1] .. "/ contains=" .. group[2])
end
