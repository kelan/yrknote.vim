" ===========================================================================
" File:        syntax/yrknote.vim
" Description: My personal note-taking format
" Maintainer:  Kelan Champagne  (http://yeahrightkeller.com)
" License:     MIT
" ===========================================================================

if exists("b:current_syntax")
  finish
endif

syn match yrkDivider            "^[- ]\{5,}$"
syn match yrkSectionHeader      "^[-A-Z _/0-9'"()?,.:;]\+$"
syn match yrkSubSectionHeader   "^[-A-Za-z _0-9"'()?,.:;]\+:$"
syn match yrkPrefix             "^\s*.\{-}:  "
syn match yrkPrefixSolo         "^\s*.\{-}:\w*$"
syn match yrkIndentedText       "^\s\{2,}.*$"
syn match yrkListBullet         "^\s*\* .*$"
syn match yrkListBulletPlus     "^\s*+ .*$"
syn match yrkListBulletMinus    "^\s*- .*$"
syn match yrkListBulletQuestion "^\s*? .*$"

syn match yrkBlockQuote         "\s*>.*$"

syn match yrkCodeInline         "`.\{-1,}`"
syn match yrkCodeBlock          "\s*\$.*$"



hi def link yrkDivider              Identifier
hi def link yrkSectionHeader        Special
hi def link yrkSubSectionHeader     Type
hi def link yrkListBullet           Statement
hi def link yrkListBulletPlus       Statement
hi def link yrkListBulletMinus      PreProc
hi def link yrkListBulletQuestion   Type
hi def link yrkIndentedText         Constant

hi def link yrkBlockQuote           Statement

hi def link yrkCodeInline           Constant
hi def link yrkCodeBlock            Constant

hi def link yrkPrefix               Comment
hi def link yrkPrefixSolo           Comment


let b:current_syntax = "yrknote"
