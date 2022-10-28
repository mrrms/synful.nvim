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
local death       = '#444480'
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
  Boolean             = { fg = purple },
  Character           = { fg = fg_light, gui = 'bold' },
  Command             = { fg = blue },
  Comment             = { fg = death, gui = 'bold,italic' },
  Conditional         = { fg = blue, gui = 'italic' },
  Constant            = { fg = blue },
  Debug               = { fg = red },
  Define              = { fg = blue },
  Delimiter           = { fg = death },
  Error               = { fg = red },
  Exception           = { fg = blue, gui = 'italic' },
  Field               = { fg = fg },
  Float               = { fg = purple },
  Function            = { fg = bold_light, gui = 'bold' },
  Identifier          = { fg = bold_light },
  Ignore              = { fg = yellow },
  Include             = { fg = blue, bold = 'bold' },
  KeywordFunction     = { fg = blue },
  KeywordReturn       = { fg = green, gui = 'italic' },
  Label               = { fg = lagoon },
  Macro               = { fg = purple },
  Noise               = { fg = pink },
  Number              = { fg = purple },
  NvimInternalError   = { fg = rouge },
  Operator            = { fg = death },
  PreCondit           = { fg = yellow },
  PreProc             = { fg = yellow },
  Repeat              = { fg = green, gui = 'bold' },
  Special             = { fg = lagoon },
  SpecialChar         = { fg = death },
  SpecialComment      = { fg = fg_dark, gui = 'bold' },
  Statement           = { fg = light_green, gui = 'italic' },
  StorageClass        = { fg = purple, gui = 'italic' },
  String              = { fg = light_green, gui = 'italic' },
  Structure           = { fg = yellow },
  Tag                 = { fg = orange },
  TelescopeBorder     = { fg = death },
  Todo                = { fg = pale_blue, gui = 'bold' },
  Type                = { fg = green },
  Typedef             = { fg = yellow },
  Underlined          = { gui = 'underline' },
  htmlEndTag          = { fg = blue },
  htmlTag             = { fg = blue },
  keyword             = { fg = blue, gui = 'bold' },
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
  luaConstant       = { fg = purple },

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
  jsFuncName            = { fg = bold_light, gui = 'bold' },
  jsImport              = { fg = lagoon },
  jsFrom                = { fg = blue, gui = 'italic' },
  jsParen               = { fg = pale_blue },
  jsStorageClass        = { fg = lagoon },
  jsAsyncKeyword        = { fg = blue, gui = 'italic' },
  jsForAwait            = { fg = blue, gui = 'italic' },
  jsArrowFunction       = { fg = death },
  jsReturn              = { fg = green, gui = 'bold' },
  jsFuncBlock           = { fg = pale_blue, gui = 'bold' },
  jsParens              = { fg = death },
  jsFuncCall            = { fg = bold_light, gui = 'bold' },
  jsFuncBraces          = { fg = death },
  jsExport              = { fg = lagoon },
  jsGlobalObjects       = { fg = lagoon, gui = 'bold' },
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
  jsObjectShorthandProp = { fg = pale_blue },
  jsNull                = { fg = purple },
  jsModuleComma         = { fg = death },
  jsObject              = { fg = death },
  jsBrackets            = { fg = death },
  jsTernaryIf           = { fg = purple },
  jsTernaryOperator     = { fg = purple },
  jsObjectColon         = { fg = death },
  jsNoise               = { fg = death },
  jsFuncArgs            = { fg = pale_blue },
  jsFuncArgsCommas      = { fg = death },
  jsTemplateString      = { fg = death, gui = 'bold,italic' },
  jsObjectSeparator     = { fg = death },
  jsObjectValue         = { fg = bold_light, gui = 'bold' },
  jsObjectObjectProp    = { fg = purple, gui = 'italic' },

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


  tsxAttrib                   = { fg = pale_blue },
  tsxCloseString              = { fg = death },
  tsxEqual                    = { fg = death },
  tsxTag                      = { fg = death },
  tsxTagName                  = { fg = lagoon, gui = 'bold' },
  txsRegion                   = { fg = death },
  typescriptArrayMethod       = { fg = blue },
  typescriptArrowFunc         = { fg = death },
  typescriptArrowFuncArg      = { fg = fg_light },
  typescriptAssign            = { fg = death },
  typescriptAsyncFuncKeyword  = { fg = blue, gui = 'italic' },
  typescriptBOMLocationMethod = { fg = blue },
  typescriptBlock             = { fg = bold_light },
  typescriptBraces            = { fg = death },
  typescriptCall              = { fg = fg_light },
  typescriptDOMDocProp        = { fg = blue },
  typescriptDOMWindowProp     = { fg = blue },
  typescriptDotNotation       = { fg = rouge },
  typescriptExceptions        = { fg = blue, gui = 'italic' },
  typescriptExport            = { fg = lagoon, gui = 'bold' },
  typescriptFuncKeyword       = { fg = lagoon, gui = 'bold' },
  typescriptHeadersMethod     = { fg = blue },
  typescriptIdentifierName    = { fg = fg, gui = 'italic' },
  typescriptImport            = { fg = lagoon, gui = 'bold' },
  typescriptObjectColon       = { fg = death },
  typescriptObjectLabel       = { fg = pale_blue },
  typescriptObjectLiteral     = { fg = fg, gui = 'italic' },
  typescriptOperator          = { fg = blue, gui = 'italic' },
  typescriptParens            = { fg = death },
  typescriptProp              = { fg = pale_blue },
  typescriptProperty          = { fg = death },
  typescriptResponseProp      = { fg = blue },
  typescriptStatementKeyword  = { fg = green, gui = 'bold' },
  typescriptStringMethod      = { fg = blue },
  typescriptTemplateSB        = { fg = blue },
  typescriptTry               = { fg = blue, gui = 'italic' },
  typescriptTypeBrackets      = { fg = death },
  typescriptTypeReference     = { fg = yellow },
  typescriptVariable          = { fg = lagoon },
  typescriptXHRMethod         = { fg = blue },
  typescriptDestructureVariable = { fg = bold_light },
  typescriptBOMWindowProp       = { fg = blue, gui = 'bold' },
  typescriptArray             = { fg = death },
  tsxCloseTag                 = { fg = death },
  tsxRegion                   = { fg = death },
  typescriptTernary           = { fg = orange },
  typescriptTernaryOp         = { fg = orange },
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
