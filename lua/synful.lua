local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

--> in that case, this is what a comment looks like
local zero_dark   = '#0F1521'
local deep_blue   = '#151D2D'
local bruise      = '#2A293D'
local death       = '#474773'
local lagoon      = '#6070C1'
local blue        = '#7989FF'
local pale_blue   = '#7AA7FF'
local fg_dark     = '#676E96'
local grey        = '#8585AA'
local purple      = '#BB91ED'
local pink        = '#AF749C'
local red         = '#B8042E'
local rouge       = '#883344'
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
  Directory    = { fg = blue, gui = 'bold' },
  variable     = { fg = fg },
  field        = { fg = fg },
  DiffAdd      = { fg = light_green },
  DiffChange   = { fg = yellow },
  DiffDelete   = { fg = red },
  DiffText     = { fg = blue },
  ErrorMsg     = { fg = rouge },
  EndOfBuffer  = { fg = zero_dark, bg = zero_dark },
  VertSplit    = { bg = zero_dark, fg = bruise },
  Folded       = { fg = fg_dark, gui = 'italic' },
  FoldColumn   = { fg = yellow },
  SignColumn   = { fg = yellow },
  IncSearch    = { bg = purple, fg = bruise },
  Substitute   = { bg = blue, fg = bruise },
  LineNr       = { fg = death },
  MatchParen   = { fg = red, gui = 'bold' },
  Normal       = { fg = fg_light },
  NormalFloat  = { bg = zero_dark },
  Pmenu        = { fg = fg, bg = zero_dark },
  PmenuSel     = { bg = death },
  PmenuSbar    = { fg = fg },
  PmenuThumb   = { fg = bruise },
  Search       = { fg = white, bg = lagoon },
  SpecialKey   = { fg = lagoon },
  SpellBad     = { gui = 'underline', sp = red },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  SpellRare    = { gui = 'underline', sp = blue },
  TabLine      = { bg = bruise, fg = fg_light },
  TabLineFill  = { bg = bruise, fg = fg_light },
  TabLineSel   = { fg = zero_dark, gui = 'bold', bg = blue },
  Title        = { fg = fg_light },
  Visual       = { fg = white, bg = death },
  VisualNOS    = { fg = white, bg = rouge },
  WarningMsg   = { fg = yellow, gui = 'italic' },
  Whitespace   = { fg = pale_blue },
  FloatBorder  = { fg = death },
  constructor  = { fg = bold_light },
  Builtin      = { fg = fg_light },
  Return       = { fg = green, gui = 'bold' },

  gitcommitComment        = { fg = death, gui = 'italic' },
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
  Comment   = { fg = death, gui = 'bold,italic' },
  Constant  = { fg = blue },
  String    = { fg = light_green, gui = 'italic' },
  Character = { fg = fg_light, gui = 'bold' },
  Number    = { fg = purple },
  Float     = { fg = purple },
  Boolean   = { fg = purple },
  Command   = { fg = blue },
  Noise     = { fg = pink },
  Identifier = { fg = bold_light },
  Function   = { fg = bold_light, gui = 'bold' },
  Repeat      = { fg = green, gui = 'bold' },
  Statement   = { fg = light_green, gui = 'italic' },
  Conditional = { fg = blue, gui = 'italic' },
  Label       = { fg = lagoon },
  Exception   = { fg = blue, gui = 'italic' },
  Operator    = { fg = lagoon },
  keyword     = { fg = blue, gui = 'bold' },
  Include   = { fg = blue, bold = 'bold' },
  Define    = { fg = blue },
  Macro     = { fg = purple },
  PreProc   = { fg = yellow },
  PreCondit = { fg = yellow },
  Type         = { fg = green },
  StorageClass = { fg = yellow },
  Structure    = { fg = yellow },
  Typedef      = { fg = yellow },
  Special      = { fg = lagoon },
  SpecialChar    = { fg = death },
  Tag            = { fg = orange },
  SpecialComment = { fg = fg_dark, gui = 'bold' },
  Debug          = {},
  Delimiter      = { fg = death },
  Ignore     = {},
  Underlined = { gui = 'underline' },
  Error      = { fg = red },
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
  diffRemoved           = { fg = red },
}

for group, styles in pairs(plugin_syntax) do
  highlight(group, styles)
end

