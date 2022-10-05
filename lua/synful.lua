local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

local bg_dark     = '#151725'
local bg          = '#2A293D'
local bg_light    = '#444466'
local bg_lighter  = '#454575'
local grey        = '#8585AA'
local hollow      = '#565E99'
local fg_dark     = '#676e96'
local red         = '#9C4F63'
local pink        = '#AF749C'
local rouge       = '#D20434'
local green       = '#5F875F'
local light_green = '#96C0C0'
local pale_blue   = '#7AA7FF'
local blue        = '#6C7DD0'
local deep_blue   = '#445599'
local yellow      = '#ebcb8b'
local orange      = '#DB9280'
local purple      = '#BB91ED'
local fg          = '#a8b4f6'
local fg_light    = '#B5B5E3'
local white       = '#C0C0FC'

--> Editor Highlight
local editor_syntax = {
  Cursor       = { fg = bg_dark, bg = red },
  CursorLine   = { bg = bg },
  CursorLineNr = { fg = pale_blue },
  Directory    = { fg = blue, gui = 'bold' },
  variable     = { fg = fg_light },
  field        = { fg = fg_light },
  DiffAdd      = { fg = light_green },
  DiffChange   = { fg = yellow },
  DiffDelete   = { fg = red },
  DiffText     = { fg = blue },
  ErrorMsg     = { fg = rouge },
  EndOfBuffer  = { bg = bg_dark, fg = bg_dark },
  VertSplit    = { bg = bg_dark, fg = bg },
  Folded       = { fg = fg_dark, gui = 'italic' },
  FoldColumn   = { fg = yellow },
  SignColumn   = { fg = yellow },
  IncSearch    = { bg = purple, fg = bg },
  Substitute   = { bg = blue, fg = bg },
  LineNr       = { fg = bg_lighter },
  MatchParen   = { fg = rouge, gui = 'bold' },
  Normal       = { fg = fg_light }, --> no background colour permits the shell's default
  NormalFloat  = {},
  Pmenu        = { fg = fg, bg = bg_dark },
  PmenuSel     = { bg = bg_lighter, fg = pale_blue },
  PmenuSbar    = { bg = bg },
  PmenuThumb   = { bg = bg_lighter },
  Search       = { fg = white, bg = hollow },
  SpecialKey   = { bg = bg_light },
  SpellBad     = { gui = 'underline', sp = red },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  SpellRare    = { gui = 'underline', sp = blue },
  TabLine      = { bg = bg, fg = fg_light },
  TabLineFill  = { bg = bg, fg = fg_light },
  TabLineSel   = { bg = blue, fg = bg_dark, gui = 'bold' },
  Title        = { fg = fg_light },
  Visual       = { fg = white, bg = deep_blue },
  VisualNOS    = { fg = white, bg = deep_blue },
  WarningMsg   = { fg = yellow, gui = 'italic' },
  Whitespace   = { fg = pale_blue },
  FloatBorder  = { fg = bg_light },
  Constructor  = { fg = fg_light },

  --> git highlighting
  gitcommitComment        = { fg = bg_light, gui = 'italic' },
  gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
  gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
  gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
  gitcommitUnmerged       = { fg = green },
  gitcommitBranch         = { fg = purple },
  gitcommitNoBranch       = { fg = purple },
  gitcommitDiscardedType  = { fg = red },
  gitcommitSelectedType   = { fg = green },
  gitcommitUntrackedFile  = { fg = blue },
  gitcommitDiscardedFile  = { fg = red },
  gitcommitDiscardedArrow = { fg = red },
  gitcommitSelectedFile   = { fg = green },
  gitcommitSelectedArrow  = { fg = green },
  gitcommitUnmergedFile   = { fg = yellow },
  gitcommitUnmergedArrow  = { fg = yellow },
  gitcommitSummary        = { fg = fg_light },
  gitcommitOverflow       = { fg = red },
  gitcommitOnBranch       = {},
  gitcommitHeader         = {},
  gitcommitFile           = {},

  --> User dependent groups
  Conceal      = {},
  ModeMsg      = {},
  MsgArea      = {},
  MsgSeparator = {},
  MoreMsg      = {},
  NonText      = {},
  Question     = {},
  QuickFixLine = {},
  StatusLine   = {},
  StatusLineNC = {},
  WildMenu     = {}
}

