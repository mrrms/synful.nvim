-- stylua: ignore
local groups = {
	Macro = "•",
	Number = "\\d\\+",
	String = "'[^']*'",
	Comment = "--.*",
	Boolean = "true|false",
	Operator = "[%+%-*/]",
	Function = "TODO",
	Keyword = "^# .*",
}

-- stylua: ignore
for k, v in pairs(groups) do
	vim.cmd('syntax match ' .. k .. ' ' .. v .. "'")
end
