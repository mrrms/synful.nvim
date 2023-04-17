local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.metal, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      insert = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.pearl, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      replace = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.steel, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space, gui = 'italic' },
      },
      visual = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.pearl, bg = colour.steel, gui = 'bold' },
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
