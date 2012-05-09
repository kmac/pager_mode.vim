" Vim script that gives Vim a "pager mode" for easier one-handed paging
" on computers without dedicated PageUp and PageDown keys
" http://github.com/danchoi/lessmode.vim
" Maintainer:	Daniel Choi <dhchoi@gmail.com>
" License: MIT License (c) 2012 Daniel Choi

let b:in_pager_mode = 0

func! s:toggle_pager_mode()
  if !exists("b:in_pager_mode") || b:in_pager_mode == 0
    " turn it on
    nmap <buffer> b <PageUp>
    nmap <buffer> f <PageDown>
    let b:in_pager_mode = 1
    echom "pager mode is on. Use b for <PageUp> and f for <PageDown>"
  else
    nunmap <buffer> b
    nunmap <buffer> f
    echom "pager mode is off."
    let b:in_pager_mode = 0
  endif
endfunc

nmap <c-p> :call <SID>toggle_pager_mode()<CR>
