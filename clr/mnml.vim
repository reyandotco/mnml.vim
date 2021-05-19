" mnml
" highlight smarter
" not more
" author: nuaNce

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='mnml'

" define colours
"
" grayscale
let s:b1 = { "cterm": "0"   }
let s:b2 = { "cterm": "0"   }
let s:b3 = { "cterm": "8"   }
let s:b4 = { "cterm": "8"   }
let s:w4 = { "cterm": "7"   }
let s:w3 = { "cterm": "250" }
let s:w2 = { "cterm": "15"  }
let s:w1 = { "cterm": "255" }
" actual colours
let s:c_red     = { "cterm": "1" }
let s:c_green   = { "cterm": "2" }
let s:c_yellow  = { "cterm": "3" }
let s:c_blue    = { "cterm": "4" }
let s:c_magenta = { "cterm": "5" }
let s:c_cyan    = { "cterm": "6" }

" change into sensib
let s:bg               = s:b1
let s:bg_very_subtle   = s:b1
let s:norm_very_subtle = s:b1
let s:visual           = s:b1
let s:cursor_line      = s:b1
let s:selection_fg     = s:b1
let s:norm_subtle      = s:b2
let s:bg_subtle        = s:b4
let s:comment          = s:b3
let s:norm             = s:w3
let s:red              = s:c_red
let s:error            = s:c_red
let s:ok               = s:c_green
let s:green            = s:c_green
let s:yellow           = s:c_yellow
let s:selection        = s:c_yellow
let s:warning          = s:c_yellow
let s:constant         = s:c_blue
let s:purple           = s:c_magenta
let s:cyan             = s:c_cyan

" pkill colours
unlet s:b1
unlet s:b2
unlet s:b3
unlet s:b4
unlet s:w4
unlet s:w2
unlet s:w3
unlet s:w1
unlet s:c_red
unlet s:c_blue
unlet s:c_cyan
unlet s:c_green
unlet s:c_magenta
unlet s:c_yellow

" ez templating
function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" normal
call s:h("Normal",    {"fg": s:norm})

hi! link Cursor       Identifier
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link Identifier       Normal
hi! link Type             Normal
hi! link TabLine          Normal
hi! link TabLineFill      Normal
hi! link PreProc          Normal
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc
hi! link Function         Identifier

" operator
call s:h("Noise",         {"fg": s:bg_subtle, "cterm": "NONE"})
hi! link Operator         Noise
hi! link FoldColumn       LineNr
hi! link SignColumn       LineNr

" comment
call s:h("Comment",       {"fg": s:comment, "cterm": "NONE"})

" constant
call s:h("Constant",      {"fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant
hi! link Directory        Constant
hi! link Title            Constant

" statement
call s:h("Statement",     {"fg": s:norm, "cterm": "bold"})
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

" msgs
call s:h("ErrorMsg",      {"fg": s:error})
call s:h("WarningMsg",    {"fg": s:warning})
call s:h("MoreMsg",       {"fg": s:norm_subtle, "cterm": "bold" })
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
hi! link ModeMsg          MoreMsg

" dark
call s:h("Dark",          {"fg": s:norm_very_subtle})
hi! link Folded           Dark
hi! link qfLineNr         Dark

" subtle
call s:h("Subtle",        {"fg": s:norm_subtle})
hi! link LineNr           Subtle

" split
call s:h("Split",         {"fg": s:norm_subtle, "bg": s:norm_subtle})
hi! link VertSplit        Split

" linenr
call s:h("CursorLineNr",  {"fg": s:norm, "bg": s:bg_very_subtle, "cterm": "bold"})
hi! link CursorLineNr     CursorLineNr

" search
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "cterm": "bold"})

" posmsg
call s:h("PosMsg",        {"fg": s:green, "cterm": "bold"})
hi! link VimtexMsg        PosMsg

" visual
call s:h("Visual",        {"bg": s:visual})
call s:h("VisualNOS",     {"bg": s:bg_subtle})

call s:h("Ignore",        {"fg": s:bg})

" diffs
call s:h("DiffAdd",       {"fg": s:green, "bg": s:bg_very_subtle})
call s:h("DiffDelete",    {"fg": s:red, "bg": s:bg_very_subtle})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:constant})

