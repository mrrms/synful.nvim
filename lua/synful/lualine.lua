local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.slate, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space },
      },
      insert = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.slate, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space },
      },
      replace = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.steel, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space },
      },
      visual = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.slate, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.steel, bg = colour.space },
      },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.slate, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      },
    },
  },
})
