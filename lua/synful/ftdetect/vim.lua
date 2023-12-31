local vimCustomHighlights = {
	vimBooleanTrue = { pattern = "true", group = "Boolean" },
	vimBooleanFalse = { pattern = "false", group = "Boolean" },
}

for item, value in pairs(vimCustomHighlights) do
	vim.cmd("syntax match " .. item .. " /" .. value.pattern .. "/")
	vim.cmd("highlight link " .. item .. " " .. value.group)
end

-- Define the custom highlight groups
vim.cmd("highlight MyCustomGroup1 guifg=#ff0000")
vim.cmd("highlight MyCustomGroup2 guifg=#00ff00")

-- Apply the custom highlight groups to specific patterns
vim.cmd("syntax match false /\\<my_pattern1\\>/ containedin=ALL contained")
vim.cmd("syntax match true /\\<my_pattern2\\>/ containedin=ALL contained")

-- Set the colorscheme
vim.cmd("colorscheme synful")
