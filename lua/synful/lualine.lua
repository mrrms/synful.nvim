local status, lualine = pcall(require, 'lualine')
if (not status) then return end

local colour = require('synful.colour')

--stylua: ignore
lualine.setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.royal },
        b = { fg = colour.slate, bg = colour.stone },
        c = { fg = colour.stone, bg = colour.space },
      },
      insert = {
        a = { fg = colour.green, bg = colour.paris, gui = 'bold' },
      },
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
