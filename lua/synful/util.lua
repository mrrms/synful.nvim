local M = {}

--> go through the table and define the highlight groups
M._Highlight = function(group, color)
  local gui = color.gui and color.gui or 'NONE'
  local fg = color.fg and color.fg or 'NONE'
  local bg = color.bg and color.bg or 'NONE'

  local cmd = 'highlight! ' .. group .. ' guifg=' .. fg .. ' guibg=' .. bg .. ' gui=' .. gui
  --> print(cmd)
  vim.cmd(cmd)
end

--> go through the table and link the highlight groups
M._Link = function(group, hl)
  local cmd = "highlight! link " .. group .. ' ' .. hl
  --> print(cmd)
  vim.cmd(cmd)
end

return M