" spell checking
call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
call s:h("SpellCap",    {"cterm": "underline", "fg": s:ok})
call s:h("SpellRare",   {"cterm": "underline", "fg": s:error})
call s:h("SpellLocal",  {"cterm": "underline", "fg": s:ok})

" hypertext
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String

" pmenu
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:cursor_line, "cterm": "bold"})
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
hi! link TabLineSel       PmenuSel

" cursorline
call s:h("CursorLine",    {"bg": s:cursor_line})
call s:h("CursorColumn",  {"bg": s:cursor_line})

" match paren
call s:h("MatchParen",    {"bg": s:comment, "fg": s:norm})

" wildmenu
call s:h("WildMenu",          {"cterm": "underline,bold", "bg": s:bg, "fg": s:norm})
call s:h("StatusLineOk",      {"cterm": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"cterm": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"cterm": "underline", "bg": s:bg, "fg": s:warning})

" lang specific highlighting
"
" html
hi link htmlTagN                  Statement
hi link htmlTag                   Statement
hi link htmlEndTag                Statement
hi link HtmlTagName               Statement
hi link HtmlString                Constant
hi! link htmlH1                   Keyword
hi! link htmlH2                   Keyword
hi! link htmlH3                   Keyword
hi! link htmlH4                   Normal
hi! link htmlH5                   Normal
hi! link htmlH6                   Normal
" diffs
hi link diffRemoved               DiffDelete
hi link diffAdded                 DiffAdd
" javascript
hi link jsFlowTypeKeyword         Statement
hi link jsFlowImportType          Statement
hi link jsFunction                Statement
hi link StorageClass              Statement
hi link jsGlobalObjects           Normal
hi link jsGlobalNodeObjects       Normal
hi link jsArrowFunction           Noise
" xml
hi link xmlTag                    Statement
hi link xmlTagName                xmlTag
hi link xmlEndTag                 xmlTag
hi link xmlAttrib                 xmlTag
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
" yaml
hi link yamlBlockMappingKey       Statement
" python
hi link pythonOperator            Statement
" sql
hi link sqlStatement              Statement
hi link sqlKeyword                Keyword
" shell
hi link ShShebang                 Comment
" css
hi link cssCustomProp             Constant
hi link cssFunctionName           Constant
hi link cssDefinition             Constant
hi link cssAttrRegion             Constant
hi link cssBraces                 Keyword
hi link cssIdentifier             Keyword
hi link cssAtKeyword              Keyword
hi link cssClassName              Keyword
hi link cssClassNameDot           Keyword
hi link cssProp                   Normal
hi link cssNoise                  Normal
hi link cssPseudoClassId          Normal
hi link cssPseudoClass            Normal
hi link cssBraceError             Normal
hi link cssImportant              Noise
hi link cssFontAttr               Noise
" scss
hi link scssVariable              Constant
hi link scssDefinition            Constant
hi link scssSelectorChar          Keyword
hi link scssSelectorName          Keyword
hi link scssAttribute             Normal
" TeX
hi link texDelim                  Statement
hi link texEnvArgName             Constant
hi link texTabularChar            Noise
hi link texCmdBookTabs            Noise
" c/cpp
hi link cType                     Statement
hi link cppStructure              Keyword
hi link cSpecial                  Noise
hi link cBlock                    Noise
" json
hi link jsonBraces                Noise
" toml
hi link tomlTable                 Keyword
" todos
hi link shTodo                    Keyword
hi link Todo                      Keyword

" plugin specific highlighting
"
" VimTeX
hi link VimtexInfo                Statement
hi link VimtexTocSecLabel         Keyword
hi link VimtexTocSec0             Normal
hi link VimtexTocSec1             Normal
hi link VimtexTocSec2             Normal
hi link VimtexTocTitle            Normal
" CoC
hi CocErrorSign                   ctermfg=1
hi CocWarningSign                 ctermfg=3
hi CocHintSign                    ctermfg=2
hi CocInfoSign                    ctermfg=6
" ALE
hi ALEError                       ctermfg=1
hi ALEErrorSign                   ctermfg=1
hi ALEWarning                     ctermfg=3
hi ALEWarningSign                 ctermfg=3
hi ALEInfo                        ctermfg=7
hi ALEInfoSign                    ctermfg=7

" shit that wont work
hi EndOFBuffer                    ctermfg=0
hi StatusLine                     ctermfg=0
hi StatusLineNC                   ctermfg=0
