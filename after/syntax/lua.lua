local groups = {
	{ "luaDot", "%.", "Number" },
	{ "luaLoop", "%_", "Number" },
}

for _, group in ipairs(groups) do
	vim.fn.matchadd(group[1], group[2])
	vim.api.nvim_set_hl(0, group[1], { link = group[3] })
end
