" ===========================================================================
" File:        syntax/yrknote.vim
" Description: My personal note-taking format
" Maintainer:  Kelan Champagne  (http://yeahrightkeller.com)
" License:     MIT
" ===========================================================================

if exists("b:current_syntax")
  finish
endif

syn match yrkTechWord           "\<[-_A-Za-z0-9]\{-1,}[-_A-Z]\{-1,}[-_A-Za-z0-9]\{-1,}\>"

syn match yrkSectionHeader      "^[-A-Z _/0-9'"()?,.:;]\+$"
syn match yrkSubSectionHeader   "^[-A-Za-z _0-9"'()?,.:;]\+:$"
syn match yrkPrefix             "^\s*.\{-}:  "
" syn match yrkPrefixSolo         "^\s*.\{-}:\w*$"
syn match yrkIndentedText       "^\s\{4,}.*$"
syn match yrkListBullet         "^\s*\* "
syn match yrkListBulletPlus     "^\s*+ "
syn match yrkListBulletMinus    "^\s*- "
syn match yrkListBulletQuestion "^\s*? "
syn match yrkDivider            "^[- ]\{5,}$"

syn match yrkBlockQuote         "\s*>.*$"

syn match yrkCodeInline         "`.\{-1,}`"
syn match yrkCodeBlock          "\s*\$.*$"


" sections start with a section header, and end with a divider
syn region yrkSection start="^[-A-Z _/0-9'\"()?,.:;]\+$" end="^[- ]\{5,}$" transparent fold
syn sync fromstart



" hi def link yrkDivider              Todo
hi yrkDivider gui=reverse
hi def link yrkSectionHeader        Special
hi def link yrkSubSectionHeader     Type
hi def link yrkListBullet           Identifier
hi def link yrkListBulletPlus       Statement
hi def link yrkListBulletMinus      Special
hi def link yrkListBulletQuestion   Define
hi def link yrkIndentedText         Constant

hi def link yrkTechWord             Identifier

hi def link yrkBlockQuote           Statement

hi def link yrkCodeInline           Underlined
hi def link yrkCodeBlock            Underlined

hi def link yrkPrefix               Comment
" hi def link yrkPrefixSolo           Comment


let b:current_syntax = "yrknote"
