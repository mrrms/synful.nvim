local groups = {
	{ "txtBar", "│.*", "Macro" },
	{ "txtSlash", "─.*", "Macro" },
	{ "txtBoolean", "true", "Boolean" },
	{ "txtBoolean", "false", "Boolean" },
	{ "txtBullet", "•.*", "Macro" },
	{ "txtBLCorner", "└.*", "Macro" },
	{ "txtTLCorner", "┌.*", "Macro" },
	{ "txtComment", "--.*", "Comment" },
	{ "txtNumber", "\\d\\+", "Number" },
	{ "txtString", '".*"', "String" },
	{ "txtWarn", "\\(WARNING\\)", "Tag" },
	{ "txtTodo", "\\(TODO\\|NOTE\\|FIXME\\)", "Todo" },
}

for _, group in ipairs(groups) do
	vim.fn.matchadd(group[1], group[2])
	vim.api.nvim_set_hl(0, group[1], { link = group[3] })
end

-- vim.cmd('syntax region txtQuotes start=+"+ end=+"+')
-- vim.cmd("syntax region txtTernary start=+`+ end=+`+")
-- vim.cmd("syntax region txtSingleQuotes start=+'+ end=+'+")
