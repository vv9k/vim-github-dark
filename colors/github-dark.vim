let g:colors_name = 'github-dark'
let g:github_colors = {
  \ "base0"        : "#0d1117",
  \ "base1"        : "#2d333b",
  \ "base2"        : "#373e47",
  \ "base3"        : "#768390",
  \ "base4"        : "#adbac7",
  \ "base5"        : "#cdd9e5",
  \ "redorange"    : "#f47067",
  \ "yellow"       : "#daaa3f",
  \ "lightblue"    : "#9ad5ff",
  \ "blue"         : "#6cb6ff",
  \ "darkerblue"   : "#82d3ff",
  \ "purp"         : "#dcbdfb",
  \ "green"        : "#8ddb8c",
  \ "none"         : "NONE", }

" if doesn't support termguicolors or < 256 colors exit
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

if !exists("g:gh_color")
    let g:gh_color = "hard"
endif

if g:gh_color ==# "soft"
    let g:github_colors["base0"] = "#161b22"
endif

"########################################
" funcs

function _ghighlight(group, guifg, guibg, style)
    if (a:style != "")
        return "hi " . a:group . " guifg=" . g:github_colors[a:guifg] . " guibg=" . g:github_colors[a:guibg] . " guisp=NONE gui=" . a:style . " cterm=" . a:style
    else
        return "hi " . a:group . " guifg=" . g:github_colors[a:guifg] . " guibg=" . g:github_colors[a:guibg] . " guisp=NONE gui=NONE cterm=NONE"
    endif
endfunction

function GHighlight(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "")
endfunction

function GHighlightBold(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "bold")
endfunction

function GHighlightUnderline(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "underline")
endfunction

function GHighlightUndercurl(group, guifg, guibg)
    exec _ghighlight(a:group, a:guifg, a:guibg, "undercurl")
endfunction

"########################################
" clear any previous highlighting and syntax

hi clear
if exists('syntax_on')
syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

if (has('termguicolors') && &termguicolors) || has('gui_running')

  call GHighlight("Comment", "base3", "none")
  call GHighlight("Constant", "lightblue", "none")
  call GHighlight("Cursor", "base1", "base1")
  call GHighlight("CursorColumn", "none", "base1")
  call GHighlight("CursorLine", "none", "base1")
  call GHighlight("CursorLineNr", "base4", "base1")
  call GHighlight("Delimiter", "base5", "none")
  call GHighlight("DiffAdd", "green", "base0")
  call GHighlight("DiffChange", "yellow", "base0")
  call GHighlight("DiffDelete", "redorange", "base0")
  call GHighlight("Directory", "darkerblue", "none")
  call GHighlight("ErrorMsg", "redorange", "base0")
  call GHighlight("Error", "none", "redorange")
  call GHighlight("Folded", "blue", "base2")
  call GHighlight("Function", "purp", "none")
  call GHighlight("htmlTagName", "green", "none")
  call GHighlight("Identifier", "blue", "none")
  call GHighlight("IncSearch", "base5", "base2")
  call GHighlight("Keyword", "redorange", "none")
  call GHighlight("Label", "blue", "none")
  call GHighlight("LineNr", "base3", "none")
  call GHighlight("MatchParen", "none", "base3")
  call GHighlight("ModeMsg", "base4", "none")
  call GHighlight("MoreMsg", "base4", "none")
  call GHighlight("NonText", "base3", "none")
  call GHighlight("Normal", "base5", "base0")
  call GHighlight("Operator", "blue", "none")
  call GHighlight("Pmenu", "base4", "base1")
  call GHighlight("PmenuSel", "base4", "base2")
  call GHighlight("PreProc", "base5", "none")
  call GHighlight("pythonOperator", "blue", "none")
  call GHighlight("Question", "base4", "none")
  call GHighlight("Repeat", "purp", "none")
  call GHighlight("Search", "base5", "base2")
  call GHighlight("shEcho", "blue", "none")
  call GHighlight("SignColumn", "none", "base0")
  call GHighlight("Special", "blue", "none")
  call GHighlight("SpecialKey", "base3", "none")
  call GHighlight("Statement", "redorange", "none")
  call GHighlight("StatusLine", "base1", "base3")
  call GHighlight("StatusLineNC", "base1", "base3")
  call GHighlight("Title", "base4", "none")
  call GHighlight("Todo", "base4", "base0")
  call GHighlight("Type", "redorange", "none")
  call GHighlight("VertSplit", "base1", "base1")
  call GHighlight("vimHiGroup", "yellow", "none")
  call GHighlight("Visual", "base3", "base1")
  call GHighlight("WarningMsg", "yellow", "base0")

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
  hi! link vimIsCommand vimOption
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

  unlet s:t_Co
  finish
endif
