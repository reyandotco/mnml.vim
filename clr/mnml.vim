" mnml
" highlight smarter, not more
" author: nuaNce

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='mnml'

" colours
"
let s:bg0 = { "cterm": "0"   }
let s:bg1 = { "cterm": "8"   }
let s:bg2 = { "cterm": "243" }
let s:fg0 = { "cterm": "15"  }
let s:fg1 = { "cterm": "7"   }
"
let s:red    = { "cterm": "1" }
let s:green  = { "cterm": "2" }
let s:yellow = { "cterm": "3" }
let s:blue   = { "cterm": "4" }
let s:purple = { "cterm": "5" }
let s:cyan   = { "cterm": "6" }

" ez
function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" normal
call s:h("Normal",       {"fg": s:fg0})
hi! link Cursor          Identifier
hi! link Function        Identifier
hi! link SpecialChar     Special
hi! link Tag             Special
hi! link Delimiter       Special
hi! link SpecialComment  Special
hi! link Debug           Special
hi! link Define          PreProc
hi! link Macro           PreProc
hi! link PreCondit       PreProc
hi! link Identifier      Normal
hi! link Type            Normal
hi! link TabLine         Normal
hi! link TabLineFill     Normal
hi! link PreProc         Normal
hi! link Special         Normal
hi! link StorageClass    Type
hi! link Structure       Type
hi! link Typedef         Type

" operator
call s:h("Noise",    {"fg": s:bg2, "cterm": "NONE"})
hi! link Operator    Noise
hi! link FoldColumn  LineNr
hi! link SignColumn  LineNr

" comment
call s:h("Comment",  {"fg": s:bg1, "cterm": "NONE"})

" constant
call s:h("Constant", {"fg": s:blue})
hi! link Character   Constant
hi! link Number      Constant
hi! link Boolean     Constant
hi! link Float       Constant
hi! link String      Constant
hi! link Directory   Constant
hi! link Title       Constant

" statement
call s:h("Statement", {"fg": s:fg0, "cterm": "bold" })
hi! link Include      Statement
hi! link Conditonal   Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Exception    Statement
hi! link Keyword      Statement

" msgs
call s:h("ErrorMsg", {"fg": s:red})
call s:h("MoreMsg",  {"fg": s:bg2, "cterm": "bold" })
hi! link Error       ErrorMsg
hi! link Question    ErrorMsg
hi! link ModeMsg     MoreMsg

" dark
call s:h("Dark",  {"fg": s:bg0, "bg": s:fg0})
hi! link Folded   Dark
hi! link qfLineNr Dark

" subtle
call s:h("Subtle", {"fg": s:bg0})
hi! link LineNr    Subtle

" split
call s:h("Split",  {"fg": s:bg1, "bg": s:bg1})
hi! link VertSplit Split

" linenr
call s:h("CursorLineNr", {"fg": s:fg0, "bg": s:bg0, "cterm": "bold"})
hi! link CursorLineNr    CursorLineNr

" search
call s:h("Search",    {"bg": s:yellow, "fg": s:bg0})
call s:h("IncSearch", {"bg": s:yellow, "fg": s:bg0, "cterm": "bold"})

" posmsg
call s:h("PosMsg", {"fg": s:green, "cterm": "bold"})
hi! link VimtexMsg PosMsg

" links
call s:h("Href", {"fg": s:cyan, "cterm": "underline"})
hi! link htmlLink Href

" visual
call s:h("Visual",    {"bg": s:bg0})
call s:h("VisualNOS", {"bg": s:bg0})

call s:h("Ignore", {"fg": s:bg0})

" diffs
call s:h("DiffAdd",    {"fg": s:green, "bg": s:bg0})
call s:h("DiffDelete", {"fg": s:red, "bg": s:bg0})
call s:h("DiffChange", {"fg": s:yellow})
call s:h("DiffText",   {"fg": s:blue})

" spell checking
call s:h("SpellBad",   {"cterm": "underline", "fg": s:red})
call s:h("SpellCap",   {"cterm": "underline", "fg": s:green})
call s:h("SpellRare",  {"cterm": "underline", "fg": s:red})
call s:h("SpellLocal", {"cterm": "underline", "fg": s:green})

" hypertext
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String

" pmenu
call s:h("Pmenu",    {"fg": s:fg0, "bg": s:bg0})
call s:h("PmenuSel", {"fg": s:fg0, "bg": s:bg0, "cterm": "bold"})
hi! link PmenuSbar   Pmenu
hi! link PmenuThumb  Pmenu
hi! link TabLineSel  PmenuSel

" cursorline
call s:h("CursorLine",   {"bg": s:bg0})
call s:h("CursorColumn", {"bg": s:bg0})

" match paren
call s:h("MatchParen", {"bg": s:bg1, "fg": s:fg0})

