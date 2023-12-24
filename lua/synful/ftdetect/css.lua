local function customSyntaxHighlight()
	vim.cmd('syntax match cssPropertyName "(property_name)"')
	vim.cmd("highlight cssPropertyName guifg=#FF0000")
end

return customSyntaxHighlight