for group, styles in pairs(editor_syntax) do
  highlight(group, styles)
end

--> Vim Default Code Syntax
local code_syntax = {
  Comment   = { fg = hollow, gui = 'bold,italic' },
  Constant  = { fg = blue },
  String    = { fg = light_green, gui = 'italic' },
  Character = { fg = fg_light, gui = 'bold' },
  Number    = { fg = purple },
  Float     = { fg = purple },
  Boolean   = { fg = purple },
  Command   = { fg = blue },
  Noise     = { fg = pink },

  Identifier = { fg = fg },
  Function   = { fg = white, gui = 'bold' },

  Repeat      = { fg = green, gui = 'bold' },
  Statement   = { fg = light_green, gui = 'italic' },
  Conditional = { fg = blue, gui = 'italic' },
  Label       = { fg = blue, gui = 'italic' },
  Exception   = { fg = blue, gui = 'italic' },
  Operator    = { fg = bg_lighter },
  Keyword     = { fg = green, gui = 'bold' },

  Include   = { fg = blue },
  Define    = { fg = blue },
  Macro     = { fg = purple },
  PreProc   = { fg = yellow },
  PreCondit = { fg = yellow },

  Type         = { fg = green },
  StorageClass = { fg = yellow },
  Structure    = { fg = yellow },
  Typedef      = { fg = yellow },

  Special        = { fg = blue },
  SpecialChar    = {},
  Tag            = { fg = orange },
  SpecialComment = { fg = fg_dark, gui = 'bold' },
  Debug          = {},
  Delimiter      = {},

  Ignore     = {},
  Underlined = { gui = 'underline' },
  Error      = { fg = rouge },
  Todo       = { fg = pale_blue, gui = 'bold' },
}

for group, styles in pairs(code_syntax) do
  highlight(group, styles)
end

--> Plugin Highlight Groups
local plugin_syntax = {
  GitGutterAdd          = { fg = green },
  GitGutterChange       = { fg = pale_blue },
  GitGutterDelete       = { fg = red },
  GitGutterChangeDelete = { fg = orange },
  diffAdded             = { fg = green },
  diffRemoved           = { fg = rouge },
}

for group, styles in pairs(plugin_syntax) do
  highlight(group, styles)
end

