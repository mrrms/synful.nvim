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
      vim.api.nvim_command("redraw")
    end
  end
}
