local status, lualine = pcall(require, 'lualine')
if (not status) then return end

local colour = require('synful.colour')

lualine.setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.royal, bg = '#131329', gui = 'bold' },
        b = { fg = colour.slate, bg = '#000000' },
        c = { fg = '#444466', bg = 'NONE' },
      },
      insert = { a = { fg = colour.paris, bg = colour.olive, gui = 'bold' } },
      visual = { a = { fg = colour.metal, bg = colour.capri, gui = 'bold' }, },
      replace = { a = { fg = colour.pearl, bg = colour.mauve, gui = 'bold' }, },
      inactive = {
        a = { fg = colour.pearl, bg = colour.space },
        b = { fg = colour.pearl, bg = colour.space },
        c = { fg = colour.space, bg = colour.space },
      },
    },
  },
})
