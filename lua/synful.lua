local function highlight(group, styles)
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. sp .. ' ' .. fg .. ' ' .. bg)
end

local zero_dark  = '#12121C'
local deep_blue  = '#121224'
local death      = '#505075'
local pale_blue  = '#7AA7FF'
local lagoon     = '#6070C1'
local navy       = '#405080'
local deep       = '#333363'
local grey       = '#8585AA'
local magenta    = '#BB91ED'
local pink       = '#AF749C'
local red        = '#994455'
local rouge      = '#883355'
local yellow     = '#DEC79B'
local orange     = '#DB9280'
local green      = '#5F875F'
local pale_green = '#96C0C0'
local freeze     = '#A8B4F6'
local icicle     = '#C0C0FC'
local white      = '#DEDEFF'

local editor_syntax = {
  Cursor                  = { fg = zero_dark, bg = rouge },
  CursorLine              = { bg = deep_blue },
  ColorColumn             = { fg = "NONE", bg = "NONE" },
  CursorLineNr            = { fg = pale_blue },
  Directory               = { fg = lagoon, gui = 'bold' },
  variable                = { fg = freeze },
  field                   = { fg = icicle },
  DiffAdd                 = { fg = pale_green },
  DiffChange              = { fg = yellow },
  DiffDelete              = { fg = red },
  DiffText                = { fg = lagoon },
  ErrorMsg                = { fg = rouge },
  EndOfBuffer             = { fg = zero_dark, bg = zero_dark },
  VertSplit               = { fg = death, bg = zero_dark },
  Folded                  = { fg = death, gui = 'bold,italic' },
  FoldColumn              = { fg = yellow },
  SignColumn              = { fg = yellow },
  IncSearch               = { fg = death, bg = magenta },
  Substitute              = { fg = freeze, bg = rouge },
  LineNr                  = { fg = death },
  MatchParen              = { fg = red, gui = 'bold' },
  Normal                  = { fg = freeze, bg = zero_dark },
  NormalFloat             = { bg = zero_dark },
  Pmenu                   = { fg = freeze, bg = zero_dark },
  PmenuSel                = { fg = pale_blue, bg = deep_blue, gui = 'bold' },
  PmenuSbar               = { fg = freeze },
  PmenuThumb              = { fg = rouge },
  TabLine                 = { fg = freeze, bg = rouge },
  TabLineFill             = { fg = freeze, bg = death },
  TabLineSel              = { fg = zero_dark, bg = deep_blue, gui = 'bold' },
  Search                  = { fg = icicle, bg = navy },
  SpecialKey              = { fg = lagoon },
  SpellBad                = { fg = red, gui = 'bold' },
  SpellRare               = { fg = lagoon, gui = 'bold' },
  SpellCap                = { fg = yellow, gui = 'bold' },
  SpellLocal              = { fg = orange, gui = 'bold' },
  Title                   = { fg = white },
  Visual                  = { fg = icicle, bg = deep },
  VisualNOS               = { fg = icicle, bg = rouge },
  WarningMsg              = { fg = yellow, gui = 'italic' },
  Whitespace              = { fg = pale_blue },
  FloatBorder             = { fg = deep },
  FloatShadow             = { bg = "NONE" },
  FloatShadowThrough      = { bg = "NONE" },
  constructor             = { fg = freeze, gui = 'bold' },
  Builtin                 = { fg = white },
  Return                  = { fg = green, gui = 'bold' },
  gitcommitComment        = { fg = death, gui = 'italic' },
  gitcommitUntracked      = { fg = death, gui = 'italic' },
  gitcommitDiscarded      = { fg = death, gui = 'italic' },
  gitcommitSelected       = { fg = death, gui = 'italic' },
  gitcommitBranch         = { fg = magenta, gui = 'bold' },
  gitcommitNoBranch       = { fg = magenta },
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
  Boolean                    = editor_syntax.gitcommitBranch,
  Character                  = editor_syntax.constructor,
  Command                    = editor_syntax.DiffText,
  Comment                    = editor_syntax.Folded,
  Conditional                = editor_syntax.Return,
  Constant                   = editor_syntax.DiffText,
  Debug                      = editor_syntax.DiffDelete,
  Define                     = editor_syntax.DiffText,
  Delimiter                  = editor_syntax.LineNr,
  Error                      = editor_syntax.ErrorMsg,
  Exception                  = { fg = lagoon, gui = 'bold' },
  Function                   = editor_syntax.constructor,
  Field                      = editor_syntax.variable,
  Float                      = editor_syntax.gitcommitBranch,
  Identifier                 = editor_syntax.variable,
  Ignore                     = editor_syntax.DiffChange,
  Include                    = { fg = lagoon, gui = 'bold' },
  KeywordFunction            = editor_syntax.DiffText,
  KeywordReturn              = { fg = green, gui = 'italic' },
  Label                      = editor_syntax.DiffText,
  Macro                      = editor_syntax.gitcommitBranch,
  Noise                      = { fg = pink },
  Number                     = editor_syntax.gitcommitBranch,
  NvimInternalError          = editor_syntax.ErrorMsg,
  Operator                   = editor_syntax.DiffChange,
  PreCondit                  = editor_syntax.DiffChange,
  PreProc                    = editor_syntax.DiffChange,
  Repeat                     = editor_syntax.Return,
  Special                    = editor_syntax.DiffText,
  SpecialChar                = editor_syntax.ErrorMsg,
  SpecialComment             = { fg = death, gui = 'bold' },
  Statement                  = { fg = pale_green, gui = 'italic' },
  StorageClass               = { fg = magenta, gui = 'italic' },
  String                     = { fg = pale_green, gui = 'italic' },
  Structure                  = editor_syntax.DiffChange,
  Tag                        = { fg = orange },
  TelescopeBorder            = editor_syntax.FloatBorder,
  TelescopeSelection         = editor_syntax.PmenuSel,
  TelescopeSelectionCaret    = { fg = rouge, gui = 'bold' },
  TelescopeMatching          = editor_syntax.MatchParen,
  TelescopePreviewMatch      = editor_syntax.MatchParen,
  LspSagaRenameMatch         = editor_syntax.MatchParen,
  Todo                       = { fg = pale_blue, gui = 'bold' },
  Type                       = { fg = pale_green, gui = 'bold' },
  Typedef                    = editor_syntax.DiffChange,
  Underlined                 = { gui = 'underline' },
  htmlEndTag                 = editor_syntax.LineNr,
  htmlTag                    = editor_syntax.LineNr,
  htmlHead                   = editor_syntax.DiffText,
  htmlTagN                   = { fg = navy, gui = 'bold' },
  htmlTagName                = { fg = navy },
  htmlSpecialTagName         = { fg = navy },
  htmlArg                    = editor_syntax.CursorLineNr,
  keyword                    = editor_syntax.Directory,
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
  GitGutterAdd          = editor_syntax.gitcommitUnmerged,
  GitGutterChange       = editor_syntax.CursorLineNr,
  GitGutterDelete       = editor_syntax.DiffDelete,
  GitGutterChangeDelete = { fg = orange },
  diffAdded             = editor_syntax.gitcommitUnmerged,
  diffRemoved           = editor_syntax.DiffDelete,
}

