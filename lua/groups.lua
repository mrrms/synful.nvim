local colour = require("colour")

return {
	Tag = { fg = colour.peach },
	Type = { fg = colour.pearl },
	Visual = { bg = colour.depth, fg = colour.metal },
	WinBar = { link = "LineNr" },
	Cursor = { fg = colour.pearl, bg = colour.coola },
	Command = { fg = colour.slate, bold = true },
	Comment = { fg = colour.raven, bold = true, italic = true },
	WinBarNC = { link = "LineNr" },
	Boolean = { fg = colour.mauve },
	Constant = { link = "Macro" },
	Removed = { fg = colour.rouge },
	Character = { link = "Boolean" },
	CurSearch = { link = "Visual" },
	CursorLine = { bg = colour.depth },
	ColorColumn = { fg = colour.coola },
	Conditional = { link = "Character" },
	CursorLineNr = { fg = colour.coola, bold = true },
	DiagnosticHint = { link = "Boolean" },
	DiagnosticInfo = { link = "Changed" },
	DiagnosticError = { link = "Error" },
	DiagnositicSignInfo = { bg = colour.raven },
	DiagnosticInformation = { link = "Changed" },
	DiagnosticUnnecessary = { fg = colour.raven, undercurl = true },
	DiagnosticUnderlineHint = { fg = colour.paris, undercurl = true },
	DiagnosticUnderlineInfo = { fg = colour.metal, undercurl = true },
	DiagnosticUnderlineWarn = { fg = colour.amber, undercurl = true },
	DiagnosticUnderlineError = { fg = colour.blush, undercurl = true },
	DiagnosticVirtualTextError = { fg = colour.blush, bg = colour.rouge },
	DiagnosticVirtualTextHint = { fg = colour.paris, bg = colour.bazil },
	DiagnosticVirtualTextInfo = { fg = colour.capri, bg = colour.raven },
	DiagnosticVirtualTextWarn = { fg = colour.peach, bg = colour.amber },
	DiagnosticWarn = { link = "Tag" },
	DiagnosticWarning = { link = "DiagnosticWarn" },
	Directory = { fg = colour.steel, bold = true },
	Error = { fg = colour.blush },
	ErrorMsg = { link = "Error" },
	Float = { link = "Boolean" },
	WinSeparator = { fg = colour.steel },
	FloatBorder = { fg = colour.depth, bg = "NONE" },
	FloatShadow = { link = "NonText" },
	FloatShadowThrough = { link = "NonText" },
	FoldColumn = { link = "FloatBorder" },
	Folded = { fg = colour.raven, italic = true, bold = true },
	IncSearch = { link = "Visual" },
	Label = { link = "Macro" },
	LineNr = { fg = colour.raven },
	Macro = { fg = colour.metal },
	MatchParen = { fg = colour.coola, bold = true },
	Menu = { fg = colour.metal, bg = colour.depth },
	NonText = { fg = colour.depth, bg = colour.space },
	Normal = { fg = colour.pearl },
	NormalFloat = { fg = colour.slate },
	Number = { link = "Boolean" },
	Pmenu = { fg = colour.slate },
	PmenuSel = { bg = colour.depth },
	PmenuSbar = { fg = colour.raven, bg = colour.depth },
	PmenuThumb = { fg = colour.raven, bg = colour.depth },
	Search = { link = "Visual" },
	Special = { fg = colour.metal },
	["@string.regexp.lua"] = { fg = colour.bazil, italic = true },
	SpellBad = { link = "Boolean" },
	StatusLine = { fg = colour.slate },
	StatusLineNC = { fg = colour.space, bg = "NONE" },
	String = { fg = colour.paris, italic = true },
	Title = { link = "Type" },
	VertSplit = { fg = colour.paris, bg = colour.paris },
	WarningMsg = { link = "Tag", italic = true },
	Whitespace = { fg = colour.space },
	WildMenu = { link = "MatchParen" },
	Identifier = { link = "Tag" },
	Statement = { link = "Macro" },
	["@comment"] = { link = "Comment" },
	["@comment.bash"] = { link = "Comment" },
	["@keyword.lua"] = { fg = colour.olive, bold = true },
	["@keyword"] = { link = "Macro" },
	["@function"] = { link = "Command" },
	["@constructor"] = { link = "LineNr" },
	["@constructor.tsx"] = { fg = colour.steel, bold = true },
	["@character.printf"] = { fg = colour.amber },
	["@keyword.coroutine.tsx"] = { link = "Boolean" },
	["@function.method"] = { fg = colour.royal },
	["@function.builtin"] = { fg = colour.metal, bold = true },
	["@function.call.lua"] = { fg = colour.metal, bold = true },
	["@function.method.call.lua"] = { link = "Command" },
	["@keyword.return.lua"] = { fg = colour.bazil, bold = true },
	["@keyword.return.tsx"] = { fg = colour.bazil, bold = true },
	["@keyword.operator.tsx"] = { link = "Boolean" },
	["@constant.builtin.tsx"] = { link = "Boolean" },
	["@constant.builtin.lua"] = { link = "Boolean" },
	-- ["@keyword.import.tsx"] = { fg = colour.metal },
	-- ["@keyword.tsx"] = { link = "Macro" },
	-- ["@keyword.typescript"] = { link = "Macro" },
	-- ["@keyword.import.typescript"] = { link = "Macro" },
	["@keyword.function.tsx"] = { fg = colour.metal, bold = true },
	["@markup.heading.1"] = { link = "Macro" },
	["@markup.heading.2"] = { link = "LineNr" },
	["@none"] = { link = "Normal" },
	["@markup.raw.block.markdown"] = { link = "Type" },
	["@module.builtin.lua"] = { fg = colour.slate },
	["@operator"] = { link = "LineNr" },
	["@property"] = { link = "Type" },
	["@punctuation"] = { link = "LineNr" },
	["@punctuation.delimiter"] = { link = "LineNr" },
	["@punctuation.special.markdown"] = { link = "LineNr" },
	["@string.css"] = { link = "boolean" },
	["@tag"] = { link = "LineNr" },
	["@tag.attribute.tsx"] = { fg = colour.capri },
	["@tag.builtin"] = { fg = colour.steel, bold = true },
	["@tag.css"] = { link = "Boolean" },
	["@tag.tsx"] = { fg = colour.steel, bold = true },
	["@type"] = { link = "Normal" },
	["@type.builtin"] = { fg = colour.bazil },
	["@type.css"] = { link = "Macro" },
	["@type.typescript"] = { fg = colour.mauve, bold = true },
	["@variable"] = { link = "Normal" },
	["@variable.member"] = { fg = colour.capri },
	["@character.special"] = { link = "boolean" },
	["@tag.builtin.tsx"] = { fg = colour.steel, bold = true },
	["@type.builtin.tsx"] = { fg = colour.bazil, bold = true },
	keyword = { link = "Macro" },
	tmuxFlags = { link = "Macro" },
	tmuxOptions = { link = "Normal" },
	tmuxVariable = { link = "Normal" },
	tmuxCommands = { link = "Boolean" },
	tmuxFormatString = { link = "String" },
	tmuxVariableExpansion = { link = "Type" },
}

