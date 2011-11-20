" ===========================================================================
" File:        ftdetect/yrknote.vim
" Description: My personal note-taking format
" Maintainer:  Kelan Champagne  (http://yeahrightkeller.com)
" License:     MIT
" ===========================================================================

" yrknote files use a .txt extension, and must start with a header.
autocmd BufNewFile,BufRead *.txt
      \ if getline(1) =~ '^[- ]\{3,}$' |
      \   set ft=yrknote |
      \ elseif getline(1) =~ '^[-A-Z0-9:]\+[-\sA-Z0-9:()\,./]\+$' |
      \   set ft=yrknote |
      \ endif

