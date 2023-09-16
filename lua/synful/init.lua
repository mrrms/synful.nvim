local groups = require('synful.groups')
local harpoon = require('synful.harpoon')

require('synful.lualine')

function _Highlight(o)
  for group, styles in pairs(o) do
    vim.api.nvim_set_hl(0, tostring(group), styles)
  end
end

return {
  load = function()
    if vim.g.colors_name then
      vim.api.nvim_command('hi clear')
    end

    vim.g.colors_name = 'synful'

    _Highlight(groups)
    _Highlight(harpoon)
  end
}
