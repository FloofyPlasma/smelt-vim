if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword smeltTodo contained TODO FIXME XXX NOTE
syn match   smeltLineComment "//.*$" contains=smeltTodo
syn region  smeltBlockComment start="/\*" end="\*/" contains=smeltTodo

syn region smeltString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=smeltEscape
syn match  smeltEscape contained +\\[ntr\\"]+

syn keyword smeltDecl source

syn keyword smeltSetting git commit

syn keyword smeltRemoved tag

hi def link smeltTodo         Todo
hi def link smeltLineComment  Comment
hi def link smeltBlockComment Comment
hi def link smeltString       String
hi def link smeltEscape       SpecialChar
hi def link smeltDecl         Keyword
hi def link smeltSetting      Identifier
hi def link smeltRemoved      Error

let b:current_syntax = "smelt-source"
