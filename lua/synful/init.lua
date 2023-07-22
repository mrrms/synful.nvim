local groups = require('synful.groups')
-- local harpoon = require('synful.harpoon')

require('synful.lualine')
-- not sure why nvim_set_hl will not work with harpoon.
require('synful.harpoon')

return {
  load = function()
    if vim.g.colors_name then
      vim.api.nvim_command('hi clear')
    end

    vim.g.colors_name = 'synful'

    for group, styles in pairs(groups) do
      vim.api.nvim_set_hl(0, tostring(group), styles)
    end

    -- for group, styles in pairs(harpoon) do
    --   vim.api.nvim_set_hl(0, tostring(group), styles)
    -- end
  end
}
