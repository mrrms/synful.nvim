-- vim.cmd('highlight! link HarpoonInactive LineNr')
-- vim.cmd('highlight! link HarpoonActive mailSubject')
-- vim.cmd('highlight! link HarpoonNumberActive EndOfBuffer')
-- vim.cmd('highlight! link HarpoonNumberInactive EndOfBuffer')

local colour = require('synful.colour')

return {
  HarpoonActive         = { fg = colour.slate, bold = true },
  HarpoonInactive       = { fg = colour.stone, bg = 'NONE' },
  HarpoonNumberActive   = { fg = colour.space, bg = 'NONE' },
  HarpoonNumberInactive = { fg = colour.space, bg = 'NONE' },
}
