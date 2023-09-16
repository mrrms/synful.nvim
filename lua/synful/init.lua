local groups = require('synful.groups')
local harpoon = require('synful.harpoon')

require('synful.lualine')

function _Highlight(opts)
  for group, styles in pairs(opts) do
    vim.api.nvim_set_hl(0, tostring(group), styles)
  end
end

_Highlight(groups)
_Highlight(harpoon)

return {
  load = function()
    if vim.g.colors_name then
      vim.api.nvim_command('hi clear')
    end
    vim.g.colors_name = 'synful'
  end
}
