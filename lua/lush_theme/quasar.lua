local lush = require("lush")
local hsl = lush.hsl

local gray1 = hsl(0, 0, 7)
local gray2 = hsl(0, 0, 10)
local gray3 = hsl(0, 0, 13)
local gray4 = hsl(0, 0, 16)
local gray5 = hsl(0, 0, 19)
local gray6 = hsl(0, 0, 23)
local gray7 = hsl(0, 0, 28)
local gray8 = hsl(0, 0, 38)
local gray9 = hsl(0, 0, 43)
local gray10 = hsl(0, 0, 48)
local gray11 = hsl(0, 0, 71)
local gray12 = hsl(0, 0, 93)
local white = hsl(100, 100, 100)
local black = hsl(0, 0, 0)

local mauve1 = hsl(270, 6, 7)
local mauve2 = hsl(270, 4, 10)
local mauve12 = hsl(258, 7, 72)

local crimson1 = hsl(338, 19, 8)
local crimson2 = hsl(337, 25, 10)
local crimson3 = hsl(333, 45, 15)
local crimson5 = hsl(326, 99, 20)
local crimson7 = hsl(335, 45, 36)
local crimson9 = hsl(336, 80, 58)
local crimson8 = hsl(336, 45, 48)
local crimson10 = hsl(334, 100, 59)
local crimson12 = hsl(330, 91, 91)

local iris4 = hsl(255, 100, 29)
local ruby9 = hsl(338, 100, 49)
local teal9 = hsl(174, 100, 32)
local purple6 = hsl(275, 35, 31)
local brown7 = hsl(26, 26, 30)
local brown8 = hsl(28, 28, 38)
local brown9 = hsl(28, 34, 51)
local brown10 = hsl(27, 36, 56)
local brown11 = brown9.rotate(200)
local blue11_rotate = brown9.rotate(270)
--local brown11 = hsl(28, 50, 72)
local gold10 = hsl(36, 21, 55)
local bronze9 = hsl(18, 24, 54)
local bronze10 = hsl(18, 23, 59)

local red9 = hsl(347, 100, 50)
local yellow9 = hsl(53, 100, 58)
local lime9 = hsl(74, 98, 46)
local lime11 = hsl(80, 70, 66)
local violet11 = hsl(253, 100, 83)
local plum3 = hsl(299, 100, 13)
local plum5 = hsl(296, 40, 24)
local plum7 = hsl(294, 31, 36)
local plum9 = hsl(292, 45, 51)
local plum10 = hsl(294, 100, 46)
local plum11 = hsl(292, 79, 77)
local plum12 = hsl(300, 100, 90)
local amber7 = hsl(37, 64, 27)
local amber9 = hsl(42, 100, 62)
local amber10 = hsl(50, 100, 52)
local amber11 = hsl(46, 100, 54)
local amber12 = hsl(41, 100, 85)
local red11 = hsl(2, 100, 79)
local tomato7 = hsl(9, 49, 35)
local tomato9 = hsl(13, 100, 48)
local tomato10 = hsl(11, 82, 59)
local tomato11 = hsl(12, 100, 75)
local tomato12 = hsl(12, 86, 89)
local orange9 = hsl(25, 100, 49)
local orange10 = hsl(26, 100, 56)
local orange11 = hsl(26, 100, 67)
local grass7 = hsl(144, 100, 21)
local grass9 = hsl(142, 98, 34)
local grass11 = hsl(131, 50, 63)
local grass11_rotate = grass11.rotate(45)
local grass12 = hsl(120, 61, 85)
local mint8 = hsl(170, 53, 33)
local mint10 = hsl(168, 79, 81)
local mint11 = hsl(167, 60, 59)
local mint9 = hsl(172, 99, 48)
local indigo11 = hsl(228, 100, 81)
local blue7 = hsl(208, 100, 34)
local blue9 = hsl(206, 100, 50)
local blue11 = hsl(210, 100, 72)
local sky11 = hsl(200, 80, 70)
local sky8 = hsl(200, 75, 39)
local sky9 = hsl(193, 98, 74)
local cyan7 = hsl(192, 100, 25)
local cyan8 = hsl(192, 80, 34)
local cyan9 = hsl(192, 100, 39)
local cyan10 = hsl(191, 71, 48)
local cyan11 = hsl(190, 75, 60)
local cyan12 = hsl(190, 80, 84)

