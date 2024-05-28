local groups = {
	{ "txtNormal", ".", "CursorLineNr" },
	{ "txtWarn", "`.*`", "Tag" },
	{ "txtBar", "│.*", "LineNr" },
	{ "txtSlash", "─.*", "LineNr" },
	{ "txtBoolean", "true", "Boolean" },
	{ "txtBoolean", "false", "Boolean" },
	{ "txtBullet", "•.*", "Macro" },
	{ "txtBLCorner", "└.*", "LineNr" },
	{ "txtTLCorner", "┌.*", "LineNr" },
	{ "txtJunction", "├.*", "LineNr" },
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

local function highlight_backticks()
	local pattern = "`([^`]+)`"
	local highlight_group = "txtWarn"

	vim.api.nvim_command("syntax match txtBackticks /`[^`]*`/ conceal cchar=")
	vim.api.nvim_command("highlight link txtBackticks " .. highlight_group)

	vim.api.nvim_command("syntax match txtBackticks /`[^`]*`/ contains=txtBackticksConcealed")
	vim.api.nvim_command("syntax match txtBackticksConcealed /`/ contained conceal cchar=")
	vim.api.nvim_command("syntax match txtBackticksConcealed /`/ contained conceal cchar=")

	vim.api.nvim_command("highlight link txtBackticksConcealed Ignore")
end

vim.api.nvim_create_augroup("backtick_highlight", { clear = true })

-- vim.cmd('syntax region txtQuotes start=+"+ end=+"+')
-- vim.cmd("syntax region txtTernary start=+`+ end=+`+")
-- vim.cmd("syntax region txtSingleQuotes start=+'+ end=+'+")
