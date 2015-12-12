" Vim syntax file
" Language:     Galen Specs
" Maintainer:   Ivan Shubin <ivan.ishubin AT gmail DOT com>
" Last Change:  Aug 11, 2015
" Version:      0.1.0
"


syntax match galenKeywords "^@objects"
syntax match galenKeywords "^@groups"
syntax match galenKeywords "^\s*@if\s"
syntax match galenKeywords "^\s*@for\s"
syntax match galenKeywords "^\s*@forEach\s"
syntax match galenKeywords "^\s*@set\s"
syntax match galenKeywords "^\s*@on\s"
syntax match galenKeywords "^\s*@import\s"
syntax match galenKeywords "^\s*@script\s"
syntax match galenComment "^#.*$"
syntax match galenComment "^\s\+#.*$"

" galen specs
syntax match galenSpec "^\s\+aligned\s\(horizontally\|vertically\)\s\(all\|left\|top\|bottom\|right\)\s"
syntax match galenSpec "^\s\+centered\s\(all\|horizontally\|vertically\)\s\(inside\|on\)\s"
syntax match galenSpec "^\s\+\(near\|left-of\|right-of\|inside\|above\|below\|contains\)\s"
syntax match galenSpec "^\s\+text\s\+\(uppercase\|lowercase\)\s\+\(is\|contains\|starts\|ends\|matches\)\s"
syntax match galenSpec "^\s\+text\s\+\(is\|contains\|starts\|ends\|matches\)\s"
syntax match galenSpec "^\s\+count\s"
syntax match galenSpec "^\s\+height\s"
syntax match galenSpec "^\s\+width\s"
syntax match galenSpec "^\s\+visible"
syntax match galenSpec "^\s\+absent"
syntax match galenSpec "^\s\+image\s"
syntax match galenRange "\d\+\s*to\s*\d\+px"
syntax match galenRange "\d\+\s*px"
syntax match galenString "\".*\""
syntax match galenString "= .* ="
syntax match galenSpec "| .*"

syntax region galenJs start='${' end='}'


" rules
syntax match galenKeywords "^\s*@rule\s"
syntax region galenRuleParameter start="%{" end="}"


highlight default link galenKeywords Operator
highlight default link galenRuleParameter PreProc
highlight default link galenSpec Type
highlight default link galenJs  PreProc
highlight default link galenComment  Comment
highlight default link galenRange Number
highlight default link galenString String
