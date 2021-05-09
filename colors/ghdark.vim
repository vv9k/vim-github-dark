let g:colors_name = 'ghdark'
let g:github_colors = {
  \ "base0"        : ["#0d1117", 233],
  \ "base1"        : ["#2d333b", 235],
  \ "base2"        : ["#373e47", 237],
  \ "base3"        : ["#768390", 243],
  \ "base4"        : ["#adbac7", 249],
  \ "base5"        : ["#cdd9e5", 252],
  \ "lightred"     : ["#f47067", 210],
  \ "red"          : ["#f14438", 203],
  \ "yellow"       : ["#daaa3f", 178],
  \ "lightyellow"  : ["#e2bb68", 221],
  \ "lightblue"    : ["#9ad5ff", 153],
  \ "blue"         : ["#6cb6ff", 75],
  \ "lightpurp"    : ["#dcbdfb", 183],
  \ "purp"         : ["#ac63f6", 135],
  \ "lightgreen"   : ["#8ddb8c", 114],
  \ "green"        : ["#53c851", 76],
  \ "none"         : ["NONE", "NONE"]
  \ }

" if doesn't support termguicolors or < 256 colors exit
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

"########################################
" Terminal colors for NeoVim

if has('nvim')
    let g:terminal_color_0 = g:github_colors["base0"][0]
    let g:terminal_color_8 = g:github_colors["base3"][0]

    let g:terminal_color_1 = g:github_colors["red"][0]
    let g:terminal_color_9 = g:github_colors["lightred"][0]

    let g:terminal_color_2 = g:github_colors["green"][0]
    let g:terminal_color_10 = g:github_colors["lightgreen"][0]

    let g:terminal_color_3 = g:github_colors["yellow"][0]
    let g:terminal_color_11 = g:github_colors["lightyellow"][0]

    let g:terminal_color_4 = g:github_colors["blue"][0]
    let g:terminal_color_12 = g:github_colors["lightblue"][0]

    let g:terminal_color_5 = g:github_colors["purp"][0]
    let g:terminal_color_13 = g:github_colors["lightpurp"][0]

    let g:terminal_color_6 = g:github_colors["blue"][0]
    let g:terminal_color_14 = g:github_colors["lightblue"][0]

    let g:terminal_color_7 = g:github_colors["base4"][0]
    let g:terminal_color_15 = g:github_colors["base5"][0]
endif

" Terminal colors for Vim
if has('*term_setansicolors')
    let g:terminal_ansi_colors = repeat([0], 16)

    let g:terminal_ansi_colors[0] = g:github_colors["base0"][0]
    let g:terminal_ansi_colors[8] = g:github_colors["base3"][0]

    let g:terminal_ansi_colors[1] = g:github_colors["red"][0]
    let g:terminal_ansi_colors[9] = g:github_colors["lightred"][0]

    let g:terminal_ansi_colors[2] = g:github_colors["green"][0]
    let g:terminal_ansi_colors[10] = g:github_colors["lightgreen"][0]

    let g:terminal_ansi_colors[3] = g:github_colors["yellow"][0]
    let g:terminal_ansi_colors[11] = g:github_colors["lightyellow"][0]

    let g:terminal_ansi_colors[4] = g:github_colors["blue"][0]
    let g:terminal_ansi_colors[12] = g:github_colors["lightblue"][0]

    let g:terminal_ansi_colors[5] = g:github_colors["purp"][0]
    let g:terminal_ansi_colors[13] = g:github_colors["lightpurp"][0]

    let g:terminal_ansi_colors[6] = g:github_colors["blue"][0]
    let g:terminal_ansi_colors[14] = g:github_colors["lightblue"][0]

    let g:terminal_ansi_colors[7] = g:github_colors["base4"][0]
    let g:terminal_ansi_colors[15] = g:github_colors["base5"][0]
endif

if !exists("g:gh_color")
    let g:gh_color = "hard"
endif

if g:gh_color ==# "soft"
    let g:github_colors["base0"] = ["#161b22", 234]
endif

"########################################
" funcs

function! s:ghhl(group, guifg, ...)
    " Arguments: group, guifg, guibg, style

    let fg = g:github_colors[a:guifg]

    if a:0 >= 1
        let bg = g:github_colors[a:1]
    else
        let bg = g:github_colors["none"]
    endif

    if a:0 >= 2
        let style = a:2
    else
        let style = "NONE"
    endif
    
    let hi_str = [ "hi", a:group,
            \ 'guifg=' . fg[0], "ctermfg=" . fg[1],
            \ 'guibg=' . bg[0], "ctermbg=" . bg[1],
            \ 'gui=' . style, "cterm=" . style
            \ ]
    
    execute join(hi_str, ' ')
endfunction

"########################################
" clear any previous highlighting and syntax

