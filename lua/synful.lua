local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

local zero_dark   = '#0F1521'
local deep_blue   = '#151D2D'
local bruise      = '#2A293D'
local dead_grey   = '#454575'
local lagoon      = '#6070C1'
local blue        = '#5F79C2'
local pale_blue   = '#7AA7FF'
local fg_dark     = '#676E96'
local grey        = '#8585AA'
local purple      = '#BB91ED'
local pink        = '#AF749C'
local rouge       = '#994455'
local red         = '#883344'
local green       = '#5F875F'
local light_green = '#96C0C0'
local yellow      = '#F2DCD3'
local orange      = '#DB9280'
local bold_light  = '#A8B4F6'
local white       = '#C0C0FC'
local fg          = '#B5B5E3'
local fg_light    = '#DEDEFF'

local editor_syntax = {
  Cursor       = { fg = zero_dark, bg = red },
  CursorLine   = { bg = deep_blue },
  CursorLineNr = { fg = pale_blue },
  Directory    = { fg = lagoon, gui = 'bold' },
  variable     = { fg = fg },
  field        = { fg = fg },
  DiffAdd      = { fg = light_green },
  DiffChange   = { fg = yellow },
  DiffDelete   = { fg = red },
  DiffText     = { fg = lagoon },
  ErrorMsg     = { fg = rouge },
  EndOfBuffer  = { fg = zero_dark, bg = zero_dark },
  VertSplit    = { bg = zero_dark, fg = bruise },
  Folded       = { fg = fg_dark, gui = 'italic' },
  FoldColumn   = { fg = yellow },
  SignColumn   = { fg = yellow },
  IncSearch    = { bg = purple, fg = bruise },
  Substitute   = { bg = lagoon, fg = bruise },
  LineNr       = { fg = dead_grey },
  MatchParen   = { fg = rouge, gui = 'bold' },
  Normal       = { fg = fg_light },
  NormalFloat  = {},
  Pmenu        = { fg = fg, bg = zero_dark },
  PmenuSel     = { fg = zero_dark, bg = light_green },
  PmenuSbar    = { fg = fg },
  PmenuThumb   = { fg = bruise },
  Search       = { fg = white, bg = lagoon },
  SpecialKey   = { bg = dead_grey },
  SpellBad     = { gui = 'underline', sp = red },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  SpellRare    = { gui = 'underline', sp = lagoon },
  TabLine      = { bg = bruise, fg = fg_light },
  TabLineFill  = { bg = bruise, fg = fg_light },
  TabLineSel   = { fg = zero_dark, gui = 'bold', bg = lagoon },
  Title        = { fg = fg_light },
  Visual       = { fg = white, bg = dead_grey },
  VisualNOS    = { fg = white, bg = dead_grey },
  WarningMsg   = { fg = yellow, gui = 'italic' },
  Whitespace   = { fg = pale_blue },
  FloatBorder  = { fg = dead_grey },
  constructor  = { fg = fg },
  Builtin      = { fg = fg_light },
  Return       = { fg = green, gui = 'bold' },

  gitcommitComment        = { fg = dead_grey, gui = 'italic' },
  gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
  gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
  gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
  gitcommitUnmerged       = { fg = green },
  gitcommitBranch         = { fg = purple },
  gitcommitNoBranch       = { fg = purple },
  gitcommitDiscardedType  = { fg = red },
  gitcommitSelectedType   = { fg = green },
  gitcommitUntrackedFile  = { fg = lagoon },
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
  Comment   = { fg = lagoon, gui = 'bold,italic' },
  Constant  = { fg = lagoon },
  String    = { fg = light_green, gui = 'italic' },
  Character = { fg = fg_light, gui = 'bold' },
  Number    = { fg = purple },
  Float     = { fg = purple },
  Boolean   = { fg = purple },
  Command   = { fg = lagoon },
  Noise     = { fg = pink },

  Identifier = { fg = pale_blue },
  Function   = { fg = bold_light, gui = 'bold' },

  Repeat      = { fg = green, gui = 'bold' },
  Statement   = { fg = light_green, gui = 'italic' },
  Conditional = { fg = lagoon, gui = 'italic' },
  Label       = { fg = lagoon },
  Exception   = { fg = lagoon, gui = 'italic' },
  Operator    = { fg = dead_grey },
  Keyword     = { fg = lagoon },

  Include   = { fg = lagoon },
  Define    = { fg = lagoon },
  Macro     = { fg = purple },
  PreProc   = { fg = yellow },
  PreCondit = { fg = yellow },

  Type         = { fg = green },
  StorageClass = { fg = yellow },
  Structure    = { fg = yellow },
  Typedef      = { fg = yellow },

  Special        = { fg = fg },
  SpecialChar    = {},
  Tag            = { fg = orange },
  SpecialComment = { fg = fg_dark, gui = 'bold' },
  Debug          = {},
  Delimiter      = { fg = dead_grey },

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
  xmlEndTag    = { fg = lagoon, gui = 'italic' },
  -- lua.vim
  luaTable     = { fg = fg_light },
  luaBraces    = { fg = dead_grey },
  luaIn        = { fg = lagoon, gui = 'italic' },
  luaTSKeyword = { fg = green, gui = 'bold' },

  -- lua polyglot (tbastos/vim-lua)
  luaFunc           = { fg = lagoon },
  luaFuncCall       = { fg = lagoon },
  luaFuncName       = { fg = lagoon },
  luaBuiltIn        = { fg = lagoon },
  luaLocal          = { fg = green, gui = 'bold' },
  luaSpecialValue   = { fg = purple },
  luaStatement      = { fg = purple },
  luaFunction       = { fg = lagoon, gui = 'italic' },
  luaSymbolOperator = { fg = lagoon },
  luaConstant       = { fg = orange },

  -- zsh.vim
  zshTodo            = code_syntax.Todo,
  zshComment         = code_syntax.Comment,
  zshPreProc         = code_syntax.PreProc,
  zshString          = code_syntax.String,
  zshStringDelimiter = { fg = lagoon },
  zshPrecommand      = { fg = lagoon },
  zshKeyword         = code_syntax.Function,
  zshCommands        = { fg = lagoon },
  zshOptStart        = { fg = lagoon, gui = 'italic' },
  zshOption          = { fg = lagoon, gui = 'italic' },
  zshFunction        = { fg = yellow, gui = 'italic' },
  zshNumber          = code_syntax.Number,
  zshSubst           = { fg = yellow },
  zshSubstDelim      = { fg = lagoon },

  -- rust polyglot (rust.vim)
  rustKeyword     = { fg = orange },
  rustFuncCall    = { fg = lagoon },
  rustModPathSep  = { fg = lagoon },
  rustIdentifier  = { fg = fg_light },
  rustFuncName    = { fg = lagoon },
  rustSigil       = { fg = lagoon },
  rustMacro       = { fg = lagoon },
  rustStorage     = { fg = orange },
  rustModPath     = { fg = fg_light },
  rustEnumVariant = { fg = fg_light },
  rustStructure   = { fg = orange },
  rustTypedef     = { fg = orange },


  -- javascript polyglot (pangloss/vim-javascript)
  jsFunction            = { fg = lagoon, gui = 'italic' },
  jsFuncName            = { fg = pink, gui = 'bold' },
  jsImport              = { fg = lagoon, gui = 'italic' },
  jsFrom                = { fg = lagoon, gui = 'italic' },
  jsStorageClass        = { fg = purple },
  jsAsyncKeyword        = { fg = lagoon, gui = 'italic' },
  jsForAwait            = { fg = lagoon, gui = 'italic' },
  jsArrowFunction       = { fg = dead_grey },
  jsReturn              = { fg = green },
  jsFuncCall            = { fg = bold_light, 'bold' },
  jsFuncBlock           = { fg = bold_light },
  jsFuncBraces          = { fg = dead_grey },
  jsExport              = { fg = lagoon, gui = 'italic' },
  jsGlobalObjects       = { fg = green },
  jsxTagName            = { fg = lagoon },
  jsxComponentName      = { fg = lagoon },
  jsxAttrib             = { fg = pale_blue },
  jsxBraces             = { fg = dead_grey },
  jsTemplateBraces      = { fg = red },
  jsFuncParens          = { fg = dead_grey },
  jsDestructuringBraces = { fg = dead_grey },
  jsObjectBraces        = { fg = dead_grey },
  jsObjectKey           = { fg = pale_blue },
  jsObjectShorthandProp = { fg = fg_light },
  jsNull                = { fg = purple },

  --> telescope
  TelescopeBorder = { fg = dead_grey },

  --> cmp
  CmpCompletionBorder = { fg = dead_grey },

  typescriptAsyncFuncKeyword  = { fg = lagoon, gui = 'italic' },
  typescriptCall              = { fg = fg_light },
  typescriptBraces            = { fg = dead_grey },
  typescriptTemplateSB        = { fg = lagoon },
  typescriptTry               = { fg = lagoon, gui = 'italic' },
  typescriptExceptions        = { fg = lagoon, gui = 'italic' },
  typescriptOperator          = { fg = lagoon, gui = 'italic' },
  typescriptExport            = { fg = lagoon, gui = 'italic' },
  typescriptStatementKeyword  = { fg = lagoon, gui = 'italic' },
  typescriptImport            = { fg = lagoon, gui = 'italic' },
  typescriptArrowFunc         = { fg = purple },
  typescriptArrowFuncArg      = { fg = fg_light },
  typescriptArrayMethod       = { fg = lagoon },
  typescriptStringMethod      = { fg = lagoon },
  typescriptTypeReference     = { fg = yellow },
  typescriptObjectLabel       = { fg = red },
  typescriptParens            = { fg = dead_grey },
  typescriptTypeBrackets      = { fg = dead_grey },
  typescriptXHRMethod         = { fg = lagoon },
  typescriptResponseProp      = { fg = lagoon },
  typescriptBOMLocationMethod = { fg = lagoon },
  typescriptHeadersMethod     = { fg = lagoon },
  typescriptVariable          = { fg = purple },
  TSKeywordFunction           = { fg = lagoon },
  TSConstructor               = { fg = lagoon },
  TSFeild                     = { fg = fg },
  TSKeywordReturn             = { fg = green, gui = 'bold' },
  TSVariable                  = { fg = fg },

  htmlTag = { fg = lagoon },
  htmlEndTag = { fg = lagoon },
}

for group, styles in pairs(lang_syntax) do
  highlight(group, styles)
end

--> Setting Neovim Terminal Color
vim.g.terminal_color_0          = zero_dark
vim.g.terminal_color_1          = red
vim.g.terminal_color_2          = light_green
vim.g.terminal_color_3          = yellow
vim.g.terminal_color_4          = lagoon
vim.g.terminal_color_5          = purple
vim.g.terminal_color_6          = lagoon
vim.g.terminal_color_7          = fg
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = light_green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = lagoon
vim.g.terminal_color_13         = purple
vim.g.terminal_color_14         = lagoon
vim.g.terminal_color_15         = white
vim.g.terminal_color_background = dead_grey --> whoa whoa whoa
vim.g.terminal_color_foreground = fg_light