local step1_gray = gray1
local step1 = gray1
local step2 = gray2
local step3 = gray3
local step4 = gray4
local step5 = gray5
local step6 = gray6
local step7_gray = gray7
local step7 = gray7
local step8 = gray8
local step9 = gray9
local step10 = gray10
local step11 = gray11
local step12 = gray12

local step12_string = gray12
-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {

		Normal({ bg = step1, fg = step11 }),
		Visual({ bg = plum5, fg = plum12, gui = "bold" }),

		Whitespace({ fg = step6 }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Comment({ fg = step8 }),
		LineNr({ fg = step7, bg = step1 }),
		CursorLineNr({ fg = step12, bg = plum5 }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		sym("@constructor.lua")({ fg = Normal.fg }),

		EndOfBuffer({ bg = step1, fg = step10 }),
		CursorLine({ bg = step2 }),
		ColorColumn({ bg = step3 }),
		Cursor = { guibg = tomato9, guifg = gray12 },
		--		Cursor = { bg = tomato9, guifg = gray12 },
		nCursor = { guibg = tomato, fg = gray12 },
		lCursor = { guibg = tomato9, guifg = gray12 },
		TermCursor = { cterm = tomato9, gui = gray12 },
		ErrorMsg({ bg = red9, fg = white }), -- Error messages on the command line

		-- StatusLine
		StatusLine({ bg = black, fg = step10 }), -- Status line of current window
		StatusLineNC({ bg = plum3, fg = plum11, gui = "bold" }), -- Status line of current window

		sym("@include")({ fg = step8 }), -- Include
		--sym("@preproc")({ fg = step10 }), -- PreProc
		sym("@debug")({ fg = step10 }), -- Debug
		sym("@lsp.mod.crateRoot.rust")({ fg = step11 }), -- SpecialChar
		Conceal({ fg = white, bg = step10 }),
		CurSearch({ fg = Conceal.bg, bg = Conceal.fg }), --Used for highlighting a search pattern under the cursor

		Typedef({ fg = step11 }), --   A typedef
		sym("@lsp.type.variable.rust")({ fg = step12 }), -- SpecialChar
		sym("@lsp.type.variable")({ fg = step12 }), -- SpecialChar
		sym("@variable")({ fg = step11 }), -- Identifier
		sym("@lsp.typemod.variable.declaration.rust")({ fg = plum7 }), -- SpecialChar
		sym("@lsp.typemod.decorator.attribute.rust")({ fg = amber10 }), -- SpecialChar
		sym("@lsp.typemod.decorator.library.rust")({ fg = amber12 }), -- SpecialChar
		Number({ fg = step11 }), --   A number constant: 234, 0xff
		Tag({ fg = step11 }), --   You can use CTRL-] on this
		Float({ fg = step11 }), --   A floating point constant: 2.3e10
		Parameter({ fg = step11 }),
		Function({ fg = step11 }),
		--		LspReferenceText({ fg = step11 }), -- Used for highlighting "text" references

		Error({ fg = step9, bg = step1 }),
		Identifier({ fg = step11 }),
		Boolean({ fg = step11 }), --   A boolean constant: TRUE, false

		Underlined({ fg = step6, gui = "underline" }), -- Text that stands out, HTML links
		IblIndent({ fg = step6 }),

		-- SignColumn
		SignColumn({ bg = black, fg = step7_gray }), -- Column where |signs| are displayed
		DiffAdd({ fg = grass9, bg = SignColumn.bg }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = yellow9, bg = SignColumn.bg }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = red9, bg = SignColumn.bg }), -- Diff mode: Deleted line |diff.txt|
		MatchParen({ fg = step12 }),

		sym("@parameter")({ fg = step9 }), -- Identifier
		String({ fg = grass9 }), --   A string constant: "this is a string"
		sym("@string")({ String }), -- String
		IndentBlanklineChar({ fg = step11 }),

		Statement({ fg = step10 }),
		Type({ fg = step10 }),
		sym("@lsp.type.parameter.rust")({ fg = step11 }), -- SpecialChar
		sym("@lsp.type.method.rust")({ fg = step11 }), -- SpecialChar
		sym("@lsp.mod.library.rust")({ fg = step11 }), -- SpecialChar
		sym("@property")({ fg = step11 }), -- Identifier

		sym("@lsp.typemod.parameter.reference.rust")({ fg = step12 }), -- SpecialChar
		sym("@lsp.typemod.parameter.callable.rust")({ fg = plum9 }), -- SpecialChar
		sym("@lsp.type.decorator.rust")({ fg = plum9 }), -- SpecialChar
		sym("@lsp.typemod.struct.declaration.rust")({ fg = plum9 }), -- SpecialChar
		sym("@lsp.typemod.struct.public.rust")({ fg = plum9 }), -- SpecialChar

		sym("@lsp.typemod.enum.public.rust")({ fg = cyan7 }), -- SpecialChar
		sym("@lsp.typemod.enumMember.public.rust")({ fg = cyan9 }), -- SpecialChar
		sym("@lsp.typemod.enumMember.library.rust")({ fg = cyan9 }), -- SpecialChar
		sym("@lsp.typemod.enum.defaultLibrary.rust")({ fg = cyan9 }), -- SpecialCharbrown

		Keyword({ fg = step9 }),
		sym("@keyword.coroutine.rust")({ fg = blue7 }), -- SpecialChar
		sym("@keyword.function.rust")({ fg = blue7 }), -- SpecialChar
		sym("@lsp.typemod.method.trait.rust")({ fg = blue9 }), -- SpecialChar
		sym("@lsp.typemod.method.reference.rust")({ fg = blue7 }), -- SpecialChar
		sym("@lsp.typemod.variable.reference.rust")({ fg = teal9 }), -- SpecialChar
		sym("@lsp.typemod.typeAlias.public.rust")({ fg = teal9 }), -- SpecialChar
		sym("@lsp.type.typeAlias.rust")({ fg = teal9 }), -- SpecialChar

		sym("@lsp.typemod.generic.macro.rust")({ fg = orange9 }), -- SpecialChar
		sym("@lsp.typemod.macro.library.rust")({ fg = orange9 }), -- SpecialChar

		sym("@lsp.type.lifetime.rust")({ fg = cyan9, gui = "italic" }), -- SpecialChar
		sym("@lsp.type.typeParameter.rust")({ fg = cyan9 }), -- SpecialChar
		sym("@lsp.typemod.interface.defaultLibrary.rust")({ fg = step11 }), -- SpecialCharbrown
		sym("@lsp.typemod.interface.public.rust")({ fg = bronze9 }), -- SpecialCharbrown
		sym("@lsp.typemod.interface.library.rust")({ fg = bronze9 }), -- SpecialCharbrown
		sym("@lsp.typemod.function.library.rust")({ fg = bronze9 }), -- SpecialCharbrown
		sym("@lsp.typemod.function.static.rust")({ fg = bronze9 }), -- SpecialCharbrown
		sym("@lsp.typemod.struct.library.rust")({ fg = bronze9 }), -- SpecialCharbrown

		sym("@lsp.type.namespace.rust")({ fg = step11 }), -- SpecialChar
		sym("@lsp.typemod.namespace.library.rust")({ fg = step11 }), -- SpecialChar
		sym("@lsp.typemod.generic.attribute.rust")({ fg = amber12 }), -- SpecialChar
		sym("@lsp.typemod.parameter.declaration.rust")({ fg = step12 }), -- SpecialChar
		sym("@lsp.typemod.parameter.mutable.rust")({ fg = step12 }), -- SpecialChar
		--		sym("@lsp.typemod.namespace.library.rust")({ fg = step10 }), -- SpecialChar
		--sym("@lsp.punctuation.delimiter.rust")({ fg = step11 }), -- SpecialChar
		PreProc({ fg = step11 }), -- (*) Generic Preprocessor
		Define({ fg = step11 }), --   Preprocessor #define

		Constant({ fg = step11 }),
		sym("@lsp.type.property.rust")({ fg = step12 }), -- SpecialChar
		sym("@lsp.typemod.property.public.rust")({ fg = step12 }), -- SpecialChar
		Repeat({ fg = step11 }), --   for, do, while, etc.
		Label({ fg = step11 }), --   case, default, etc.
		sym("@comment")({ Comment }), -- Comment

		sym("@keyword.type.rust")({ fg = plum7 }), -- SpecialChar
		sym("@lsp.type.keyword.rust")({ fg = plum7 }), -- SpecialChar
		sym("@lsp.typemod.keyword.public.rust")({ fg = plum7 }), -- SpecialChar
		sym("@keyword.rust")({ fg = step11 }), -- SpecialChartom
		sym("@keyword.import.rust")({ fg = step5 }), -- SpecialChar
		sym("@lsp.type.formatSpecifier.rust")({ fg = grass7 }), -- SpecialChar
		Operator({ fg = step7 }), --   "sizeof", "+", "*", etc.
		sym("@lsp.typemod.keyword.attribute.rust")({ fg = plum9 }), -- SpecialChar
		sym("@lsp.typemod.selfKeyword.mutable.rust")({ fg = plum12, bold = true }), -- SpecialChar
		sym("@keyword.modifier.rust")({ fg = step11 }), -- SpecialChar
		sym("@punctuation")({ fg = step8 }), -- Delimiter

		sym("@constant.builtin")({ fg = step11 }), -- Special
		-- Include({ fg = lime9 }), --   Preprocessor #include
		--NonText({ fg = lime9 }),
		-- Character({ fg = lime9 }), --   A character constant: 'c', '\n'
		-- Special({ fg = lime9 }),
		-- SpecialChar({ fg = lime9 }), --   Special character in a constant
		--Delimiter({ fg = lime9 }), --   Character that needs attention
		-- SpecialComment({ fg = lime9 }), --   Special things inside a comment (e.g. '\n')

		-- Debug          { }, --   Debugging statements
		-- sym("@method")({ fg = step11 }), -- Function
		--		sym("@field")({ fg = lime9 }), -- Identifier

		-- Conditional({ fg = lime9 }), --   if, then, else, endif, switch, etc.
		-- Exception({ fg = lime9 }), --   try, catch, throw

		Macro({ Define }), --   Same as Define
		-- See :h highlight-groups
		--
		-- Cursor         { }, -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		-- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		-- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		-- Directory      { }, -- Directory names (and other special names in listings)
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor({ bg = step1 }), -- Cursor in a focused terminal
		--TermCursorNC({ bg = step1 }), -- Cursor in an unfocused terminal
		-- VertSplit      { }, -- Column separating vertically split windows
		-- Folded         { }, -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		IncSearch({ bg = amber9, fg = step1 }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ bg = red9 }), -- |:substitute| replacement text highlighting
		-- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		-- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		-- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		-- Normal         { }, -- Normal text
		-- NormalFloat    { }, -- Normal text in floating windows.
		-- FloatBorder    { }, -- Border of floating windows.
		-- FloatTitle     { }, -- Title of floating windows.
		-- NormalNC       { }, -- normal text in non-current windows
		-- Pmenu          { }, -- Popup menu: Normal item.
		Pmenu({ bg = plum5, fg = plum12, gui = "bold" }),
		PmenuSel({ fg = Pmenu.bg, bg = Pmenu.fg }), -- Popup menu: Selected item.
		PmenuKindSel({ PmenuSel }), -- Popup menu: Selected item.
		--PmenuExtraSel({ guifg = Pmenu.bg, guibg = Pmenu.fg })plum5, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		-- PmenuSbar      { }, -- Popup menu: Scrollbar.
		-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ bg = amber11, fg = step1 }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        { }, -- Tab pages line, not active tab page label
		-- TabLineFill    { }, -- Tab pages line, where there are no labels
		-- TabLineSel     { }, -- Tab pages line, active tab page label
		-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
		-- Visual         { }, -- Visual mode selection
		-- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     { }, -- Warning messages
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		-- Comment        { }, -- Any comment

		-- PreCondit({ fg = lime9 }), --   Preprocessor #if, #else, #endif, etc.

		--StorageClass({ fg = lime9 }), --   static, register, volatile, etc.
		--		Structure({ fg = step11 }), --   struct, union, enum, etc.
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		--		LspReferenceText({ fg = step11 }), -- Used for highlighting "read" references
		--		LspReferenceRead({ fg = step11 }), -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym("@text.literal")({ CurSearch }), -- Comment
		-- sym("@text.reference")({ CurSearch }), -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym("@constant")({ Constant }), -- Constant
		-- sym("@constant.macro")({ CurSearch }), -- Define
		-- sym("@define")({ CurSearch }), -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym("@string.special")({ CurSearch }), -- SpecialChar
		--sym("@character")({}), -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym("@function")({ guifg = step11 }), -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		sym("@operator.rust")({ fg = step10 }), -- Operator
		--sym("@keyword")({ fg = step11 }), -- Keyword
		-- sym"@exception"         { }, -- Exception
		--sym("@type")({ fg = lime9 }), -- Type
		--sym("@type.definition")({ fg = lime9 }), -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		--sym("@structure")({ Type }), -- Structure
		-- sym("@namespace")({ Type }), -- Identifier
		-- sym"@tag"               { }, -- Tag
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
