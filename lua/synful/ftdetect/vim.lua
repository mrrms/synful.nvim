local vimCustomHighlights = {
	vimBooleanTrue = { pattern = "true", group = "Boolean" },
	vimBooleanFalse = { pattern = "false", group = "Boolean" },
}

for item, value in pairs(vimCustomHighlights) do
	vim.cmd("syntax match " .. item .. " /" .. value.pattern .. "/")
	vim.cmd("highlight link " .. item .. " " .. value.group)
end
