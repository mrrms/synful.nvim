local status, lualine = pcall(require, 'lualine')
if (not status) then return end

local colour = require('synful.colour')

lualine.setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.mauve, gui = 'bold' },
        b = { fg = colour.slate, bg = colour.metal, gui = 'bold' },
        c = { fg = colour.steel, bg = 'NONE' },
      },
      insert = {
        a = { fg = colour.paris, bg = 'NONE', gui = 'bold' },
      },
      visual = {
        a = { fg = colour.ultra, bg = 'NONE', gui = 'bold' },
      },
      replace = {
        a = { fg = colour.space, bg = 'NONE', gui = 'bold' },
      },
      inactive = {
        a = { fg = colour.pearl, bg = 'NONE' },
        b = { fg = colour.slate, bg = 'NONE' },
        c = { fg = colour.pearl, bg = 'NONE' },
      },
    },
  },
})
