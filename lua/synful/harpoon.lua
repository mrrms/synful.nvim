local colour = require('synful.colour')

-- harpoon links these groups to tabline & tablinesel
return {
  HarpoonActive         = { fg = colour.slate, bg = 'NONE', gui = 'bold' },
  HarpoonInactive       = { fg = colour.stone, bg = 'NONE' },
  HarpoonNumberActive   = { fg = colour.space, bg = 'NONE' },
  HarpoonNumberInactive = { fg = colour.space, bg = 'NONE' },
}
