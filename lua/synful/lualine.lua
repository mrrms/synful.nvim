local colour = require 'synful.colour'

require('lualine').setup {
  options = {
    theme = {
      normal = {
        a = { fg = colour.steel, bg = colour.raven, gui = 'bold' },
        b = { fg = colour.ultra, bg = colour.metal, gui = 'bold' },
        c = { fg = colour.metal, bg = colour.space },
      },
      insert = { a = { fg = colour.pearl, bg = colour.metal, gui = 'bold' } },
      replace = { a = { fg = colour.steel, bg = colour.pearl, gui = 'bold' } },
      visual = { a = { fg = colour.pearl, bg = colour.mauve, gui = 'bold' } },
      inactive = {
        a = { fg = colour.pearl, bg = colour.rouge },
        b = { fg = colour.pearl, bg = colour.rouge },
        c = { fg = colour.pearl, bg = colour.rouge },
      }
    }
  }
}