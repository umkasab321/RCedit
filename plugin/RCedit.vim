"=============================================================================
" File: RCedit.vim
" Author: unagi
" Created: 2017-03-03
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_RCedit')
    finish
endif
let g:loaded_RCedit = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 RCed call s:RCedit#editvimrc()
function! s:RCedit#editvimrc()
		tab new
		edit $MYVIMRC
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
