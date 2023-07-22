local harpoon = pcall(require, 'harpoon')
if (not harpoon) then return end

local colour = require('synful.colour')

return {
  HarpoonActive         = { fg = colour.slate, bold = true },
  HarpoonInactive       = { fg = colour.stone },
  HarpoonNumberActive   = { link = 'NonText' },
  HarpoonNumberInactive = { link = 'NonText' },
}
