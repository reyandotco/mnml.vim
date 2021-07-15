" mnml
" highlight smarter, not more
" author: nuaNce

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='mnml'

" colours
let s:bg0     = { "cterm": "0"   }
let s:bg1     = { "cterm": "8"   }
let s:bg2     = { "cterm": "243" }
let s:fg0     = { "cterm": "15"  }
let s:fg1     = { "cterm": "7"   }
let s:red     = { "cterm": "1"   }
let s:green   = { "cterm": "2"   }
let s:yellow  = { "cterm": "3"   }
let s:blue    = { "cterm": "4"   }
let s:magenta = { "cterm": "5"   }
let s:cyan    = { "cterm": "6"   }

" ez
function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "none")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "none")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "none")
endfunction

" normal
" TODO: I'm being a bit racist here
call s:h("Normal",           {"fg": s:fg0})
hi! def link Cursor          Normal
hi! def link Function        Normal
hi! def link Identifier      Normal
hi! def link Type            Normal
hi! def link TabLine         Normal
hi! def link TabLineFill     Normal
hi! def link PreProc         Normal
hi! def link Special         Normal
hi! def link Define          Normal
hi! def link Macro           Normal
hi! def link PreCondit       Normal
hi! def link StorageClass    Normal
hi! def link Structure       Normal
hi! def link Typedef         Normal
hi! def link SpecialChar     Normal
hi! def link Tag             Normal
hi! def link Delimiter       Normal
hi! def link SpecialComment  Normal
hi! def link Debug           Normal

" operator
call s:h("Noise", {"fg": s:bg2, "cterm": "none"})
hi! def link Operator Noise

" comment
call s:h("Comment", {"fg": s:bg1, "cterm": "none"})

" constant
call s:h("Constant",    {"fg": s:blue})
hi! def link Directory  Constant
hi! def link Character  Constant
hi! def link Boolean    Constant
hi! def link String     Constant
hi! def link Number     Constant
hi! def link Float      Constant
hi! def link Title      Constant

" statement (bolded)
call s:h("Statement",    {"fg": s:fg0, "cterm": "bold" })
hi! def link Conditonal  Statement
hi! def link Exception   Statement
hi! def link Keyword     Statement
hi! def link Include     Statement
hi! def link Repeat      Statement
hi! def link Label       Statement

" italicized
call s:h("Italicized", {"fg": s:fg0, "cterm": "italic" })

" todos
call s:h("Todo", {"fg": s:fg0, "cterm": "bold" })

" msgs
call s:h("ErrorMsg",   {"fg": s:red})
call s:h("MoreMsg",    {"fg": s:bg2, "cterm": "bold" })
hi! def link Error     ErrorMsg
hi! def link Question  ErrorMsg
hi! def link ModeMsg   MoreMsg

" dark
call s:h("Dark",       {"fg": s:bg0, "bg": s:fg0})
hi! def link qfLineNr  Dark
hi! def link Folded    Dark

" subtle
call s:h("Subtle",       {"fg": s:bg0})
hi! def link LineNr      Subtle
hi! def link FoldColumn  Subtle
hi! def link SignColumn  Subtle

" split
call s:h("Split",       {"fg": s:bg0})
hi! def link VertSplit  Split

" fuck these so much
hi! StatusLineNC cterm=NONE
hi! StatusLine   cterm=NONE

" linenr
call s:h("CursorLineNr",   {"fg": s:fg0})
hi! def link CursorLineNr  CursorLineNr
hi! CursorLine             cterm=NONE
hi! CursorColumn           cterm=NONE

" search
call s:h("Search",    {"bg": s:yellow, "fg": s:bg0})
call s:h("IncSearch", {"bg": s:yellow, "fg": s:bg0, "cterm": "bold"})

" posmsg
call s:h("PosMsg",      {"fg": s:green, "cterm": "bold"})
hi! def link VimtexMsg  PosMsg

" links
call s:h("Href",       {"fg": s:cyan, "cterm": "underline"})
hi! def link htmlLink  Href