hi clear
if exists('syntax_on')
syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

"########################################
" set the colors

call s:ghhl("Comment", "base3")
call s:ghhl("Constant", "lightblue")
call s:ghhl("Cursor", "base1", "base1")
call s:ghhl("CursorColumn", "none", "base1")
call s:ghhl("CursorLine", "none", "base1")
call s:ghhl("CursorLineNr", "base4", "base1")
call s:ghhl("Delimiter", "base5")
call s:ghhl("DiffAdd", "lightgreen", "base0")
call s:ghhl("DiffChange", "yellow", "base0")
call s:ghhl("DiffDelete", "lightred", "base0")
call s:ghhl("Directory", "blue")
call s:ghhl("ErrorMsg", "lightred", "base0")
call s:ghhl("Error", "none", "lightred")
call s:ghhl("Folded", "blue", "base2")
call s:ghhl("Function", "lightpurp")
call s:ghhl("htmlTagName", "lightgreen")
call s:ghhl("Identifier", "blue")
call s:ghhl("IncSearch", "base5", "base2")
call s:ghhl("Keyword", "lightred")
call s:ghhl("Label", "blue")
call s:ghhl("LineNr", "base3")
call s:ghhl("MatchParen", "none", "base3")
call s:ghhl("ModeMsg", "base4")
call s:ghhl("MoreMsg", "base4")
call s:ghhl("NonText", "base3")
call s:ghhl("Normal", "base5", "base0")
call s:ghhl("Operator", "blue")
call s:ghhl("Pmenu", "base4", "base1")
call s:ghhl("PmenuSel", "base4", "base2")
call s:ghhl("PreProc", "base5")
call s:ghhl("pythonOperator", "blue")
call s:ghhl("Question", "base4")
call s:ghhl("Repeat", "lightpurp")
call s:ghhl("Search", "base5", "base2")
call s:ghhl("shEcho", "blue")
call s:ghhl("SignColumn", "none", "base0")
call s:ghhl("Special", "blue")
call s:ghhl("SpecialKey", "base3")
call s:ghhl("Statement", "lightred")
call s:ghhl("StatusLine", "base1", "base3")
call s:ghhl("StatusLineNC", "base1", "base3")
call s:ghhl("Title", "base4")
call s:ghhl("Todo", "base4", "base0")
call s:ghhl("Type", "lightred")
call s:ghhl("VertSplit", "base1", "base1")
call s:ghhl("vimHiGroup", "yellow")
call s:ghhl("Visual", "base3", "base1")
call s:ghhl("WarningMsg", "yellow", "base0")

"########################################
" links

