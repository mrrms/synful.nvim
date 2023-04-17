local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.steel, bg = colour.ultra, gui = 'bold' },
        b = { fg = colour.ultra, bg = colour.bazil, gui = 'bold' },
        c = { fg = colour.metal, bg = colour.olive },
      },
      insert = { b = { fg = colour.pearl, bg = colour.metal, gui = 'bold' } },
      replace = { b = { fg = colour.steel, bg = colour.pearl, gui = 'bold' } },
      visual = { b = { fg = colour.pearl, bg = colour.mauve, gui = 'bold' } },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.pearl, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      },
    },
  },
})
