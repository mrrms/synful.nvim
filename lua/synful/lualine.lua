local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.space, gui = 'bold' },
        b = { fg = colour.metal, bg = colour.space, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      insert = {
        a = { fg = colour.pearl, bg = colour.space, gui = 'bold' },
        b = { fg = colour.pearl, bg = colour.metal, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      replace = {
        a = { fg = colour.pearl, bg = colour.space, gui = 'bold' },
        b = { fg = colour.steel, bg = colour.pearl, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      visual = {
        a = { fg = colour.pearl, bg = colour.space, gui = 'bold' },
        b = { fg = colour.pearl, bg = colour.mauve, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.pearl, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      },
    },
  },
})