hi! link ALEVirtualTextError ErrorMsg
hi! link ALEVirtualTextWarning WarningMsg
hi! link bibEntryKw LibraryIdent
hi! link bibKey IdentifierDef
hi! link bibType LibraryType
hi! link Boolean Constant
hi! link cDefine Keyword
hi! link Character Constant
hi! link Conceal Ignore
hi! link Conditional Statement
hi! link cssAtRule Keyword
hi! link cssAtRuleLogical Identifier
hi! link cssAttr Keyword
hi! link cssAttrRegion Function
hi! link cssBackgroundAttr cssBoxAttr
hi! link cssBorderAttr cssBoxAttr
hi! link cssBoxAttr Normal
hi! link cssBraces cssNoise
hi! link cssClassName LocalIdent
hi! link cssColor Constant
hi! link cssCommonAttr cssBoxAttr
hi! link cssCustomProp Identifier
hi! link cssFlexibleBoxAttr cssBoxAttr
hi! link cssFunction None
hi! link cssIdentifier LocalIdent
hi! link cssMediaType Normal
hi! link cssMultiColumnAttr cssBoxAttr
hi! link cssNoise Normal
hi! link cssPositioningAttr cssBoxAttr
hi! link cssProp LibraryType
hi! link cssPseudoClassId LibraryIdent
hi! link cssSelectorOp Operator
hi! link cssTableAttr cssBoxAttr
hi! link cssTagName htmlTagName
hi! link cssTextAttr cssBoxAttr
hi! link cssTransitionAttr cssBoxAttr
hi! link cssUIAttr cssBoxAttr
hi! link cssUnitDecorators Normal
hi! link Debug Special
hi! link Define PreProc
hi! link diffAdded DiffAdd
hi! link diffBDiffer WarningMsg
hi! link diffChanged DiffChange
hi! link diffCommon WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffFile Directory
hi! link diffIdentical WarningMsg
hi! link diffIndexLine Number
hi! link diffIsA WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffOnly WarningMsg
hi! link diffRemoved DiffDelete
hi! link Exception Statement
hi! link Float Constant
hi! link FunctionDef Function
hi! link gitcommitHeader Todo
hi! link gitcommitOverflow Error
hi! link gitcommitSummary Title
hi! link goBuiltins Function
hi! link goField LocalIdent
hi! link goFunctionCall LibraryFunc
hi! link goFunction FunctionDef
hi! link goLabel Keyword
hi! link goType Normal
hi! link goVarAssign LocalIdent
hi! link goVarDefs IdentifierDef
hi! link helpCommand helpExample
hi! link helpExample markdownCode
hi! link helpHeadline Title
hi! link helpHyperTextEntry Comment
hi! link helpHyperTextJump Underlined
hi! link helpSectionDelim Ignore
hi! link helpURL helpHyperTextJump
hi! link helpVim Title
hi! link htmlArg Special
hi! link htmlLink Underlined
hi! link htmlSpecialTagName htmlTagName
hi! link htmlTag Identifier
hi! link Include Statement
hi! link javaScriptBraces Normal
hi! link javaScriptFunction Keyword
hi! link javaScriptIdentifier Keyword
hi! link jinjaBlockName Typedef
hi! link jinjaFilter LibraryFunc
hi! link jinjaNumber Number
hi! link jinjaOperator Operator
hi! link jinjaRawDelim PreProc
hi! link jinjaSpecial Keyword
hi! link jinjaString String
hi! link jinjaTagDelim Delimiter
hi! link jinjaVarDelim Delimiter
hi! link jsBuiltins LibraryFunc
hi! link jsClassDefinition Typedef
hi! link jsDestructuringBraces jsFuncBraces
hi! link jsDomErrNo LibraryIdent
hi! link jsDomNodeConsts LibraryIdent
hi! link jsDot Normal
hi! link jsExceptions LibraryType
hi! link jsFuncArgCommas jsFuncParens
hi! link jsFuncBraces jsFuncBraces
hi! link jsFuncName Function
hi! link jsFuncParens Normal
hi! link jsFunction jsStatement
hi! link jsGlobalNodeObjects jsFuncName
hi! link jsGlobalObjects Normal
hi! link jsIfElseBraces jsFuncBraces
hi! link jsNoise jsFuncBraces
hi! link jsObjectBraces jsFuncBraces
hi! link jsObjectKey jsObjectProp
hi! link jsObjectProp LocalIdent
hi! link jsObjectSeparator jsFuncBraces
hi! link jsonKeyword jsonString
hi! link jsonKeywordMatch Operator
hi! link jsonQuote StringDelimiter
hi! link jsOperatorKeyword jsStatement
hi! link jsParensIfElse jsFuncBraces
hi! link jsParens jsFuncBraces
hi! link jsThis jsStatement
hi! link jsVariableDef IdentifierDef
hi! link LibraryFunc Function
hi! link LibraryIdent Identifier
hi! link LibraryType Type
hi! link LocalFunc Function
hi! link LocalIdent Identifier
hi! link LocalType Type
hi! link Macro PreProc
hi! link markdownBoldDelimiter markdownDelimiter
hi! link markdownBoldItalicDelimiter markdownDelimiter
hi! link markdownCodeBlock markdownCode
hi! link markdownCodeDelimiter markdownDelimiter
hi! link markdownHeadingDelimiter markdownDelimiter
hi! link markdownItalicDelimiter markdownDelimiter
hi! link markdownLinkDelimiter markdownDelimiter
hi! link markdownLinkTextDelimiter markdownDelimiter
hi! link markdownLinkText None
hi! link markdownListMarker markdownDelimiter
hi! link markdownRule markdownDelimiter
hi! link markdownUrl Underlined
hi! link MsgArea Title
hi! link Noise Delimiter
hi! link NonText Ignore
hi! link Number Constant
hi! link PreCondit PreProc
hi! link Quote StringDelimiter
hi! link rsForeignConst LibraryIdent
hi! link rsForeignFunc LibraryFunc
hi! link rsForeignType LibraryType
hi! link rsFuncDef FunctionDef
hi! link rsIdentDef IdentifierDef
hi! link rsLibraryConst LibraryIdent
hi! link rsLibraryFunc LibraryFunc
hi! link rsLibraryType LibraryType
hi! link rsLifetimeDef IdentifierDef
hi! link rsSpecialLifetime LibraryIdent
hi! link rsUserConst LocalIdent
hi! link rsUserFunc LocalFunc
hi! link rsUserLifetime LocalIdent
hi! link rsUserMethod LibraryFunc
hi! link rsUserType LocalType
hi! link rustAttribute Normal
hi! link rustDerive rustAttribute
hi! link rustEnumVariant Keyword
hi! link rustIdentifier Function
hi! link rustIdentifier Normal
hi! link rustModPath Normal
hi! link rustModPathSep Keyword
hi! link rustOperator Keyword
hi! link rustQuestionMark Normal
hi! link rustSelf PreProc
hi! link scssAttribute cssNoise
hi! link scssInclude Keyword
hi! link scssMixin Keyword
hi! link scssMixinName LocalFunc
hi! link scssMixinParams cssNoise
hi! link scssSelectorName cssClassName
hi! link scssVariableAssignment Operator
hi! link scssVariableValue Operator
hi! link Searchlight IncSearch
hi! link shAlias shVariable
hi! link shCaseLabel Type
hi! link shDerefPPS Keyword
hi! link shDeref shVariable
hi! link shDerefSimple shVariable
hi! link shDoubleQuote shQuote
hi! link shEcho Normal
hi! link shFunctionKey Keyword
hi! link shFunctionOne Normal
hi! link shOperator shParen
hi! link shOption shFunctionOne
hi! link shParen Normal
hi! link shQuote Constant
hi! link shRange shParen
hi! link shRedir Keyword
hi! link shSetList shFunctionOne
hi! link shSnglCase shParen
hi! link shStatement Keyword
hi! link shVariable Normal
hi! link shWrapLineOperator shParen
hi! link SignifySignAdd Signify
hi! link SignifySignChange Signify
hi! link SignifySignDelete Signify
hi! link SpecialChar Special
hi! link SpecialKey Ignore
hi! link StatusLineTermNC StatusLineNC
hi! link StatusLineTerm StatusLine
hi! link StorageClass Statement
hi! link String Constant
hi! link StringDelimiter String
hi! link Structure Statement
hi! link swiftFuncDef FunctionDef
hi! link swiftIdentDef IdentifierDef
hi! link swiftLibraryFunc LibraryFunc
hi! link swiftLibraryProp LibraryIdent
hi! link swiftLibraryType LibraryType
hi! link swiftUserFunc LocalFunc
hi! link swiftUserProp LocalIdent
hi! link swiftUserType LocalType
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link TabLine StatusLineNC
hi! link Tag Special
hi! link Terminal Normal
hi! link typescriptArrayMethod LibraryFunc
hi! link typescriptArrowFunc Operator
hi! link typescriptAssign Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptBOM LibraryType
hi! link typescriptBOMWindowCons LibraryType
hi! link typescriptBOMWindowMethod LibraryFunc
hi! link typescriptBOMWindowProp LibraryType
hi! link typescriptBraces Delimiter
hi! link typescriptCall None
hi! link typescriptClassHeritage Type
hi! link typescriptClassName TypeDef
hi! link typescriptDOMDocMethod LibraryFunc
hi! link typescriptDOMDocProp LibraryIdent
hi! link typescriptDOMEventCons LibraryType
hi! link typescriptDOMEventMethod LibraryFunc
hi! link typescriptDOMEventMethod LibraryFunc
hi! link typescriptDOMEventProp LibraryIdent
hi! link typescriptDOMEventTargetMethod LibraryFunc
hi! link typescriptDOMNodeMethod LibraryFunc
hi! link typescriptDOMStorageMethod LibraryIdent
hi! link typescriptEndColons Delimiter
hi! link typescriptExport Keyword
hi! link typescriptFuncName FunctionDef
hi! link typescriptFuncTypeArrow typescriptArrowFunc
hi! link typescriptGlobal typescriptPredefinedType
hi! link typescriptIdentifier Keyword
hi! link typescriptInterfaceName Typedef
hi! link typescriptMember LocalFunc
hi! link typescriptObjectLabel LocalIdent
hi! link typescriptOperator Keyword
hi! link typescriptParens Delimiter
hi! link typescriptPredefinedType LibraryType
hi! link typescriptTypeAnnotation Delimiter
hi! link typescriptTypeReference typescriptUserDefinedType
hi! link typescriptUserDefinedType LocalType
hi! link typescriptVariableDeclaration IdentifierDef
hi! link typescriptVariable Keyword
hi! link vimAutoCmdSfxList LibraryType
hi! link vimAutoEventList LocalIdent
hi! link vimCmdSep vimSep
hi! link vimCommand Keyword
hi! link vimCommentTitle SpecialComment
hi! link vimContinue vimSep
hi! link vimExecute LocalFunc
hi! link vimFuncName LibraryFunc
hi! link vimFunction FunctionDef
hi! link vimFuncVar Normal
hi! link vimGroup vimHiGroup
hi! link vimHiBang vimOper
hi! link vimHighlight Operator
hi! link vimIsCommand vimVar
hi! link vimLet vimOper
hi! link vimMapModKey vimNotation
hi! link vimNotation LibraryType
hi! link vimOper Keyword
hi! link vimOperParen Normal
hi! link vimOption LibraryIdent
hi! link vimParenSep vimSep
hi! link vimSep Normal
hi! link vimUserFunc LocalFunc
hi! link vimVar Normal
hi! link VisualNOS Visual
hi! link Whitespace Ignore