--> Syntax Plugin And Language Highlight Groups
local lang_syntax = {
  xmlEndTag    = { fg = blue, gui = 'italic' },
  --> lua.vim
  luaTable     = { fg = death },
  luaBraces    = { fg = death },
  luaParen     = { fg = death },
  luaIn        = { fg = blue, gui = 'italic' },
  luaKeyword = { fg = green, gui = 'bold' },

  --> lua polyglot (tbastos/vim-lua)
  luaFunc           = { fg = blue },
  luaFuncCall       = { fg = blue },
  luaTableBlock     = { fg = death },
  luaFunctionBlock  = { fg = death },
  luaFuncName       = { fg = blue },
  luaBuiltIn        = { fg = blue },
  luaLocal          = { fg = green, gui = 'bold' },
  luaSpecialValue   = { fg = purple },
  luaStatement      = { fg = green, gui = 'bold' },
  luaFunction       = { fg = blue, gui = 'italic' },
  luaSymbolOperator = { fg = death },
  luaConstant       = { fg = orange },

  --> zsh.vim
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

  --> rust polyglot (rust.vim)
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

  --> javascript polyglot (pangloss/vim-javascript)
  jsFunction            = { fg = lagoon },
  jsFuncName            = { fg = pink, gui = 'bold' },
  jsImport              = { fg = lagoon },
  jsFrom                = { fg = blue, gui = 'italic' },
  jsParen               = { fg = lagoon },
  jsStorageClass        = { fg = lagoon },
  jsAsyncKeyword        = { fg = blue, gui = 'italic' },
  jsForAwait            = { fg = blue, gui = 'italic' },
  jsArrowFunction       = { fg = death },
  jsReturn              = { fg = green, gui = 'bold' },
  jsFuncBlock           = { fg = lagoon, gui = 'bold' },
  jsParens              = { fg = death },
  jsFuncCall            = { fg = bold_light, 'bold' },
  jsFuncBraces          = { fg = death },
  jsExport              = { fg = lagoon },
  jsGlobalObjects       = { fg = green },
  jsxTagName            = { fg = blue, gui = 'bold' },
  jsxComponentName      = { fg = blue },
  jsxAttrib             = { fg = pale_blue },
  jsxBraces             = { fg = death },
  jsTemplateBraces      = { fg = red },
  jsFuncParens          = { fg = death },
  jsModuleBraces        = { fg = death },
  jsDestructuringBraces = { fg = death },
  jsObjectBraces        = { fg = death },
  jsObjectKey           = { fg = pale_blue },
  jsObjectShorthandProp = { fg = lagoon },
  jsNull                = { fg = purple },
  NvimInternalError     = { fg = rouge },

  TelescopeBorder = { fg = death },

  CmpCompletionBorder = { fg = death },
  CmpItemAbbrMatch = { fg = pale_blue },
  CmpItemAbbrMatchFuzzy = { fg = pale_blue },
  CmpItemKindFunction = { fg = purple },
  CmpItemKindMethod = {fg = purple },
  CmpItemKindVariable = { fg = light_green },
  CmpItemKindKeyword = { fg= yellow },
  CmpItemKindColor = { fg = bold_light },
  CmpItemKindConstant = { fg = blue },
  CmpItemKindDefault = { fg = blue },
  CmpItemKindFolder = { fg = green, gui = 'bold' },
  CmpItemKindMatchFuzzy = { fg = red },
  CmpItemKindOperator = { fg = bold_light },
  CmpItemKindProperty = { fg = purple },
  CmpItemMenu = { fg = pink, gui = 'bold,italic' },

  typescriptAsyncFuncKeyword  = { fg = blue, gui = 'italic' },
  typescriptCall              = { fg = fg_light },
  typescriptBraces            = { fg = death },
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
  typescriptParens            = { fg = death },
  typescriptTypeBrackets      = { fg = death },
  typescriptXHRMethod         = { fg = blue },
  typescriptResponseProp      = { fg = blue },
  typescriptBOMLocationMethod = { fg = blue },
  typescriptHeadersMethod     = { fg = blue },
  typescriptVariable          = { fg = purple },
  KeywordFunction             = { fg = blue },
  Field                       = { fg = fg },
  KeywordReturn               = { fg = green, gui = 'italic' },
  htmlTag = { fg = blue },
  htmlEndTag = { fg = blue },
}

for group, styles in pairs(lang_syntax) do
  highlight(group, styles)
end

--> Setting Neovim Terminal Color
vim.g.terminal_color_0          = zero_dark
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
vim.g.terminal_color_background = death
vim.g.terminal_color_foreground = fg_light

vim.api.nvim_set(0, "@keyword.return.javascript", { link = "Return" })