" visual
call s:h("Visual",    {"bg": s:bg0})
call s:h("VisualNOS", {"bg": s:bg0})
call s:h("Ignore",    {"fg": s:bg0})

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
hi! def link helpHyperTextEntry Title
hi! def link helpHyperTextJump  String

" pmenu
call s:h("Pmenu",        {"fg": s:fg0, "bg": s:bg0})
call s:h("PmenuSel",     {"fg": s:fg0, "bg": s:bg0, "cterm": "bold"})
hi! def link TabLineSel  PmenuSel
hi! def link PmenuThumb  Pmenu
hi! def link PmenuSbar   Pmenu

" match paren
call s:h("MatchParen", {"bg": s:bg1, "fg": s:fg0})

" wildmenu
call s:h("WildMenu",          {"cterm": "underline,bold", "bg": s:bg0, "fg": s:fg0})
call s:h("StatusLineOk",      {"cterm": "underline", "bg": s:bg0, "fg": s:green})
call s:h("StatusLineError",   {"cterm": "underline", "bg": s:bg0, "fg": s:red})
call s:h("StatusLineWarning", {"cterm": "underline", "bg": s:bg0, "fg": s:yellow})

" EOB
hi! EndOFBuffer ctermfg=0
hi! NonText     ctermfg=0

" css
hi! def link cssClassNameDot   Statement
hi! def link cssIdentifier     Statement
hi! def link cssAtKeyword      Statement
hi! def link cssClassName      Statement
hi! def link cssBraces         Statement
hi! def link cssFunctionName   Constant
hi! def link cssCustomProp     Constant
hi! def link cssDefinition     Constant
hi! def link cssAttrRegion     Constant
hi! def link cssPseudoClassId  Normal
hi! def link cssPseudoClass    Normal
hi! def link cssBraceError     Normal
hi! def link cssNoise          Normal
hi! def link cssProp           Normal
hi! def link cssImportant      Noise
hi! def link cssFontAttr       Noise

" markdown
hi! def link markdownH1                Statement
hi! def link markdownH2                Statement
hi! def link markdownH3                Statement
hi! def link markdownH4                Statement
hi! def link markdownH5                Statement
hi! def link markdownH6                Statement
hi! def link markdownCodeDelimiter     Constant
hi! def link markdownListMarker        Constant
hi! def link markdownCodeBlock         Constant
hi! def link markdownCode              Constant
hi! def link mkdCodeStart              Comment
hi! def link mkdCodeEnd                Comment
hi! def link markdownHeadingDelimiter  Comment
hi! def link mdkNonListItemBlock       Comment
hi! def link mkdListItem               Noise

" TeX
hi! def link texCmdEnv          Statement
hi! def link texMathEnvArgName  Constant
hi! def link texEnvArgName      Constant
hi! def link texCmdBookTabs     Comment
hi! def link texFilesArg        Normal
hi! def link texFileArg         Normal
hi! def link texCmdStyleBold    Noise
hi! def link texCmdStyleItal    Noise
hi! def link texTabularChar     Noise
hi! def link texCmdPackage      Noise
hi! def link texCmdClass        Noise
hi! def link texCmdItem         Noise
hi! def link texDelim           Noise

" html
hi! def link htmlEndTag   Statement
hi! def link htmlTagN     Statement
hi! def link htmlTag      Statement
hi! def link HtmlTagName  Statement
hi! def link htmlH1       Statement
hi! def link htmlH2       Statement
hi! def link htmlH3       Statement
hi! def link HtmlString   Constant
hi! def link htmlH4       Normal
hi! def link htmlH5       Normal
hi! def link htmlH6       Normal

" javascript
hi! def link jsFlowTypeKeyword    Statement
hi! def link jsFlowImportType     Statement
hi! def link StorageClass         Statement
hi! def link jsFunction           Statement
hi! def link jsGlobalNodeObjects  Normal
hi! def link jsGlobalObjects      Normal
hi! def link jsArrowFunction      Noise

" haskell
hi! def link haskellDeclKeyword  Statement
hi! def link haskellIdentifier   Statement
hi! def link haskellDelimiter    Normal
hi! def link haskellblock        Normal
hi! def link haskellParens       Noise
hi! def link haskellSeparator    Noise

