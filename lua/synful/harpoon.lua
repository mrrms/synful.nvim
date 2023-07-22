local status, harpoon = pcall(require, 'harpoon')
if (not status) then return end

local colour = require('synful.colour')

return {
  HarpoonActive         = { fg = colour.slate, bold = true },
  HarpoonInactive       = { fg = colour.stone },
  HarpoonNumberActive   = { fg = colour.space, bg = 'NONE' },
  HarpoonNumberInactive = { fg = colour.space, bg = 'NONE' },
}
