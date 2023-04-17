local groups = require('synful.groups')

require('synful.lualine')

return {
  load = function()
    if vim.g.colors_name then
      vim.api.nvim_command('hi clear')
    end

    vim.g.colors_name = 'synful'

    for group, styles in pairs(groups) do
      vim.api.nvim_set_hl(0, tostring(group), styles)
    end
  end,
}

-- for group, styles in pairs(lsp_groups) do
--   vim.api.nvim_set_hl(0, group, styles)
-- end
-- local lsp_groups = require('synful.lsp-groups')
