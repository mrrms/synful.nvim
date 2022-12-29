local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

--> this would be a comment
local zero_dark     = '#000000' -- #090B12
local deep_blue     = '#111119'
local death         = '#505075'
local pale_blue     = '#7AA7FF'
local lagoon        = '#6070C1'
local navy          = '#445599'
local deep          = '#353565'
local grey          = '#8585AA'
local purple        = '#BB91ED'
local pink          = '#AF749C'
local red           = '#994455'
local rouge         = '#883355'
local yellow        = '#DEC79B'
local orange        = '#DB9280'
local green         = '#5F875F'
local pale_green    = '#96C0C0'
local freeze        = '#A8B4F6'
local icicle        = '#C0C0FC'
local white         = '#DEDEFF'
local editor_syntax = {
  Cursor                  = { fg = zero_dark, bg = red },
  CursorLine              = { bg = deep_blue },
  ColorColumn             = { fg = "NONE", bg = "NONE" },
  CursorLineNr            = { fg = pale_blue },
  Directory               = { fg = lagoon, gui = 'bold' },
  variable                = { fg = freeze },
  field                   = { fg = freeze },
  DiffAdd                 = { fg = pale_green },
  DiffChange              = { fg = yellow },
  DiffDelete              = { fg = red },
  DiffText                = { fg = lagoon },
  ErrorMsg                = { fg = rouge },
  EndOfBuffer             = { fg = zero_dark, bg = zero_dark },
  VertSplit               = { fg = death, bg = zero_dark },
  Folded                  = { fg = death, gui = 'italic' },
  FoldColumn              = { fg = yellow },
  SignColumn              = { fg = yellow },
  IncSearch               = { fg = death, bg = purple, },
  Substitute              = { fg = freeze, bg = rouge, },
  LineNr                  = { fg = death },
  MatchParen              = { fg = red, gui = 'bold' },
  Normal                  = { fg = freeze, bg = zero_dark },
  NormalFloat             = { bg = zero_dark },
  Pmenu                   = { fg = freeze, bg = zero_dark },
  PmenuSel                = { bg = navy },
  PmenuSbar               = { fg = freeze },
  PmenuThumb              = { fg = navy },
  Search                  = { fg = icicle, bg = navy },
  SpecialKey              = { fg = lagoon },
  SpellBad                = { fg = red, gui = 'bold' },
  SpellRare               = { fg = lagoon, gui = 'bold' },
  SpellCap                = { fg = yellow, gui = 'bold' },
  SpellLocal              = { fg = orange, gui = 'bold' },
  TabLine                 = { bg = death, fg = white },
  TabLineFill             = { bg = death, fg = white },
  TabLineSel              = { fg = zero_dark, gui = 'bold', bg = navy },
  Title                   = { fg = white },
  Visual                  = { fg = icicle, bg = navy },
  VisualNOS               = { fg = icicle, bg = rouge },
  WarningMsg              = { fg = yellow, gui = 'italic' },
  Whitespace              = { fg = pale_blue },
  FloatBorder             = { fg = death },
  FloatShadow             = { bg = "NONE" },
  FloatShadowThrough      = { bg = "NONE" },
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
  Conceal                 = {},
  ModeMsg                 = {},
  MsgArea                 = {},
  MsgSeparator            = {},
  MoreMsg                 = {},
  NonText                 = {},
  Question                = {},
  QuickFixLine            = {},
  StatusLine              = {},
  StatusLineNC            = {},
  WildMenu                = {}
}

for group, styles in pairs(editor_syntax) do
  highlight(group, styles)
end

