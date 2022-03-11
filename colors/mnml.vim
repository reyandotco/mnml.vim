" Title: mnml
" Description: highlight smarter, not more
" Author: Reyan "nuaNce" Chaudhry
"
" TODO
" ====
" * italic/underline usage
" * rework of group naming convention
" * better per-lang organization

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='mnml'

" colours
let s:bg0     = { "cterm": "0"   }
let s:bg1     = { "cterm": "8"   }
let s:bg2     = { "cterm": "242" }
let s:fg0     = { "cterm": "15"  }
let s:fg1     = { "cterm": "7"   }
let s:red     = { "cterm": "1"   }
let s:green   = { "cterm": "2"   }
let s:yellow  = { "cterm": "3"   }
let s:blue    = { "cterm": "4"   }
let s:magenta = { "cterm": "5"   }
let s:cyan    = { "cterm": "6"   }

" gg2ez
function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "none")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "none")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "none")
endfunction

" subtle
call s:h("Subtle", {"fg": s:bg0})
  hi! def link LineNr      Subtle
  hi! def link FoldColumn  Subtle
  hi! def link SignColumn  Subtle
  hi! def link VertSplit   Subtle

" comments
call s:h("Comment", {"fg": s:bg1})
  hi! def link mkdCodeStart             Comment
  hi! def link mkdCodeEnd               Comment
  hi! def link markdownHeadingDelimiter Comment
  hi! def link mdkNonListItemBlock      Comment
  hi! def link ShShebang                Comment
  hi! def link texTabularChar           Comment
  hi! def link texTabularChar           Comment
  hi! def link texMathDelimZone         Comment
  hi! def link zshPreProc               Comment
  hi! def link rustCommentLineDoc       Comment
  hi! def link texCmdBookTabs           Comment
  hi! def link scssSemiColon            Comment

" 'noise'
call s:h("Noise", {"fg": s:bg2})
  hi! def link Operator             Noise
  hi! def link cssImportant         Noise
  hi! def link cssFontAttr          Noise
  hi! def link lispParen            Noise
  hi! def link jsonBraces           Noise
  hi! def link elmDelimiter         Noise
  hi! def link mkdListItem          Noise
  hi! def link javaAnnotation       Noise
  hi! def link javaParenT1          Noise
  hi! def link javaSpecialChar      Noise
  hi! def link javaParenT           Noise
  hi! def link javaParen1           Noise
  hi! def link javaParen            Noise
  hi! def link rustStorage          Noise
  hi! def link texCmdEnv           Noise
  hi! def link rustAttribute        Noise
  hi! def link rustFoldBraces       Noise
  hi! def link rustSigil            Noise
  hi! def link rustDerive           Noise
  hi! def link rustDeriveTrait      Noise
  hi! def link clojureParen         Noise
  hi! def link clojureSexp          Noise
  hi! def link typescriptArrowFunc  Noise
  hi! def link typescriptBlock      Noise
  hi! def link rubyInstanceVariable Noise
  hi! def link jsArrowFunction      Noise
  hi! def link cSpecial             Noise
  hi! def link cBlock               Noise
  hi! def link haskellParens        Noise
  hi! def link haskellSeparator     Noise
  hi! def link texCmdStyleBold      Noise
  hi! def link texCmdStyleItal      Noise
  hi! def link texCmdPackage        Noise
  hi! def link texCmdClass          Noise
  hi! def link texCmdItem           Noise
  hi! def link texCmd               Noise
  hi! def link texDelim             Noise
  hi! def link pythonDecorator      Noise
  hi! def link pythonDottedname     Noise
  hi! def link VimHiBang            Noise
  hi! def link pythonOperator       Noise

