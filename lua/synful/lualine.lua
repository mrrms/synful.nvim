local status, lualine = pcall(require, 'lualine')
if (not status) then return end

local colour = require('synful.colour')

--stylua: ignore
lualine.setup({
  options = {
    theme = {
      normal = {
        a = { fg = colour.pearl, bg = colour.olive },
        b = { fg = colour.pearl, bg = colour.metal },
        c = { fg = colour.pearl, bg = colour.space },
      },
      insert = { a = { fg = colour.pearl, bg = colour.olive }, },
      visual = { a = { fg = colour.pearl, bg = colour.capri }, },
      replace = { a = { fg = colour.pearl, bg = colour.mauve }, },
      inactive = {
        a = { fg = colour.pearl, bg = colour.space },
        b = { fg = colour.pearl, bg = colour.space },
        c = { fg = colour.space, bg = colour.space },
      },
    },
  },
})
