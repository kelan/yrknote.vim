" ===========================================================================
" File:        ftplugin/yrknote.vim
" Description: My personal note-taking format
" Maintainer:  Kelan Champagne  (http://yeahrightkeller.com)
" License:     MIT
" ===========================================================================

if (exists("b:did_ftplugin"))
  finish
endif
let b:did_ftplugin = 1

" Text formatting
set textwidth=100
set colorcolumn=100
set wrapmargin=0

"
" Commands

" cmd-shift-L to List all sections in locationlist, and jump to one
nmap <D-L> :lvimgrep /\C^[A-Z0-9][-_:A-Z 0-9]\+$/j %<CR>:lopen 15<CR>
" Jump up/down by section
nmap ]] /^[- ]\{10,}$<CR>:nohls<CR>
nmap [[ ?^[- ]\{10,}$<CR>:nohls<CR>

" Make navigation more amenable to the long wrapping lines.
" (copied from wiki.vim)
noremap <buffer> k gk
noremap <buffer> j gj
noremap <buffer> <Up> gk
noremap <buffer> <Down> gj
noremap <buffer> 0 g0
noremap <buffer> ^ g^
noremap <buffer> $ g$
noremap <buffer> D dg$
noremap <buffer> C cg$
noremap <buffer> A g$a

" make more bullet characters (by making them comment chars)
" from before
" s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
" set comments=nb:*,nb:-,nb:+,nb:?,nb:>
" " auto insert comment characters, in insert and normal mode
" set formatoptions+=ro
" " but don't auto-wrap text or comments
" set formatoptions-=tc
" " recognize numbered lists
" set formatoptions+=n

" from vim-markdown:
set comments=fb:*,fb:-,fb:+,fb:?,fb:O,fb:X,n:>
set commentstring=>\ %s
set formatoptions+=tcqln
" ^ n: recognize numbered lists
set formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+


" maybe want in all files:
" don't auto break long lines if they were long when you start the insert
set formatoptions+=l

" For jumping to files
nmap <C-]>         :find <cfile>.txt<CR>

