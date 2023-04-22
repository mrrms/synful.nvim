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
        a = { fg = colour.paris, bg = colour.bazil, gui = 'bold' },
      },
      visual = {
        a = { fg = colour.ultra, bg = colour.mauve, gui = 'bold' },
      },
      replace = {
        a = { fg = colour.space, bg = colour.rouge, gui = 'bold' },
      },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.slate, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      },
    },
  },
})
