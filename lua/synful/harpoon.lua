local colour = require('synful.colour')

-- harpoon links these groups to tabline & tablinesel
return {
  HarpoonActive         = { fg = colour.slate, bold = true },
  HarpoonInactive       = { fg = colour.stone, bg = 'NONE' },
  HarpoonNumberActive   = { fg = colour.space, bg = 'NONE' },
  HarpoonNumberInactive = { fg = colour.space, bg = 'NONE' },
}
