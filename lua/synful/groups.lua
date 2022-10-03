local M = {}

local colors = {
  bg = '#06111C',
  fg = '#C0C0FC',

  white      = '#FFFFFF',
  grey       = '#444465',
  darkGrey   = '#232333',
  black      = '#000000',
  cyan       = '#7AA7FF',
  paleBlue   = '#6C7DD0',
  blue       = '#445599',
  lightGreen = '#81a1c1',
  green      = '#5F875F',
  red        = '#D20434',
  pink       = '#BB91ED',
  purple     = '#BB80B3',
  yellow     = '#ebcb8b',
  orange     = '#DB9280',

  none = 'NONE'
}

M.themes = {
  White      = { fg = colors.white },
  Grey       = { fg = colors.gray, gui = 'italic,bold' },
  DarkGrey   = { fg = colors.dark, gui = 'italic,bold' },
  Black      = { fg = colors.black },
  Cyan       = { fg = colors.cyan },
  PaleBlue   = { fg = colors.paleBlue },
  Blue       = { fg = colors.blue },
  Green      = { fg = colors.green },
  LightGreen = { fg = colors.lightGreen },
  Red        = { fg = colors.red },
  Pink       = { fg = colors.pink },
  Purple     = { fg = colors.purple },
  Yellow     = { fg = colors.yellow },
  Orange     = { fg = colors.orange },
}

M.editor = {
  Normal = { fg = colors.fg, bg = colors.bg },
  Visual = { fg = colors.cyan, bg = colors.blue },
  Pmenu = { fg = colors.lightGreen, bg = colors.green }
}

M.syntax = {
  Comment     = { fg = colors.grey, gui = 'italic' },
  Constant    = 'Blue',
  String      = 'LightGreen',
  Character   = 'PaleBlue',
  Boolean     = 'Purple',
  Float       = 'Orange',
  Identifier  = 'Cyan',
  Function    = 'Blue',
  Statement   = 'Blue',
  Conditional = 'Purple',
  Repeat      = 'Red',
  Label       = 'Purple',
  Operator    = 'Cyan',
  Keyword     = 'Pink',
  Exception   = 'Orange'
}

return M
