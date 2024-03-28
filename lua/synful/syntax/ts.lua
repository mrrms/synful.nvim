print("syntax/ts.lua")

-- create a table that applies syntax rules for .ts files by a for loop to the groups table
local groups = {
	{ "^%d+%.%d+%.%d+%.%d+", "Number" },
	{ "^%a[%w_]*", "Identifier" },
	{ "^%a[%w_]*%s*%a[%w_]*", "Todo" },
	{ "^'.*'", "String" },
	{ '^".*"', "String" },
}

for _, group in ipairs(groups) do
	vim.cmd("autocmd BufRead,BufNewFile *.ts syntax match " .. group[2] .. " /" .. group[1] .. "/")
	vim.cmd(
		"autocmd BufRead,BufNewFile *.ts highlight "
			.. group[2]
			.. " guifg=none guibg=none gui=none ctermfg=none ctermbg=none cterm=none"
	)
end