" normal
call s:h("Normal", {"fg": s:fg1})
  hi! def link Cursor              Normal
  hi! def link Function            Normal
  hi! def link Identifier          Normal
  hi! def link Type                Normal
  hi! def link TabLine             Normal
  hi! def link TabLineFill         Normal
  hi! def link PreProc             Normal
  hi! def link Special             Normal
  hi! def link Define              Normal
  hi! def link Macro               Normal
  hi! def link PreCondit           Normal
  hi! def link StorageClass        Normal
  hi! def link Structure           Normal
  hi! def link Typedef             Normal
  hi! def link SpecialChar         Normal
  hi! def link Tag                 Normal
  hi! def link Delimiter           Normal
  hi! def link SpecialComment      Normal
  hi! def link Debug               Normal
  hi! def link CursorLineNr        Normal
  hi! def link cssPseudoClassId    Normal
  hi! def link cssPseudoClass      Normal
  hi! def link cssBraceError       Normal
  hi! def link cssNoise            Normal
  hi! def link cssProp             Normal
  hi! def link texFilesArg         Normal
  hi! def link texFileArg          Normal
  hi! def link rustEscapeUnicode   Normal
  hi! def link rustModPathSep      Normal
  hi! def link rustFuncCall        Normal
  hi! def link htmlH4              Normal
  hi! def link htmlH5              Normal
  hi! def link htmlH6              Normal
  hi! def link jsGlobalNodeObjects Normal
  hi! def link jsGlobalObjects     Normal
  hi! def link haskellDelimiter    Normal
  hi! def link haskellblock        Normal
  hi! def link scssAttribute       Normal
  hi! def link CSVColumnEven       Normal
  hi! def link rubyMethodBlock     Normal
  hi! def link cDefine             Normal
  hi! def link texArg              Normal
  hi! def link xmlAttrib           Normal
  hi! def link crystalCurlyBlock   Normal

" red
call s:h("Red", {"fg": s:red})
  hi! def link Error       Red
  hi! def link Question    Red
  hi! def link DiffDelete  Red
  hi! def link DiffRemoved Red
  hi! def link SpellBad    Red

" green
call s:h("Green", {"fg": s:green})
  hi! def link SpellRare  Green
  hi! def link SpellLocal Green
  hi! def link VimtexMsg  Green

" yellow
call s:h("Yellow", {"fg": s:yellow})
  hi! def link SpellCap Yellow

" blue
call s:h("Blue", {"fg": s:blue})
  hi! def link Directory             Blue
  hi! def link Character             Blue
  hi! def link Boolean               Blue
  hi! def link String                Blue
  hi! def link Number                Blue
  hi! def link Float                 Blue
  hi! def link Title                 Blue
  hi! def link Constant              Blue
  hi! def link helpHyperTextEntry    Blue
  hi! def link helpHyperTextJump     Blue
  hi! def link cssFunctionName       Blue
  hi! def link cssCustomProp         Blue
  hi! def link cssDefinition         Blue
  hi! def link cssAttrRegion         Blue
  hi! def link markdownCodeDelimiter Blue
  hi! def link markdownListMarker    Blue
  hi! def link markdownCodeBlock     Blue
  hi! def link markdownCode          Blue
  hi! def link texMathEnvArgName     Blue
  hi! def link texEnvArgName         Blue
  hi! def link rustSelf              Blue
  hi! def link HtmlString            Blue
  hi! def link scssDefinition        Blue
  hi! def link scssVariable          Blue
  hi! def link CSVDelimiter          Blue
  hi! def link nixPath               Blue
  hi! def link NvimTreeSpecialFile   Blue
  hi! def link scssAmpersand         Blue
  hi! def link crystalInteger        Blue

" magenta
call s:h("Magenta", {"fg": s:magenta})

" cyan
call s:h("Cyan", {"fg": s:cyan})

" bolded
call s:h("Bolded", {"fg": s:fg0, "cterm": "bold" })
  hi! def link Statement           Bolded
  hi! def link Conditonal          Bolded
  hi! def link Exception           Bolded
  hi! def link Keyword             Bolded
  hi! def link Include             Bolded
  hi! def link Repeat              Bolded
  hi! def link Label               Bolded
  hi! def link Todo                Bolded
  hi! def link cssClassNameDot     Bolded
  hi! def link cssIdentifier       Bolded
  hi! def link cssAtKeyword        Bolded
  hi! def link cssClassName        Bolded
  hi! def link cssBraces           Bolded
  hi! def link markdownH1          Bolded
  hi! def link markdownH2          Bolded
  hi! def link markdownH3          Bolded
  hi! def link markdownH4          Bolded
  hi! def link markdownH5          Bolded
  hi! def link markdownH6          Bolded
  hi! def link rustMacro           Bolded
  hi! def link rustModPath         Bolded
  hi! def link htmlEndTag          Bolded
  hi! def link htmlTagN            Bolded
  hi! def link htmlTag             Bolded
  hi! def link HtmlTagName         Bolded
  hi! def link htmlH1              Bolded
  hi! def link htmlH2              Bolded
  hi! def link htmlH3              Bolded
  hi! def link javaOperator        Bolded
  hi! def link javaType            Bolded
  hi! def link jsFlowTypeKeyword   Bolded
  hi! def link jsFlowImportType    Bolded
  hi! def link StorageClass        Bolded
  hi! def link jsFunction          Bolded
  hi! def link haskellDeclKeyword  Bolded
  hi! def link haskellIdentifier   Bolded
  hi! def link scssSelectorChar    Bolded
  hi! def link scssSelectorName    Bolded
  hi! def link sassClass           Bolded
  hi! def link xmlNamespace        Bolded
  hi! def link xmlTagName          Bolded
  hi! def link xmlEndTag           Bolded
  hi! def link xmlTag              Bolded
  hi! def link cppStructure        Bolded
  hi! def link cType               Bolded
  hi! def link rubyDefine          Bolded
  hi! def link rubyMacro           Bolded
  hi! def link rubyDoBlock         Bolded
  hi! def link typescriptVariable  Bolded
  hi! def link texpartArgTitle     Bolded
  hi! def link typescriptImport    Bolded
  hi! def link clojureDefine       Bolded
  hi! def link clojureMacro        Bolded
  hi! def link elmFuncName         Bolded
  hi! def link elmTypeDef          Bolded
  hi! def link elmBraces           Bolded
  hi! def link sqlStatement        Bolded
  hi! def link sqlKeyword          Bolded
  hi! def link nixLetExpr          Bolded
  hi! def link erlangLocalFuncCall Bolded
  hi! def link yamlBlockMappingKey Bolded
  hi! def link dosiniHeader        Bolded
  hi! def link tomlTable           Bolded
  hi! def link vimUsrCmd           Bolded
  hi! def link MoreMsg             Bolded
  hi! def link crystalDefine       Bolded