" scss
hi! def link scssSelectorChar  Statement
hi! def link scssSelectorName  Statement
hi! def link scssDefinition    Constant
hi! def link scssVariable      Constant
hi! def link scssAttribute     Normal

" xml
hi! def link xmlNamespace  Statement
hi! def link xmlTagName    Statement
hi! def link xmlEndTag     Statement
hi! def link xmlTag        Statement
hi! def link xmlAttrib     Normal

" c/cpp
hi! def link cppStructure  Statement
hi! def link cType         Statement
hi! def link cSpecial      Noise
hi! def link cDefine       Normal
hi! def link cBlock        Noise

" java
hi! def link javaOperator     Statement
hi! def link javaType         Statement
hi! def link javaParenT1      Noise
hi! def link javaSpecialChar  Noise
hi! def link javaParenT       Noise
hi! def link javaParen1       Noise
hi! def link javaParen        Noise

" csv
hi! def link CSVColumnHeaderOdd   Statement
hi! def link CSVColumnHeaderEven  Statement
hi! def link CSVDelimiter         Constant
hi! def link CSVColumnOdd         Normal
hi! def link CSVColumnEven        Normal

" typescript
hi! def link typescriptVariable   Statement
hi! def link typescriptImport     Statement
hi! def link typescriptArrowFunc  Noise
hi! def link typescriptBlock      Noise

" clojure
hi! def link clojureDefine  Statement
hi! def link clojureMacro   Statement
hi! def link clojureParen   Noise
hi! def link clojureSexp    Noise

" elm
hi! def link elmFuncName   Statement
hi! def link elmTypeDef    Statement
hi! def link elmBraces     Statement
hi! def link elmDelimiter  Noise

" rust
hi! def link rustMacro       Statement
hi! def link rustFuncCall    Normal
hi! def link rustModPathSep  Noise
hi! def link rustFoldBraces  Noise

" sql
hi! def link sqlStatement  Statement
hi! def link sqlKeyword    Statement

" shell
hi! def link ShShebang   Comment
hi! def link zshPreProc  Comment

" nix
hi! def link nixLetExpr  Statement
hi! def link nixPath     Constant

" diffs
hi! def link diffRemoved  DiffDelete
hi! def link diffAdded    DiffAdd

" single and ready to mingle
hi! def link erlangLocalFuncCall  Statement
hi! def link yamlBlockMappingKey  Statement
hi! def link pythonOperator       Statement
hi! def link dosiniHeader         Statement
hi! def link tomlTable            Statement
hi! def link lispParen            Noise
hi! def link jsonBraces           Noise

" VimTeX
hi! def link VimtexTocSecLabel  Statement
hi! def link VimtexInfo         Statement
hi! def link VimtexTocSec0      Normal
hi! def link VimtexTocSec1      Normal
hi! def link VimtexTocSec2      Normal
hi! def link VimtexTocTitle     Normal

" CoC
hi! CocErrorSign    ctermfg=1
hi! CocWarningSign  ctermfg=3
hi! CocHintSign     ctermfg=2
hi! CocInfoSign     ctermfg=6

" ALE
hi! ALEError        ctermfg=1
hi! ALEErrorSign    ctermfg=1
hi! ALEWarning      ctermfg=3
hi! ALEWarningSign  ctermfg=3
hi! ALEInfo         ctermfg=7
hi! ALEInfoSign     ctermfg=7

" nvim-tree
hi! def link NvimTreeOpenedFile        Italicized
hi! def link NvimTreeOpenedFolderName  Statement
hi! def link NvimTreeEmptyFolderName   Statement
hi! def link NvimTreeFolderName        Statement
hi! def link NvimTreeSpecialFile       Constant
hi! def link NvimTreeIndentMarker      Normal
hi! def link NvimTreeFolderIcon        Normal

" sigh
call s:h("AllHigh",              {"fg": s:fg0, "bg": s:fg0})
hi! def link NvimTreeRootFolder  AllHigh