" wildmenu
call s:h("WildMenu",          {"cterm": "underline,bold", "bg": s:bg0, "fg": s:fg0})
call s:h("StatusLineOk",      {"cterm": "underline", "bg": s:bg0, "fg": s:green})
call s:h("StatusLineError",   {"cterm": "underline", "bg": s:bg0, "fg": s:red})
call s:h("StatusLineWarning", {"cterm": "underline", "bg": s:bg0, "fg": s:yellow})

"EOB
hi EndOFBuffer ctermfg=0
hi NonText     ctermfg=0

"statusline
hi StatusLine   ctermfg=8
hi StatusLineNC ctermfg=8

" lang specific highlighting

" markdown
hi link markdownH1                Statement
hi link markdownH2                Statement
hi link markdownH3                Statement
hi link markdownH4                Statement
hi link markdownH5                Statement
hi link markdownH6                Statement
hi link markdownListMarker        Constant
hi link markdownCode              Constant
hi link markdownCodeBlock         Constant
hi link markdownCodeDelimiter     Constant
hi link markdownHeadingDelimiter  Constant
hi link mkdCodeStart              Comment
hi link mkdCodeEnd                Comment
hi link mkdListItem               Noise

" css
hi link cssBraces         Statement
hi link cssIdentifier     Statement
hi link cssAtKeyword      Statement
hi link cssClassName      Statement
hi link cssClassNameDot   Statement
hi link cssCustomProp     Constant
hi link cssFunctionName   Constant
hi link cssDefinition     Constant
hi link cssAttrRegion     Constant
hi link cssProp           Normal
hi link cssNoise          Normal
hi link cssPseudoClassId  Normal
hi link cssPseudoClass    Normal
hi link cssImportant      Noise
hi link cssFontAttr       Noise
hi link cssBraceError     Normal

" html
hi link htmlTagN     Statement
hi link htmlTag      Statement
hi link htmlEndTag   Statement
hi link HtmlTagName  Statement
hi link htmlH1       Statement
hi link htmlH2       Statement
hi link htmlH3       Statement
hi link HtmlString   Constant
hi link htmlH4       Normal
hi link htmlH5       Normal
hi link htmlH6       Normal

" javascript
hi link jsFlowTypeKeyword    Statement
hi link jsFlowImportType     Statement
hi link jsFunction           Statement
hi link StorageClass         Statement
hi link jsGlobalObjects      Normal
hi link jsGlobalNodeObjects  Normal
hi link jsArrowFunction      Noise

" haskell
hi link haskellDeclKeyword  Statement
hi link haskellIdentifier   Statement
hi link haskellblock        Normal
hi link haskellDelimiter    Normal
hi link haskellParens       Noise
hi link haskellSeparator    Noise

" scss
hi link scssSelectorChar  Statement
hi link scssSelectorName  Statement
hi link scssVariable      Constant
hi link scssDefinition    Constant
hi link scssAttribute     Normal

" TeX
hi link texDelim         Statement
hi link texEnvArgName    Constant
hi link texTabularChar   Noise
hi link texCmdBookTabs   Noise

" xml
hi link xmlNamespace Statement
hi link xmlTagName   Statement
hi link xmlEndTag    Statement
hi link xmlTag       Statement
hi link xmlAttrib    Normal

" clojure
hi link clojureDefine  Statement
hi link clojureMacro   Statement
hi link clojureParen   Noise
hi link clojureSexp    Noise

" elm
hi link elmTypeDef    Statement
hi link elmFuncName   Statement
hi link elmBraces     Statement
hi link elmDelimiter  Noise

" c/cpp
hi link cType         Statement
hi link cppStructure  Statement
hi link cSpecial      Noise
hi link cBlock        Noise

" sql
hi link sqlStatement  Statement
hi link sqlKeyword    Statement

" shell
hi link ShShebang   Comment
hi link zshPreProc  Comment

" nix
hi link nixLetExpr  Statement
hi link nixPath     Constant

" todos
hi link shTodo  Statement
hi link Todo    Statement

" diffs
hi link diffRemoved  DiffDelete
hi link diffAdded    DiffAdd

" not separating
hi link lispParen  Noise
hi link dosiniHeader  Statement
hi link jsonBraces  Noise
hi link tomlTable  Statement
hi link erlangLocalFuncCall  Statement
hi link yamlBlockMappingKey  Statement
hi link pythonOperator  Statement

" plugin specific highlighting

" VimTeX
hi link VimtexInfo         Statement
hi link VimtexTocSecLabel  Statement
hi link VimtexTocSec0      Normal
hi link VimtexTocSec1      Normal
hi link VimtexTocSec2      Normal
hi link VimtexTocTitle     Normal

" CoC
hi CocErrorSign    ctermfg=1
hi CocWarningSign  ctermfg=3
hi CocHintSign     ctermfg=2
hi CocInfoSign     ctermfg=6

" ALE
hi ALEError        ctermfg=1
hi ALEErrorSign    ctermfg=1
hi ALEWarning      ctermfg=3
hi ALEWarningSign  ctermfg=3
hi ALEInfo         ctermfg=7
hi ALEInfoSign     ctermfg=7
