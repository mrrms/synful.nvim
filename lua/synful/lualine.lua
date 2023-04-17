local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.slate, bg = colour.steel, gui = 'bold' },
        c = { fg = colour.raven, bg = colour.space },
      },
      insert = {
        a = { fg = colour.slate, bg = colour.bazil, gui = 'bold' },
      },
      replace = {
        a = { fg = colour.pearl, bg = colour.rouge, gui = 'bold' },
      },
      visual = {
        a = { fg = colour.pearl, bg = colour.royal, gui = 'bold' },
      },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.slate, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      },
    },
  },
})
