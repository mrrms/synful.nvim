function _Autocmd(pattern, opts)
	vim.api.nvim_create_autocmd(pattern, opts)
end

local textify = {
	textifyTodo = { pattern = "TODO", group = "Todo" },
	textifyDone = { pattern = "DONE", group = "Keyword" },
	textifyBold = { pattern = "\\*.*\\*", group = "Bold" },
	textifyItalic = { pattern = "_.*_", group = "Italic" },
	textifyComment = { pattern = "^•.*", group = "Comment" },
	textifyTrue = { pattern = "true", group = "Boolean" },
	textifyFalse = { pattern = "false", group = "Boolean" },
	textifyKeyword = { pattern = "keyword", group = "Keyword" },
	textifyMacro = { pattern = "^#.*", group = "Macro" },
	textifyFunction = { pattern = "function", group = "Macro" },
	textifyReturn = { pattern = "return", group = "Return" },
	textifyCost = { pattern = "const", group = "Keyword" },
	textifyLet = { pattern = "let", group = "Keyword" },
	textifyLocal = { pattern = "local", group = "luaLocal" },
	textifyString = { pattern = "'[^']*'", group = "String" },
	textifyTemplateString = { pattern = "`[^`]*`", group = "Tag" },
	textifyNumber = { pattern = "\\%([0-9]\\+\\|[0-9]\\+\\.[0-9]\\+\\)", group = "Number" },
	-- textifyLink = { pattern = 'https?://.*', group = 'Underlined' },
	-- textifyTag = { pattern = '@.*', group = 'Tag' },
}

_Autocmd("BufEnter", {
	pattern = "*.txt",
	callback = function()
		for k, v in pairs(textify) do
			vim.cmd(string.format("syntax match %s /%s/", k, v.pattern))
			vim.cmd(string.format("syntax match %s /%s/", v.group, v.pattern))
		end
	end,
})

_Autocmd("TextChanged", {
	pattern = "*.txt",
	callback = function()
		local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
		for i, line in ipairs(lines) do
			lines[i] = line:gsub("[_*]", "")
		end
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
	end,
})
