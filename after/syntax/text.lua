print("first of all, is this being detected?")

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

for k, v in pairs(groups) do
	vim.cmd("syntax match " .. k .. " " .. v)
end
