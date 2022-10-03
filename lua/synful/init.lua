local util = require 'synful.util'
local groups = require 'synful.groups'

local M = {}

function M.apply()
  -- define the highlight groups

  -- 1. colorscheme
  for group, colors in pairs(groups.themes) do
    util.highlight(group, colors)
  end

  -- 2. editor
  for editor, highlight in pairs(groups.editor) do
    util.highlight(editor, highlight)
  end

  -- 3. link
  -- syntax --> colorscheme groups
  for syntax, highlight in pairs(groups.syntax) do
    util.link(syntax, highlight)
  end
end

return M
