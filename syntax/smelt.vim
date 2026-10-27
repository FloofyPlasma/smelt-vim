if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword smeltTodo contained TODO FIXME XXX NOTE
syn match   smeltLineComment "//.*$" contains=smeltTodo
syn region  smeltBlockComment start="/\*" end="\*/" contains=smeltTodo

syn region smeltString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=smeltEscape
syn match  smeltEscape contained +\\[ntr\\"]+

syn match smeltNumber "\<-\?\d\+\>"

syn keyword smeltDecl project profile target dependency source

syn keyword smeltOn on
syn keyword smeltBool true false

syn keyword smeltWord exe static_lib none speed size debug release linux macos windows

syn keyword smeltSetting version cxx_std c_std optimization debug_info type
syn keyword smeltSetting source_dir files exclude export public_includes
syn keyword smeltSetting private_includes defines compile_options link depends
syn keyword smeltSetting registry git tag commit path target

syn keyword smeltRemoved sources

hi def link smeltTodo         Todo
hi def link smeltLineComment  Comment
hi def link smeltBlockComment Comment
hi def link smeltString       String
hi def link smeltEscape       SpecialChar
hi def link smeltNumber       Number
hi def link smeltDecl         Keyword
hi def link smeltOn           Keyword
hi def link smeltBool         Boolean
hi def link smeltWord         Constant
hi def link smeltSetting      Identifier
hi def link smeltRemoved      Error

let b:current_syntax = "smelt"