--> Vim Default Code Syntax
local code_syntax = {
  Boolean                    = { fg = purple },
  Character                  = { fg = white, gui = 'bold' },
  Command                    = { fg = lagoon },
  Comment                    = { fg = death, gui = 'bold,italic' },
  Conditional                = { fg = green, gui = 'italic' },
  Constant                   = { fg = lagoon },
  Debug                      = { fg = red },
  Define                     = { fg = lagoon },
  Delimiter                  = { fg = death },
  Error                      = { fg = rouge },
  Exception                  = { fg = lagoon, gui = 'italic' },
  Function                   = { fg = freeze, gui = 'bold' },
  Field                      = { fg = freeze },
  Float                      = { fg = purple },
  Identifier                 = { fg = freeze },
  Ignore                     = { fg = yellow },
  Include                    = { fg = lagoon, bold = 'bold' },
  KeywordFunction            = { fg = lagoon },
  KeywordReturn              = { fg = green, gui = 'italic' },
  Label                      = { fg = lagoon },
  Macro                      = { fg = purple },
  Noise                      = { fg = pink },
  Number                     = { fg = purple },
  NvimInternalError          = { fg = rouge },
  Operator                   = { fg = pale_blue },
  PreCondit                  = { fg = yellow },
  PreProc                    = { fg = yellow },
  Repeat                     = { fg = green, gui = 'bold' },
  Special                    = { fg = lagoon },
  SpecialChar                = { fg = rouge },
  SpecialComment             = { fg = death, gui = 'bold' },
  Statement                  = { fg = pale_green, gui = 'italic' },
  StorageClass               = { fg = purple, gui = 'italic' },
  String                     = { fg = pale_green, gui = 'italic' },
  Structure                  = { fg = yellow },
  Tag                        = { fg = orange },
  TelescopeBorder            = { fg = death },
  Todo                       = { fg = pale_blue, gui = 'bold' },
  Type                       = { fg = pale_green, gui = 'bold' },
  Typedef                    = { fg = yellow },
  Underlined                 = { gui = 'underline' },
  htmlEndTag                 = { fg = death },
  htmlTag                    = { fg = death },
  htmlHead                   = { fg = lagoon },
  htmlTagN                   = { fg = navy },
  htmlTagName                = { fg = navy },
  htmlSpecialTagName         = { fg = navy },
  htmlArg                    = { fg = pale_blue },
  keyword                    = { fg = lagoon, gui = 'bold' },
  DiagnosticWarn             = { fg = orange, gui = 'italic' },
  DiagnosticInfo             = { fg = pale_blue, gui = 'italic' },
  DiagnosticHint             = { fg = yellow, gui = 'bold' },
  DiagnosticError            = { fg = rouge, gui = 'bold' },
  DiagnosticUnderlineError   = { fg = rouge, gui = 'italic' },
  DiagnosticVirtualTextError = { fg = rouge, gui = 'italic' },
  DiagnosticUnderlineWarn    = { fg = orange, gui = 'italic' },
  DiagnosticUnderlineInfo    = { fg = pale_blue, gui = 'italic' },
  DiagnosticUnderlineHint    = { fg = yellow, gui = 'italic' },
  DiagnosticVirtualTextInfo  = { fg = pale_blue, gui = 'italic' },
  DiagnosticVirtualTextWarn  = { fg = orange, gui = 'italic' },
  DiagnosticVirtualTextHint  = { fg = yellow, gui = 'italic' },
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

  --> lua polyglot (tbastos/vim-lua)
  luaBraces         = { fg = death },
  luaBuiltIn        = { fg = lagoon },
  luaComma          = { fg = death },
  luaConstant       = { fg = purple },
  luaFunc           = { fg = lagoon },
  luaFuncArgsComma  = { fg = death },
  luaFuncCall       = { fg = lagoon, gui = 'bold' },
  luaFuncName       = { fg = freeze, gui = 'bold' },
  luaFuncParens     = { fg = death },
  luaFunction       = { fg = lagoon, gui = 'italic' },
  luaFunctionBlock  = { fg = navy, gui = 'bold' },
  luaIn             = { fg = lagoon, gui = 'italic' },
  luaKeyword        = { fg = green, gui = 'bold' },
  luaLocal          = { fg = green, gui = 'bold' },
  luaParen          = { fg = death },
  luaParens         = { fg = death },
  luaSpecialValue   = { fg = lagoon, gui = 'bold' },
  luaStatement      = { fg = green, gui = 'bold' },
  luaString         = { fg = pale_green, gui = 'none' },
  luaStringLongTag  = { fg = death, gui = 'bold' },
  luaSymbolOperator = { fg = death },
  luaTable          = { fg = death },
  luaTableBlock     = { fg = pale_blue },

  FidgetTitle = { fg = pale_blue, bg = zero_dark },

  --> tmux
  tmuxFormatString = { fg = pale_blue, gui = 'italic' },
  tmuxOptions      = { fg = freeze },
  tmuxAssignment   = { fg = death },
  tmuxFlags        = { fg = rouge },

  --> zsh
  zshTodo            = code_syntax.Todo,
  zslhComment        = code_syntax.Comment,
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
  rustAssert              = { fg = rouge },
  rustBoxPlacementBalance = { fg = rouge },
  rustEnumVariant         = { fg = icicle },
  rustFoldBraces          = { fg = death },
  rustFuncCall            = { fg = icicle },
  rustRepeat              = { fg = lagoon, gui = 'bold' },
  rustKeyword             = { fg = lagoon, gui = 'bold' },
  rustConditional         = { fg = lagoon, gui = 'bold' },
  rustFuncName            = { fg = freeze, gui = 'bold' },
  rustCharacter           = { fg = rouge },
  rustIdentifier          = { fg = freeze },
  rustMacro               = { fg = green, gui = 'bold' },
  rustModPath             = { fg = green, gui = 'bold' },
  rustModPathSep          = { fg = death },
  rustOperator            = { fg = death },
  rustSelf                = { fg = rouge },
  rustSigil               = { fg = rouge },
  rustStorage             = { fg = lagoon, gui = 'bold' },
  rustStructure           = { fg = green, gui = 'bold' },
  rustTrait               = { fg = navy, gui = 'bold' },
  rustTypedef             = { fg = rouge },

  --> mutt & email
  muttrcSetStrAssignment = { fg = rouge },


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

  CmpCompletionBorder   = { fg = death },
  CmpItemAbbrMatch      = { fg = pale_blue },
  CmpItemAbbrMatchFuzzy = { fg = pale_blue },
  CmpItemKindFunction   = { fg = purple },
  CmpItemKindMethod     = { fg = purple },
  CmpItemKindVariable   = { fg = pale_green },
  CmpItemKindKeyword    = { fg = yellow },
  CmpItemKindColor      = { fg = freeze },
  CmpItemKindConstant   = { fg = lagoon },
  CmpItemKindDefault    = { fg = lagoon },
  CmpItemKindFolder     = { fg = green, gui = 'bold' },
  CmpItemKindMatchFuzzy = { fg = red },
  CmpItemKindOperator   = { fg = freeze },
  CmpItemKindProperty   = { fg = purple },
  CmpItemMenu           = { fg = pink, bg = 'none', gui = 'bold,italic' },

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