--> Syntax Plugin And Language Highlight Groups
local lang_syntax = {
  xmlEndTag         = { fg = blue, gui = 'italic' },
  -- lua.vim
  luaTable          = { fg = fg_light },
  luaBraces         = { fg = bg_light },
  luaIn             = { fg = blue, gui = 'italic' },
  -- lua polyglot (tbastos/vim-lua)
  luaFunc           = { fg = blue },
  luaFuncCall       = { fg = blue },
  luaFuncName       = { fg = blue },
  luaBuiltIn        = { fg = blue },
  luaLocal          = { fg = purple },
  luaSpecialValue   = { fg = purple },
  luaStatement      = { fg = purple },
  luaFunction       = { fg = blue, gui = 'italic' },
  luaSymbolOperator = { fg = blue },
  luaConstant       = { fg = orange },

  -- zsh.vim
  zshTodo            = code_syntax.Todo,
  zshComment         = code_syntax.Comment,
  zshPreProc         = code_syntax.PreProc,
  zshString          = code_syntax.String,
  zshStringDelimiter = { fg = blue },
  zshPrecommand      = { fg = blue },
  zshKeyword         = code_syntax.Function,
  zshCommands        = { fg = blue },
  zshOptStart        = { fg = blue, gui = 'italic' },
  zshOption          = { fg = blue, gui = 'italic' },
  zshFunction        = { fg = yellow, gui = 'italic' },
  zshNumber          = code_syntax.Number,
  zshSubst           = { fg = yellow },
  zshSubstDelim      = { fg = blue },

  -- rust polyglot (rust.vim)
  rustKeyword     = { fg = orange },
  rustFuncCall    = { fg = blue },
  rustModPathSep  = { fg = blue },
  rustIdentifier  = { fg = fg_light },
  rustFuncName    = { fg = blue },
  rustSigil       = { fg = blue },
  rustMacro       = { fg = blue },
  rustStorage     = { fg = orange },
  rustModPath     = { fg = fg_light },
  rustEnumVariant = { fg = fg_light },
  rustStructure   = { fg = orange },
  rustTypedef     = { fg = orange },


  -- javascript polyglot (pangloss/vim-javascript)
  jsFunction            = { fg = blue, gui = 'italic' },
  jsFuncName            = { fg = pink, gui = 'bold' },
  jsImport              = { fg = blue, gui = 'italic' },
  jsFrom                = { fg = blue, gui = 'italic' },
  jsStorageClass        = { fg = purple },
  jsAsyncKeyword        = { fg = blue, gui = 'italic' },
  jsForAwait            = { fg = blue, gui = 'italic' },
  jsArrowFunction       = { fg = bg_light },
  jsReturn              = { fg = green },
  jsFuncCall            = { fg = fg },
  jsFuncBlock           = { fg = fg },
  jsFuncBraces          = { fg = bg_light },
  jsExport              = { fg = blue, gui = 'italic' },
  jsGlobalObjects       = { fg = green },
  jsxTagName            = { fg = blue },
  jsxComponentName      = { fg = blue },
  jsxAttrib             = { fg = pale_blue },
  jsxBraces             = { fg = bg_light },
  jsTemplateBraces      = { fg = red },
  jsFuncParens          = { fg = bg_light },
  jsDestructuringBraces = { fg = bg_light },
  jsObjectBraces        = { fg = bg_light },
  jsObjectKey           = { fg = pale_blue },
  jsObjectShorthandProp = { fg = fg_light },
  jsNull                = { fg = purple },

  --> telescope
  TelescopeBorder = { fg = bg_light },

  --> cmp
  CmpCompletionBorder = { fg = bg_light },

  typescriptAsyncFuncKeyword  = { fg = blue, gui = 'italic' },
  typescriptCall              = { fg = fg_light },
  typescriptBraces            = { fg = bg_light },
  typescriptTemplateSB        = { fg = blue },
  typescriptTry               = { fg = blue, gui = 'italic' },
  typescriptExceptions        = { fg = blue, gui = 'italic' },
  typescriptOperator          = { fg = blue, gui = 'italic' },
  typescriptExport            = { fg = blue, gui = 'italic' },
  typescriptStatementKeyword  = { fg = blue, gui = 'italic' },
  typescriptImport            = { fg = blue, gui = 'italic' },
  typescriptArrowFunc         = { fg = purple },
  typescriptArrowFuncArg      = { fg = fg_light },
  typescriptArrayMethod       = { fg = blue },
  typescriptStringMethod      = { fg = blue },
  typescriptTypeReference     = { fg = yellow },
  typescriptObjectLabel       = { fg = red },
  typescriptParens            = { fg = bg_lighter },
  typescriptTypeBrackets      = { fg = bg_lighter },
  typescriptXHRMethod         = { fg = blue },
  typescriptResponseProp      = { fg = blue },
  typescriptBOMLocationMethod = { fg = blue },
  typescriptHeadersMethod     = { fg = blue },
  typescriptVariable          = { fg = purple },

  htmlTag = { fg = blue },
  htmlEndTag = { fg = blue },
}

for group, styles in pairs(lang_syntax) do
  highlight(group, styles)
end

--> Setting Neovim Terminal Color
vim.g.terminal_color_0          = bg_dark
vim.g.terminal_color_1          = red
vim.g.terminal_color_2          = light_green
vim.g.terminal_color_3          = yellow
vim.g.terminal_color_4          = blue
vim.g.terminal_color_5          = purple
vim.g.terminal_color_6          = blue
vim.g.terminal_color_7          = fg
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = light_green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = blue
vim.g.terminal_color_13         = purple
vim.g.terminal_color_14         = blue
vim.g.terminal_color_15         = white
vim.g.terminal_color_background = bg_light --> whoa whoa whoa
vim.g.terminal_color_foreground = fg_light