for group, styles in pairs(plugin_syntax) do
  highlight(group, styles)
end

--> Syntax Plugin And Language Highlight Groups
local lang_syntax = {
  xmlEndTag = { fg = lagoon, gui = 'bold' },

  --> lua polyglot (tbastos/vim-lua)
  luaBraces         = editor_syntax.LineNr,
  luaBuiltIn        = editor_syntax.DiffText,
  luaComma          = editor_syntax.LineNr,
  luaConstant       = editor_syntax.gitcommitBranch,
  luaFunc           = editor_syntax.DiffText,
  luaFuncArgsComma  = editor_syntax.LineNr,
  luaFuncCall       = editor_syntax.Directory,
  luaFuncName       = editor_syntax.constructor,
  luaFuncParens     = editor_syntax.LineNr,
  luaFunction       = { fg = lagoon, gui = 'bold' },
  luaFunctionBlock  = editor_syntax.htmlTagN,
  luaIn             = { fg = lagoon, gui = 'bold' },
  luaKeyword        = editor_syntax.Return,
  luaLocal          = editor_syntax.Return,
  luaParen          = editor_syntax.LineNr,
  luaParens         = editor_syntax.LineNr,
  luaSpecialValue   = editor_syntax.Directory,
  luaStatement      = editor_syntax.Return,
  luaString         = { fg = pale_green, gui = 'none' },
  luaStringLongTag  = { fg = death, gui = 'bold' },
  luaSymbolOperator = editor_syntax.LineNr,
  luaTable          = editor_syntax.LineNr,
  luaTableBlock     = editor_syntax.CursorLineNr,

  FidgetTitle = { fg = pale_blue, bg = zero_dark },

  --> tmux
  tmuxFormatString   = { fg = pale_blue, gui = 'italic' },
  tmuxOptions        = editor_syntax.variable,
  tmuxAssignment     = editor_syntax.LineNr,
  tmuxFlags          = editor_syntax.ErrorMsg,
  --> zsh
  shDo               = editor_syntax.ErrorMsg,
  shStatement        = editor_syntax.htmlTagN,
  shTestOpr          = editor_syntax.ErrorMsg,
  shVar              = { fg = pale_blue, gui = 'italic' },
  shVarAssign        = editor_syntax.LineNr,
  zshCommands        = editor_syntax.DiffText,
  zshDeref           = editor_syntax.ErrorMsg,
  zshFunction        = editor_syntax.WarningMsg,
  zshKeyword         = code_syntax.Function,
  zshNumber          = code_syntax.Number,
  zshOptStart        = { fg = lagoon, gui = 'bold' },
  zshOption          = { fg = lagoon, gui = 'bold' },
  zshPreProc         = code_syntax.PreProc,
  zshPrecommand      = editor_syntax.DiffText,
  zshString          = code_syntax.String,
  zshStringDelimiter = editor_syntax.DiffText,
  zshSubst           = editor_syntax.DiffChange,
  zshSubstDelim      = editor_syntax.DiffText,
  zshTodo            = code_syntax.Todo,
  zslhComment        = code_syntax.Comment,

  --> rust polyglot (rust.vim)
  rustAssert              = editor_syntax.ErrorMsg,
  rustBoxPlacementBalance = editor_syntax.ErrorMsg,
  rustFoldBraces          = editor_syntax.LineNr,
  rustEnumVariant         = editor_syntax.field,
  rustFuncCall            = editor_syntax.field,
  rustRepeat              = editor_syntax.Directory,
  rustKeyword             = editor_syntax.Directory,
  rustConditional         = editor_syntax.Directory,
  rustFuncName            = editor_syntax.constructor,
  rustCharacter           = editor_syntax.ErrorMsg,
  rustIdentifier          = editor_syntax.variable,
  rustMacro               = editor_syntax.Return,
  rustModPath             = editor_syntax.Return,
  rustModPathSep          = editor_syntax.LineNr,
  rustOperator            = editor_syntax.LineNr,
  rustSelf                = editor_syntax.ErrorMsg,
  rustSigil               = editor_syntax.ErrorMsg,
  rustStorage             = editor_syntax.Directory,
  rustStructure           = editor_syntax.Return,
  rustTrait               = editor_syntax.htmlTagN,
  rustTypedef             = editor_syntax.ErrorMsg,

  --> mutt & email
  muttrcSetStrAssignment = editor_syntax.ErrorMsg,


  --> javascript polyglot (pangloss/vim-javascript)
  jsFunction            = editor_syntax.DiffText,
  jsImport              = editor_syntax.DiffText,
  jsStorageClass        = editor_syntax.DiffText,
  jsExport              = editor_syntax.DiffText,
  jsGlobalObjects       = editor_syntax.Directory,
  jsFuncName            = editor_syntax.constructor,
  jsFrom                = { fg = lagoon, gui = 'bold' },
  jsParen               = editor_syntax.CursorLineNr,
  jsAsyncKeyword        = { fg = lagoon, gui = 'bold' },
  jsForAwait            = { fg = lagoon, gui = 'bold' },
  jsArrowFunction       = editor_syntax.LineNr,
  jsReturn              = editor_syntax.Return,
  jsFuncBlock           = { fg = pale_blue, gui = 'bold' },
  jsParens              = editor_syntax.LineNr,
  jsFuncCall            = editor_syntax.constructor,
  jsFuncBraces          = editor_syntax.LineNr,
  jsxTagName            = editor_syntax.Directory,
  jsxComponentName      = editor_syntax.DiffText,
  jsxAttrib             = editor_syntax.CursorLineNr,
  jsxBraces             = editor_syntax.LineNr,
  jsTemplateBraces      = editor_syntax.DiffDelete,
  jsFuncParens          = editor_syntax.LineNr,
  jsModuleBraces        = editor_syntax.LineNr,
  jsDestructuringBraces = editor_syntax.LineNr,
  jsObjectBraces        = editor_syntax.LineNr,
  jsObjectKey           = editor_syntax.CursorLineNr,
  jsObjectShorthandProp = editor_syntax.CursorLineNr,
  jsNull                = editor_syntax.gitcommitBranch,
  jsModuleComma         = editor_syntax.LineNr,
  jsObject              = editor_syntax.LineNr,
  jsBrackets            = editor_syntax.LineNr,
  jsTernaryIf           = editor_syntax.gitcommitBranch,
  jsTernaryOperator     = editor_syntax.gitcommitBranch,
  jsObjectColon         = editor_syntax.LineNr,
  jsNoise               = editor_syntax.LineNr,
  jsFuncArgs            = editor_syntax.CursorLineNr,
  jsFuncArgsCommas      = editor_syntax.LineNr,
  jsTemplateString      = editor_syntax.Comment,
  jsObjectSeparator     = editor_syntax.LineNr,
  jsObjectValue         = editor_syntax.constructor,
  jsObjectObjectProp    = editor_syntax.gitcommitBranch,

  jsonQuote = { fg = navy },

  CmpCompletionBorder           = editor_syntax.FloatBorder,
  CmpItemKindFunction           = editor_syntax.gitcommitBranch,
  CmpItemKindMethod             = editor_syntax.gitcommitBranch,
  CmpItemKindVariable           = editor_syntax.DiffAdd,
  CmpItemKindKeyword            = editor_syntax.DiffChange,
  CmpItemKindColor              = editor_syntax.variable,
  CmpItemKindConstant           = editor_syntax.DiffText,
  CmpItemKindDefault            = editor_syntax.DiffText,
  CmpItemKindFolder             = editor_syntax.Return,
  CmpItemKindOperator           = editor_syntax.variable,
  CmpItemKindProperty           = editor_syntax.gitcommitBranch,
  CmpItemMenu                   = { fg = pink, bg = 'none', gui = 'bold,italic' },
  CmpItemAbbrMatchDefault       = editor_syntax.gitcommitBranch,
  CmpItemAbbrMatch              = editor_syntax.gitcommitBranch,
  CmpItemAbbrMatchFuzzy         = editor_syntax.gitcommitBranch,
  CmpItemKindMatchFuzzy         = editor_syntax.gitcommitBranch,
  CmpItemAbbrMatchFuzzyDefault  = editor_syntax.gitcommitBranch,
  tsxAttrib                     = editor_syntax.CursorLineNr,
  tsxCloseString                = editor_syntax.LineNr,
  tsxCloseTag                   = editor_syntax.LineNr,
  tsxEqual                      = editor_syntax.LineNr,
  tsxRegion                     = editor_syntax.field,
  tsxTag                        = editor_syntax.LineNr,
  tsxTagName                    = editor_syntax.htmlTagN,
  tsxIntrinsicTagName           = editor_syntax.htmlTagN,
  txsRegion                     = editor_syntax.LineNr,
  typescriptArray               = editor_syntax.CursorLineNr,
  typescriptEnum                = editor_syntax.field,
  typescriptEnumKeyword         = editor_syntax.DiffText,
  typescriptArrayMethod         = editor_syntax.DiffText,
  typescriptArrowFunc           = editor_syntax.LineNr,
  typescriptArrowFuncArg        = editor_syntax.Title,
  typescriptFuncTypeArrow       = editor_syntax.LineNr,
  typescriptAssign              = editor_syntax.LineNr,
  typescriptAsyncFuncKeyword    = editor_syntax.Directory,
  typescriptBOM                 = editor_syntax.variable,
  typescriptBOMLocationMethod   = editor_syntax.DiffText,
  typescriptBOMWindowProp       = editor_syntax.DiffAdd,
  typescriptBlock               = editor_syntax.field,
  typescriptBraces              = editor_syntax.LineNr,
  typescriptCall                = editor_syntax.Title,
  typescriptDOMDocProp          = editor_syntax.DiffText,
  typescriptDOMWindowProp       = editor_syntax.DiffText,
  typescriptDestructureVariable = editor_syntax.variable,
  typescriptDotNotation         = editor_syntax.ErrorMsg,
  typescriptExceptions          = editor_syntax.DiffText,
  typescriptExport              = editor_syntax.htmlTagN,
  typescriptFuncKeyword         = editor_syntax.htmlTagN,
  typescriptHeadersMethod       = editor_syntax.DiffText,
  typescriptImport              = editor_syntax.htmlTagN,
  typescriptObjectColon         = editor_syntax.LineNr,
  typescriptObjectLabel         = editor_syntax.CursorLineNr,
  typescriptObjectLiteral       = editor_syntax.CursorLineNr,
  tsxEscapeJs                   = editor_syntax.CursorLineNr,
  typescriptTypeAnnotation      = editor_syntax.LineNr,
  typescriptOperator            = editor_syntax.DiffText,
  typescriptParens              = editor_syntax.LineNr,
  typescriptProp                = editor_syntax.CursorLineNr,
  typescriptProperty            = editor_syntax.LineNr,
  typescriptResponseProp        = editor_syntax.DiffText,
  typescriptStatementKeyword    = editor_syntax.Return,
  typescriptStringMethod        = editor_syntax.DiffText,
  typescriptTemplate            = editor_syntax.Folded,
  typescriptTemplateSB          = editor_syntax.DiffText,
  typescriptTernary             = editor_syntax.Return,
  typescriptTernaryOp           = editor_syntax.ErrorMsg,
  typescriptTry                 = editor_syntax.Directory,
  typescriptTypeBrackets        = editor_syntax.LineNr,
  typescriptUnaryOp             = editor_syntax.ErrorMsg,
  typescriptBinaryOp            = editor_syntax.ErrorMsg,
  typescriptVariable            = editor_syntax.DiffText,
  typescriptXHRMethod           = editor_syntax.DiffText,
  typescriptTypeReference       = editor_syntax.Type,
  typescriptTypeCase            = { fg = navy },
  typescriptIdentifierName      = editor_syntax.CursorLineNr,
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
vim.g.terminal_color_5          = magenta
vim.g.terminal_color_6          = lagoon
vim.g.terminal_color_7          = white
vim.g.terminal_color_8          = grey
vim.g.terminal_color_9          = red
vim.g.terminal_color_10         = pale_green
vim.g.terminal_color_11         = orange
vim.g.terminal_color_12         = lagoon
vim.g.terminal_color_13         = magenta
vim.g.terminal_color_14         = lagoon
vim.g.terminal_color_15         = icicle
vim.g.terminal_color_background = death
vim.g.terminal_color_foreground = white

local color_palette = {
  rosewater = "#F5E0DC",
  flamingo = "#F2CDCD",
  pink = "#F5C2E7",
  mauve = "#CBA6F7",
  red = "#F38BA8",
  maroon = "#EBA0AC",
  peach = "#FAB387",
  yellow = "#F9E2AF",
  green = "#A6E3A1",
  teal = "#94E2D5",
  sky = "#89DCEB",
  blue = "#90C1FB",
  sapphire = "#74C7EC",
  lavender = "#B4BEFE",
  text = "#C6D0F5",
  overlay2 = "#AEB7D9",
  overlay1 = "#969DBC",
  overlay0 = "#7E84A0",
  surface2 = "#666A83",
  surface1 = "#4E5167",
  surface0 = "#36374A",
  base2 = "#1E1E2E",
  base1 = "#12121C",
  base0 = "#07070A",
}
