local groups = {
	{ "Comment", "^--.*" },
	{ "Identifier", "^%a[%w_]*" },
	{ "Keyword", "^%a[%w_]*" },
	{ "Constant", "^%a[%w_]*" },
	{ "String", "^%a[%w_]*" },
	{ "Type", "^%a[%w_]*" },
	{ "Function", "^%a[%w_]*" },
	{ "Number", "^%d+" },
	{ "Boolean", "^%a[%w_]*" },
	{ "Operator", "^%a[%w_]*" },
	{ "PreProc", "^%a[%w_]*" },
	{ "Include", "^%a[%w_]*" },
}

-- Loop through the groups table to apply the highlight groups
for _, group in ipairs(groups) do
	vim.api.nvim_set_hl(0, group[1], { link = group[2] })
end
