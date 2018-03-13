" Vim syntax file
" Language: Ion
" Maintainer: Chris McCollister (https://github.com/vallarfax/ion.vim)
" Last Change: 2018 Mar 12


" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif


" Keywords
syntax keyword ionKeywords
  \ const
  \ else
  \ func
  \ for
  \ if
  \ return
  \ var

highlight default link ionKeywords Keyword


" Comments
syntax keyword ionTodo contained TODO FIXME NOTE
syntax region ionComment start="//" end="$" contains=ionTodo,@Spell oneline
syntax region ionComment start="/\*" end="\*/" contains=ionTodo,@Spell fold

highlight default link ionComment Comment


" Structures
syntax keyword ionStructure
  \ enum
  \ struct

highlight default link ionStructure Structure


" Import
syntax keyword ionImport import

highlight default link ionImport Include


" Numbers
syntax match ionNumber "\v<\d+>"
syntax match ionNumber "\v<\d+\.\d+>"

highlight default link ionNumber Number


" Strings
syntax region ionString start=/"/ skip=/\\\\\|\\"/ end=/"/ oneline

highlight default link ionString String


let b:current_syntax = "ion"

