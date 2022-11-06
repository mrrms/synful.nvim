local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

local zero_dark  = '#0F1521'
local deep_blue  = '#151D2D'
local navy       = '#445599'
local bruise     = '#404065'
local death      = '#505075'
local lagoon     = '#6070C1'
local pale_blue  = '#7AA7FF'
local fg_dark    = '#676E96'
local grey       = '#8585AA'
local purple     = '#BB91ED'
local pink       = '#AF749C'
local red        = '#B8042E'
local rouge      = '#883344'
local green      = '#5F875F'
local pale_green = '#96C0C0'
local yellow     = '#F2DCD3'
local orange     = '#DB9280'
local bold_light = '#A8B4F6'
local white      = '#C0C0FC'
local fg         = '#B5B5E3'
local fg_light   = '#DEDEFF'

local editor_syntax = {
  Cursor       = { fg = zero_dark, bg = red },
  CursorLine   = { bg = deep_blue },
  CursorLineNr = { fg = pale_blue },
  Directory    = { fg = lagoon, gui = 'bold' },
  variable     = { fg = fg },
  field        = { fg = fg },
  DiffAdd      = { fg = pale_green },
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
  LineNr       = { fg = death },
  MatchParen   = { fg = red, gui = 'bold' },
  Normal       = { fg = fg_light },
  NormalFloat  = { bg = zero_dark },
  Pmenu        = { fg = fg, bg = zero_dark },
  PmenuSel     = { bg = navy },
  PmenuSbar    = { fg = fg },
  PmenuThumb   = { fg = bruise },
  Search       = { fg = white, bg = lagoon },
  SpecialKey   = { fg = lagoon },
  SpellBad     = { gui = 'underline', sp = red },
  SpellRare    = { gui = 'underline', sp = lagoon },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  TabLine      = { bg = bruise, fg = fg_light },
  TabLineFill  = { bg = bruise, fg = fg_light },
  TabLineSel   = { fg = zero_dark, gui = 'bold', bg = lagoon },
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
  gitcommitBranch         = { fg = purple },
  gitcommitNoBranch       = { fg = purple },
  gitcommitDiscardedType  = { fg = red },
  gitcommitDiscardedFile  = { fg = red },
  gitcommitDiscardedArrow = { fg = red },
  gitcommitOverflow       = { fg = red },
  gitcommitUntrackedFile  = { fg = lagoon },
  gitcommitUnmerged       = { fg = green },
  gitcommitSelectedFile   = { fg = green },
  gitcommitSelectedType   = { fg = green },
  gitcommitSelectedArrow  = { fg = green },
  gitcommitUnmergedFile   = { fg = yellow },
  gitcommitUnmergedArrow  = { fg = yellow },
  gitcommitSummary        = { fg = fg_light },
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
  Boolean           = { fg = purple },
  Character         = { fg = fg_light, gui = 'bold' },
  Command           = { fg = lagoon },
  Comment           = { fg = death, gui = 'bold,italic' },
  Conditional       = { fg = navy },
  Constant          = { fg = lagoon },
  Debug             = { fg = red },
  Define            = { fg = lagoon },
  Delimiter         = { fg = death },
  Error             = { fg = red },
  Exception         = { fg = lagoon, gui = 'italic' },
  Function          = { fg = bold_light, gui = 'bold' },
  Field             = { fg = fg },
  Float             = { fg = purple },
  Identifier        = { fg = bold_light },
  Ignore            = { fg = yellow },
  Include           = { fg = lagoon, bold = 'bold' },
  KeywordFunction   = { fg = lagoon },
  KeywordReturn     = { fg = green, gui = 'italic' },
  Label             = { fg = lagoon },
  Macro             = { fg = purple },
  Noise             = { fg = pink },
  Number            = { fg = purple },
  NvimInternalError = { fg = rouge },
  Operator          = { fg = pale_blue },
  PreCondit         = { fg = yellow },
  PreProc           = { fg = yellow },
  Repeat            = { fg = green, gui = 'bold' },
  Special           = { fg = lagoon },
  SpecialChar       = { fg = death },
  SpecialComment    = { fg = fg_dark, gui = 'bold' },
  Statement         = { fg = pale_green, gui = 'italic' },
  StorageClass      = { fg = purple, gui = 'italic' },
  String            = { fg = pale_green, gui = 'italic' },
  Structure         = { fg = yellow },
  Tag               = { fg = orange },
  TelescopeBorder   = { fg = death },
  Todo              = { fg = pale_blue, gui = 'bold' },
  Type              = { fg = pale_green, gui = 'bold' },
  Typedef           = { fg = yellow },
  Underlined        = { gui = 'underline' },
  htmlEndTag        = { fg = lagoon },
  htmlTag           = { fg = lagoon },
  keyword           = { fg = lagoon, gui = 'bold' },
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
  xmlEndTag = { fg = lagoon, gui = 'italic' },

  --> lua.vim
  luaTable   = { fg = death },
  luaBraces  = { fg = death },
  luaParen   = { fg = death },
  luaParens  = { fg = death },
  luaIn      = { fg = lagoon, gui = 'italic' },
  luaComma   = { fg = death },
  luaKeyword = { fg = green, gui = 'bold' },

  --> lua polyglot (tbastos/vim-lua)
  luaFunc           = { fg = lagoon },
  luaFuncCall       = { fg = lagoon },
  luaFuncParens     = { fg = death },
  luaFuncArgsComma  = { fg = death },
  luaTableBlock     = { fg = pale_blue },
  luaFunctionBlock  = { fg = death },
  luaFuncName       = { fg = bold_light, gui = 'bold' },
  luaBuiltIn        = { fg = lagoon },
  luaLocal          = { fg = green, gui = 'bold' },
  luaSpecialValue   = { fg = lagoon, gui = 'bold' },
  luaStringLongTag  = { fg = death, gui = 'bold' },
  luaStatement      = { fg = green, gui = 'bold' },
  luaFunction       = { fg = lagoon, gui = 'italic' },
  luaSymbolOperator = { fg = death },
  luaConstant       = { fg = purple },

  --> zsh.vim
  zshTodo            = code_syntax.Todo,
  zshComment         = code_syntax.Comment,
  zshPreProc         = code_syntax.PreProc,
  zshString          = code_syntax.String,
  zshStringDelimiter = { fg = lagoon },
  zshPrecommand      = { fg = lagoon },
  zshNumber          = code_syntax.Number,
  zshKeyword         = code_syntax.Function,
  zshCommands        = { fg = lagoon },
  zshOptStart        = { fg = lagoon, gui = 'italic' },
  zshOption          = { fg = lagoon, gui = 'italic' },
  zshFunction        = { fg = yellow, gui = 'italic' },
  zshSubst           = { fg = yellow },
  zshSubstDelim      = { fg = lagoon },
  shStatement        = { fg = pale_blue, gui = 'bold' },

  --> rust polyglot (rust.vim)
  rustKeyword     = { fg = orange },
  rustFuncCall    = { fg = lagoon },
  rustModPathSep  = { fg = lagoon },
  rustIdentifier  = { fg = fg_light },
  rustFuncName    = { fg = bold_light, gui = 'bold' },
  rustSigil       = { fg = lagoon },
  rustMacro       = { fg = lagoon },
  rustStorage     = { fg = orange },
  rustModPath     = { fg = fg_light },
  rustEnumVariant = { fg = fg_light },
  rustStructure   = { fg = orange },
  rustTypedef     = { fg = orange },

  --> javascript polyglot (pangloss/vim-javascript)
  jsFunction            = { fg = lagoon },
  jsImport              = { fg = lagoon },
  jsStorageClass        = { fg = lagoon },
  jsExport              = { fg = lagoon },
  jsGlobalObjects       = { fg = lagoon, gui = 'bold' },
  jsFuncName            = { fg = bold_light, gui = 'bold' },
  jsFrom                = { fg = lagoon, gui = 'italic' },
  jsParen               = { fg = pale_blue },
  jsAsyncKeyword        = { fg = lagoon, gui = 'italic' },
  jsForAwait            = { fg = lagoon, gui = 'italic' },
  jsArrowFunction       = { fg = death },
  jsReturn              = { fg = green, gui = 'bold' },
  jsFuncBlock           = { fg = pale_blue, gui = 'bold' },
  jsParens              = { fg = death },
  jsFuncCall            = { fg = bold_light, gui = 'bold' },
  jsFuncBraces          = { fg = death },
  jsxTagName            = { fg = lagoon, gui = 'bold' },
  jsxComponentName      = { fg = lagoon },
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

  jsonQuote = { fg = navy },

  CmpCompletionBorder = { fg = death },
  CmpItemAbbrMatch = { fg = pale_blue },
  CmpItemAbbrMatchFuzzy = { fg = pale_blue },
  CmpItemKindFunction = { fg = purple },
  CmpItemKindMethod = { fg = purple },
  CmpItemKindVariable = { fg = pale_green },
  CmpItemKindKeyword = { fg = yellow },
  CmpItemKindColor = { fg = bold_light },
  CmpItemKindConstant = { fg = lagoon },
  CmpItemKindDefault = { fg = lagoon },
  CmpItemKindFolder = { fg = green, gui = 'bold' },
  CmpItemKindMatchFuzzy = { fg = red },
  CmpItemKindOperator = { fg = bold_light },
  CmpItemKindProperty = { fg = purple },
  CmpItemMenu = { fg = pink, gui = 'bold,italic' },

  tsxAttrib                     = { fg = pale_blue },
  tsxCloseString                = { fg = death },
  tsxCloseTag                   = { fg = death },
  tsxEqual                      = { fg = death },
  tsxRegion                     = { fg = death },
  tsxTag                        = { fg = death },
  tsxTagName                    = { fg = navy, gui = 'bold' },
  txsRegion                     = { fg = death },
  typescriptArray               = { fg = death },
  typescriptArrayMethod         = { fg = lagoon },
  typescriptArrowFunc           = { fg = death },
  typescriptArrowFuncArg        = { fg = fg_light },
  typescriptAssign              = { fg = death },
  typescriptAsyncFuncKeyword    = { fg = lagoon, gui = 'italic' },
  typescriptBOM                 = { fg = bold_light },
  typescriptBOMLocationMethod   = { fg = lagoon },
  typescriptBOMWindowProp       = { fg = pale_green },
  typescriptBlock               = { fg = bold_light },
  typescriptBraces              = { fg = death },
  typescriptCall                = { fg = fg_light },
  typescriptDOMDocProp          = { fg = lagoon },
  typescriptDOMWindowProp       = { fg = lagoon },
  typescriptDestructureVariable = { fg = bold_light },
  typescriptDotNotation         = { fg = rouge },
  typescriptExceptions          = { fg = lagoon },
  typescriptExport              = { fg = navy, gui = 'bold' },
  typescriptFuncKeyword         = { fg = navy, gui = 'bold' },
  typescriptHeadersMethod       = { fg = lagoon },
  typescriptIdentifierName      = { fg = navy },
  typescriptImport              = { fg = navy, gui = 'bold' },
  typescriptObjectColon         = { fg = death },
  typescriptObjectLabel         = { fg = pale_blue },
  typescriptObjectLiteral       = { fg = fg },
  typescriptOperator            = { fg = lagoon },
  typescriptParens              = { fg = death },
  typescriptProp                = { fg = pale_blue },
  typescriptProperty            = { fg = death },
  typescriptResponseProp        = { fg = lagoon },
  typescriptStatementKeyword    = { fg = green, gui = 'bold' },
  typescriptStringMethod        = { fg = lagoon },
  typescriptTemplate            = { fg = bruise, gui = 'italic' },
  typescriptTemplateSB          = { fg = lagoon },
  typescriptTernary             = { fg = rouge },
  typescriptTernaryOp           = { fg = rouge },
  typescriptTry                 = { fg = lagoon, gui = 'italic' },
  typescriptTypeBrackets        = { fg = death },
  typescriptUnaryOp             = { fg = rouge },
  typescriptBinaryOp            = { fg = rouge },
  typescriptVariable            = { fg = lagoon },
  typescriptXHRMethod           = { fg = lagoon },
  typescriptTypeReference       = { fg = pale_green, gui = 'bold' },
  typescriptTypeCase            = { fg = navy },
}

for group, styles in pairs(lang_syntax) do
  highlight(group, styles)
end

--> Setting Neovim Terminal Color
vim.g.terminal_color_0          = zero_dark
vim.g.terminal_color_1          = red
vim.g.terminal_color_2          = pale_green
vim.g.terminal_color_3          = yellow
vim.g.terminal_color_4          = lagoon
vim.g.terminal_color_5          = purple
vim.g.terminal_color_6          = lagoon
vim.g.terminal_color_7          = fg
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = pale_green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = lagoon
vim.g.terminal_color_13         = purple
vim.g.terminal_color_14         = lagoon
vim.g.terminal_color_15         = white
vim.g.terminal_color_background = death
vim.g.terminal_color_foreground = fg_light