" italicized
call s:h("Italicized", {"fg": s:fg1, "cterm": "italic" })

" light bg
call s:h("Highlight", {"bg": s:bg1})
  hi! def link Visual    Highlight
  hi! def link VisualNOS Highlight
  hi! def link Ignore    Highlight
  hi! def link qfLineNr  Highlight
  hi! def link Folded    Highlight

" darker bg
call s:h("LowLight", {"bg": s:bg0})
  hi! def link MatchParen LowLight

" search
call s:h("Search",    {"bg": s:yellow, "fg": s:bg0})
call s:h("IncSearch", {"bg": s:yellow, "fg": s:bg0, "cterm": "bold"})

" links
call s:h("Href", {"fg": s:cyan, "cterm": "underline"})
  hi! def link htmlLink  Href

" diffs
call s:h("DiffAdd",    {"fg": s:green, "bg": s:bg0})
call s:h("DiffAdded",  {"fg": s:green, "bg": s:bg0})
call s:h("DiffChange", {"fg": s:yellow})
  hi! def link DiffChange Yellow
  hi! def link DiffText   Normal

" pmenu and tabs
call s:h("PmenuSel", {"fg": s:fg0, "bg": s:bg0, "cterm": "bold"})
  hi! def link TabLineSel  PmenuSel
call s:h("Pmenu", {"fg": s:fg0, "bg": s:bg0})
  hi! def link PmenuThumb  Pmenu
  hi! def link PmenuSbar   Pmenu

" statusline
call s:h("StatusLineOk",      {"cterm": "underline", "bg": s:bg0, "fg": s:green})
call s:h("StatusLineError",   {"cterm": "underline", "bg": s:bg0, "fg": s:red})
call s:h("StatusLineWarning", {"cterm": "underline", "bg": s:bg0, "fg": s:yellow})

" csv shit
call s:h("CSVColumnHeaderOdd", {"fg": s:fg0, "bg": s:bg1, "cterm": "bold"})
  hi! def link CSVColumnHeaderEven CSVColumnHeaderOdd
  hi CSVColumnOdd            ctermbg=0

" wildmenu
call s:h("WildMenu", {"cterm": "underline,bold", "bg": s:bg0, "fg": s:fg0})

" fuck these so much
hi! StatusLineNC cterm=NONE
hi! StatusLine   cterm=NONE
hi! CursorLine   cterm=NONE
hi! CursorColumn cterm=NONE
hi! EndOFBuffer  ctermfg=0
hi! NonText      ctermfg=0

" vimTeX
hi! def link VimtexTocSecLabel Statement
hi! def link VimtexInfo        Statement
hi! def link VimtexTocSec0     Normal
hi! def link VimtexTocSec1     Normal
hi! def link VimtexTocSec2     Normal
hi! def link VimtexTocTitle    Normal

" coc.nvim
hi! def link CocErrorSign   Red
hi! def link CocWarningSign Yellow
hi! def link CocHintSign    Green
hi! def link CocInfoSign    Cyan

" ALE
hi! def link ALEError       Red
hi! def link ALEErrorSign   Red
hi! def link ALEWarning     Yellow
hi! def link ALEWarningSign Yellow
hi! def link ALEInfo        Normal
hi! def link ALEInfoSign    Normal