-- Added = { fg = colour.olive, bold = true },
-- Changed = { link = "Type" },
-- ColorColumn = { link = "NonText" },
-- Conceal = { link = "Comment" },
-- Debug = { link = "Boolean" },
-- Define = { link = "Macro" },
-- Delimiter = { link = "LineNr" },
-- DiffChange = { link = "LineNr" },
-- EndOfBuffer = { link = "StatusLineNC" },
-- Exception = { link = "Macro" },
-- Field = { link = "Normal" },
-- Ignore = { fg = colour.ultra },
-- Include = { link = "Macro" },
-- Italic = { italic = true },
-- KeywordFunction = { link = "Macro" },
-- Noise = { link = "Boolean" },
-- NvimInternalError = { link = "Error" },
-- Operator = { link = "LineNr" },
-- PreProc = { link = "Type" },
-- Quote = { link = "Macro" },
-- Repeat = { link = "Macro" },
-- SignColumn = { link = "LineNr" },
-- SpecialChar = { link = "Boolean" },
-- SpecialComment = { link = "Comment" },
-- SpecialKey = { link = "Macro" },
-- SpellCap = { link = "LineNr" },
-- TargetWord = { fg = colour.capri },
-- Todo = { fg = colour.royal, bold = true },
-- ["@comment.documentation"] = { link = "Comment" },
-- ["@comment.error"] = { link = "Error" },
-- ["@comment.note"] = { link = "@keyword.return.tsx" },
-- ["@comment.todo"] = { link = "Todo" },
-- ["@comment.warning"] = { link = "Tag" },
-- ["@constructor.lua"] = { link = "LineNr" },
-- ["@function.call.typscript"] = { link = "@function" },
-- ["@function.lua"] = { link = "Command" },
-- ["@function.method.call.tsx"] = { link = "@function" },
-- ["@function.method.tsx"] = { link = "@function.tsx" },
-- ["@function.tsx"] = { fg = colour.slate, bold = true },
-- ["@function.typescript"] = { link = "@function" },
-- ["@keyword.conditional.lua"] = { link = "Boolean" },
-- ["@keyword.function.lua"] = { link = "Macro" },
-- ["@keyword.function.tsx"] = { link = "Macro" },
-- ["@keyword.import.tsx"] = { link = "Macro" },
-- ["@keyword.import.typescript"] = { link = "Macro" },
-- ["@keyword.repeat.lua"] = { link = "Added" },
-- ["@keyword.return.lua"] = { link = "@keyword.return.tsx" },
-- ["@keyword.tsx"] = { link = "Macro" },
-- ["@keyword.typescript"] = { link = "Macro" },
-- ["@operator.lua"] = { link = "LineNr" },
-- ["@property.json"] = { fg = colour.capri },
-- ["@tag.delimiter.tsx"] = { link = "LineNr" },
-- ["@text.uri"] = { fg = colour.steel, underline = true },
-- ["@variable.lua"] = { link = "Normal" },
-- ["@variable.member.typescript"] = { fg = colour.capri },
-- ["@variable.typescript"] = { link = "Normal" },
-- constructor = { fg = colour.steel, italic = true },
-- htmlTag = { link = "LineNr" },
-- htmlTagName = { link = "Macro" },
-- keyword = { fg = colour.olive, bold = true },
-- markdownCodeBlock = { fg = colour.olive },
-- markdownH1 = { link = "LineNr" },
-- markdownH2 = { link = "LineNr" },
-- markdownItalic = { link = "String" },
-- markdownRule = { link = "LineNr" },
-- muttrcCommand = { link = "Macro" },
-- shDerefSimple = { fg = colour.royal },
-- shQuote = { link = "String" },
-- tmuxCommands = { link = "Macro" },
-- tmuxFlags = { link = "Boolean" },
-- tmuxFormatString = { link = "Todo" },
-- tmuxString = { link = "String" },
-- tmuxVariableExpansion = { fg = colour.royal },
-- variable = { link = "Normal" },
-- vimEnvvar = { link = "Boolean" },
-- vimOper = { link = "Boolean" },
-- vimOperParen = { link = "LineNr" },
-- vimUserFunc = { link = "Normal" },
-- vimVar = { link = "TargetWord" },
-- zshCommands = { link = "Macro" },