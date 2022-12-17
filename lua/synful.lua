local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

local zero_dark  = '#090B12'
local deep_blue  = '#111119'
local death      = '#404060'
local navy       = '#445599'
local lagoon     = '#6070C1'
local pale_blue  = '#7AA7FF'
local grey       = '#8585AA'
local purple     = '#BB91ED'
local pink       = '#AF749C'
local red        = '#883344'
local rouge      = '#553333'
local yellow     = '#F2DCD3'
local orange     = '#DB9280'
local green      = '#5F875F'
local pale_green = '#96C0C0'
local freeze     = '#A8B4F6'
local icicle     = '#C0C0FC'
local white      = '#DEDEFF'

local editor_syntax = {
  Cursor                  = { fg = zero_dark, bg = red },
  CursorLine              = { bg = deep_blue },
  CursorLineNr            = { fg = pale_blue },
  Directory               = { fg = lagoon, gui = 'bold' },
  variable                = { fg = freeze },
  field                   = { fg = freeze },
  DiffAdd                 = { fg = pale_green },
  DiffChange              = { fg = yellow },
  DiffDelete              = { fg = red },
  DiffText                = { fg = lagoon },
  ErrorMsg                = { fg = red, bg = rouge },
  EndOfBuffer             = { fg = zero_dark, bg = zero_dark },
  VertSplit               = { bg = zero_dark, fg = death },
  Folded                  = { fg = death, gui = 'italic' },
  FoldColumn              = { fg = yellow },
  SignColumn              = { fg = yellow },
  IncSearch               = { bg = purple, fg = death },
  Substitute              = { bg = lagoon, fg = death },
  LineNr                  = { fg = death },
  MatchParen              = { fg = red, gui = 'bold' },
  Normal                  = { fg = freeze },
  NormalFloat             = { bg = zero_dark },
  Pmenu                   = { fg = freeze, bg = zero_dark },
  PmenuSel                = { bg = navy },
  PmenuSbar               = { fg = freeze },
  PmenuThumb              = { fg = navy },
  Search                  = { fg = icicle, bg = lagoon },
  SpecialKey              = { fg = lagoon },
  SpellBad                = { gui = 'underline', sp = red },
  SpellRare               = { gui = 'underline', sp = lagoon },
  SpellCap                = { gui = 'underline', sp = yellow },
  SpellLocal              = { gui = 'underline', sp = orange },
  TabLine                 = { bg = death, fg = white },
  TabLineFill             = { bg = death, fg = white },
  TabLineSel              = { fg = zero_dark, gui = 'bold', bg = lagoon },
  Title                   = { fg = white },
  Visual                  = { fg = icicle, bg = navy },
  VisualNOS               = { fg = icicle, bg = rouge },
  WarningMsg              = { fg = yellow, gui = 'italic' },
  Whitespace              = { fg = pale_blue },
  FloatBorder             = { fg = death },
  constructor             = { fg = freeze },
  Builtin                 = { fg = white },
  Return                  = { fg = green, gui = 'bold' },
  gitcommitComment        = { fg = death, gui = 'italic' },
  gitcommitUntracked      = { fg = death, gui = 'italic' },
  gitcommitDiscarded      = { fg = death, gui = 'italic' },
  gitcommitSelected       = { fg = death, gui = 'italic' },
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
  gitcommitSummary        = { fg = white },
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
  Boolean            = { fg = purple },
  Character          = { fg = white, gui = 'bold' },
  Command            = { fg = lagoon },
  Comment            = { fg = death, gui = 'bold,italic' },
  Conditional        = { fg = green, gui = 'italic' },
  Constant           = { fg = lagoon },
  Debug              = { fg = red },
  Define             = { fg = lagoon },
  Delimiter          = { fg = death },
  Error              = { fg = rouge },
  Exception          = { fg = lagoon, gui = 'italic' },
  Function           = { fg = freeze, gui = 'bold' },
  Field              = { fg = freeze },
  Float              = { fg = purple },
  Identifier         = { fg = freeze },
  Ignore             = { fg = yellow },
  Include            = { fg = lagoon, bold = 'bold' },
  KeywordFunction    = { fg = lagoon },
  KeywordReturn      = { fg = green, gui = 'italic' },
  Label              = { fg = lagoon },
  Macro              = { fg = purple },
  Noise              = { fg = pink },
  Number             = { fg = purple },
  NvimInternalError  = { fg = red, bg = rouge },
  Operator           = { fg = pale_blue },
  PreCondit          = { fg = yellow },
  PreProc            = { fg = yellow },
  Repeat             = { fg = green, gui = 'bold' },
  Special            = { fg = lagoon },
  SpecialChar        = { fg = rouge },
  SpecialComment     = { fg = death, gui = 'bold' },
  Statement          = { fg = pale_green, gui = 'italic' },
  StorageClass       = { fg = purple, gui = 'italic' },
  String             = { fg = pale_green, gui = 'italic' },
  Structure          = { fg = yellow },
  Tag                = { fg = orange },
  TelescopeBorder    = { fg = death },
  Todo               = { fg = pale_blue, gui = 'bold' },
  Type               = { fg = pale_green, gui = 'bold' },
  Typedef            = { fg = yellow },
  Underlined         = { gui = 'underline' },
  htmlEndTag         = { fg = death },
  htmlTag            = { fg = death },
  htmlHead           = { fg = lagoon },
  htmlTagN           = { fg = navy },
  htmlTagName        = { fg = navy },
  htmlSpecialTagName = { fg = navy },
  htmlArg            = { fg = pale_blue },
  keyword            = { fg = lagoon, gui = 'bold' },

  DiagnosticWarn  = { fg = yellow, bg = orange, gui = 'italic' },
  DiagnosticInfo  = { fg = pale_blue, bg = navy, gui = 'bold' },
  DiagnosticHint  = { fg = freeze, bg = lagoon, gui = 'bold' },
  DiagnosticError = { fg = red, bg = rouge, gui = 'bold' },

  DiagnosticVirtualTextInfo = { fg = pale_blue, bg = navy },
  DiagnosticVirtualTextWarn = { fg = yellow, bg = orange },
  DiagnosticVirtualTextHint = { fg = freeze, bg = lagoon },
  DiagnosticVirtualTextError = { fg = red, bg = rouge },

  DiagnosticUnderlineError = { fg = red, bg = rouge },
  DiagnosticUnderlineWarn  = { fg = yellow, bg = orange },
  DiagnosticUnderlineInfo  = { fg = pale_blue, bg = navy },
  DiagnosticUnderlineHint  = { fg = freeze, bg = lagoon },
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
  luaFuncName       = { fg = freeze, gui = 'bold' },
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
  shVarAssign        = { fg = death },
  shVar              = { fg = pale_blue, gui = 'italic' },

  --> rust polyglot (rust.vim)
  rustKeyword     = { fg = orange },
  rustFuncCall    = { fg = lagoon },
  rustModPathSep  = { fg = lagoon },
  rustIdentifier  = { fg = white },
  rustFuncName    = { fg = freeze, gui = 'bold' },
  rustSigil       = { fg = lagoon },
  rustMacro       = { fg = lagoon },
  rustStorage     = { fg = orange },
  rustModPath     = { fg = white },
  rustEnumVariant = { fg = white },
  rustStructure   = { fg = green, gui = 'bold' },
  rustTypedef     = { fg = orange },

  --> javascript polyglot (pangloss/vim-javascript)
  jsFunction            = { fg = lagoon },
  jsImport              = { fg = lagoon },
  jsStorageClass        = { fg = lagoon },
  jsExport              = { fg = lagoon },
  jsGlobalObjects       = { fg = lagoon, gui = 'bold' },
  jsFuncName            = { fg = freeze, gui = 'bold' },
  jsFrom                = { fg = lagoon, gui = 'italic' },
  jsParen               = { fg = pale_blue },
  jsAsyncKeyword        = { fg = lagoon, gui = 'italic' },
  jsForAwait            = { fg = lagoon, gui = 'italic' },
  jsArrowFunction       = { fg = death },
  jsReturn              = { fg = green, gui = 'bold' },
  jsFuncBlock           = { fg = pale_blue, gui = 'bold' },
  jsParens              = { fg = death },
  jsFuncCall            = { fg = freeze, gui = 'bold' },
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
  jsObjectValue         = { fg = freeze, gui = 'bold' },
  jsObjectObjectProp    = { fg = purple, gui = 'italic' },

  jsonQuote = { fg = navy },

  CmpCompletionBorder = { fg = death },
  CmpItemAbbrMatch = { fg = pale_blue },
  CmpItemAbbrMatchFuzzy = { fg = pale_blue },
  CmpItemKindFunction = { fg = purple },
  CmpItemKindMethod = { fg = purple },
  CmpItemKindVariable = { fg = pale_green },
  CmpItemKindKeyword = { fg = yellow },
  CmpItemKindColor = { fg = freeze },
  CmpItemKindConstant = { fg = lagoon },
  CmpItemKindDefault = { fg = lagoon },
  CmpItemKindFolder = { fg = green, gui = 'bold' },
  CmpItemKindMatchFuzzy = { fg = red },
  CmpItemKindOperator = { fg = freeze },
  CmpItemKindProperty = { fg = purple },
  CmpItemMenu = { fg = pink, gui = 'bold,italic' },

  tsxAttrib                     = { fg = pale_blue },
  tsxCloseString                = { fg = death },
  tsxCloseTag                   = { fg = death },
  tsxEqual                      = { fg = death },
  tsxRegion                     = { fg = icicle },
  tsxTag                        = { fg = death },
  tsxTagName                    = { fg = navy, gui = 'bold' },
  tsxIntrinsicTagName           = { fg = navy, gui = 'bold' },
  txsRegion                     = { fg = death },
  typescriptArray               = { fg = pale_blue },
  typescriptEnum                = { fg = icicle },
  typescriptEnumKeyword         = { fg = lagoon },
  typescriptArrayMethod         = { fg = lagoon },
  typescriptArrowFunc           = { fg = death },
  typescriptArrowFuncArg        = { fg = white },
  typescriptFuncTypeArrow       = { fg = death },
  typescriptAssign              = { fg = death },
  typescriptAsyncFuncKeyword    = { fg = lagoon, gui = 'italic' },
  typescriptBOM                 = { fg = freeze },
  typescriptBOMLocationMethod   = { fg = lagoon },
  typescriptBOMWindowProp       = { fg = pale_green },
  typescriptBlock               = { fg = icicle },
  typescriptBraces              = { fg = death },
  typescriptCall                = { fg = white },
  typescriptDOMDocProp          = { fg = lagoon },
  typescriptDOMWindowProp       = { fg = lagoon },
  typescriptDestructureVariable = { fg = freeze },
  typescriptDotNotation         = { fg = rouge },
  typescriptExceptions          = { fg = lagoon },
  typescriptExport              = { fg = navy, gui = 'bold' },
  typescriptFuncKeyword         = { fg = navy, gui = 'bold' },
  typescriptHeadersMethod       = { fg = lagoon },
  typescriptImport              = { fg = navy, gui = 'bold' },
  typescriptObjectColon         = { fg = death },
  typescriptObjectLabel         = { fg = pale_blue },
  typescriptObjectLiteral       = { fg = pale_blue },
  tsxEscapeJs                   = { fg = pale_blue },
  typescriptTypeAnnotation      = { fg = death },
  typescriptOperator            = { fg = lagoon },
  typescriptParens              = { fg = death },
  typescriptProp                = { fg = pale_blue },
  typescriptProperty            = { fg = death },
  typescriptResponseProp        = { fg = lagoon },
  typescriptStatementKeyword    = { fg = green, gui = 'bold' },
  typescriptStringMethod        = { fg = lagoon },
  typescriptTemplate            = { fg = death, gui = 'italic' },
  typescriptTemplateSB          = { fg = lagoon },
  typescriptTernary             = { fg = green, gui = 'bold' },
  typescriptTernaryOp           = { fg = rouge },
  typescriptTry                 = { fg = lagoon, gui = 'italic' },
  typescriptTypeBrackets        = { fg = death },
  typescriptUnaryOp             = { fg = rouge },
  typescriptBinaryOp            = { fg = rouge },
  typescriptVariable            = { fg = lagoon },
  typescriptXHRMethod           = { fg = lagoon },
  typescriptTypeReference       = { fg = pale_green, gui = 'bold' },
  typescriptTypeCase            = { fg = navy },
  typescriptIdentifierName      = { fg = pale_blue },
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
vim.g.terminal_color_7          = white
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = pale_green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = lagoon
vim.g.terminal_color_13         = purple
vim.g.terminal_color_14         = lagoon
vim.g.terminal_color_15         = icicle
vim.g.terminal_color_background = death
vim.g.terminal_color_foreground = white
