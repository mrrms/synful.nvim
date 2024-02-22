-- Define the highlight groups and corresponding regex patterns
local groups = {
	{ "^--.*", "Comment" },
	{ "^%a[%w_]*", "Identifier" },
	{ "^%d+%.%d+%.%d+%.%d+", "Number" },
	{ "^%a[%w_]*%s*%a[%w_]*", "Todo" },
	{ "^'.*'", "String" },
	{ '^".*"', "String" },
}

-- Iterate through the 'groups' table to apply the highlight groups
for _, group in ipairs(groups) do
	-- Define the autocommand to apply the syntax matching and highlighting
	vim.cmd("autocmd BufRead,BufNewFile *.txt syntax match " .. group[2] .. " /" .. group[1] .. "/")
	vim.cmd(
		"autocmd BufRead,BufNewFile *.txt highlight "
			.. group[2]
			.. " guifg=none guibg=none gui=none ctermfg=none ctermbg=none cterm=none"
	)
end
