" Vim syntax file
" Language:	Quickfix window
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2015-02-20

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" A bunch of useful C keywords
syn match	qfFileName	"^[^|]*" nextgroup=qfLocation
syn match       qfLocation      "|[^|]*|" contains=qfSeparator,qfLineNr
syn match	qfSeparator	"|" contained
syn match	qfLineNr	"[^|]*" contained contains=qfError nextgroup=qfSeparator
syn match	qfError		"error" contained

" The default highlighting.
hi def link qfFileName	Directory
hi def link qfLineNr	LineNr
hi def link qfSeparator	Delimiter
hi def link qfError	Error

let b:current_syntax = "qf"

" vim: ts=8
