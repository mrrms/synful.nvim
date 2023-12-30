local groups = {
	vimBooleanTrue = { string = "true", link = "Boolean" },
	vimBooleanFalse = { string = "false", link = "Boolean" },
}

for item, value in pairs(groups) do
	vim.cmd("syntax match " .. item .. " /" .. value.string .. "/")
	vim.cmd("highlight link " .. item .. " " .. value.link)
end
