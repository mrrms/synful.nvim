local colour = require('synful.colour')

return {
  TabLine               = { fg = colour.stone, bg = 'NONE' },
  TabLineSel            = { fg = colour.amber, bg = 'NONE', bold = true },
  TabLineFill           = { fg = colour.pearl },
  HarpoonActive         = { fg = colour.amber, bg = 'NONE', bold = true },
  HarpoonInactive       = { fg = colour.stone },
  HarpoonNumberActive   = { fg = colour.space, bg = 'NONE' },
  HarpoonNumberInactive = { fg = colour.space, bg = 'NONE' },
}
