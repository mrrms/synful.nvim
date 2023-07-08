local colour = require('synful.colour')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = 'NONE', gui = 'bold' },
        b = { fg = colour.slate, bg = 'NONE', gui = 'bold' },
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
