local groups = {
	{ "Function", "TODO" },
	{ "Boolean", "NOTE" },
	{ "Macro", "•" },
	{ "Number", "\\d\\+" },
	{ "String", "'[^']*'" },
	{ "Comment", "--.*" },
	{ "Boolean", "true|false" },
	{ "Operator", "[%+%-*/]" },
	{ "Keyword", "^# .*" },
}

for _, group in ipairs(groups) do
	vim.cmd("syntax match " .. group[1] .. " " .. group[2] .. "'")
end
