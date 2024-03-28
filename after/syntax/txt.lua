local groups = {
	{ "Macro", "•" },
	{ "String", "'[^']*'" },
	{ "Comment", "--.*" },
	{ "Number", "%d+" },
	{ "Boolean", "true" },
	{ "Operator", "[%+%-*/]" },
	{ "Keyword", "^# .*" },
	{ "Function", "TODO" },
	{ "Boolean", "NOTE" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " '" .. group[2] .. "'")
end
