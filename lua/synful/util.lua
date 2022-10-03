local M = {}

--> go through the table and define the highlight groups
M.highlight = function(group, color)
  local gui = color.gui and color.gui or "NONE"
  local fg = color.fg and color.fg or "NONE"
  local bg = color.bg and color.bg or "NONE"

  local cmd = "highlight! " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui
  --> print(cmd)
  vim.cmd(cmd)
end

M.link = function(group, highlight)
  local cmd = "highlight! link " .. group .. " " .. highlight
  --> print(cmd)
  vim.cmd(cmd)
end

return M
