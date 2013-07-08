" Plugin Name: vim-autosession
" Maintainer: Sukjoon Kim <sjoonk@gmail.com>
" Version: 0.1.0
" Last Modified: 2013-07-03
" Description: Auto save/load sessions
"

if !exists('g:autosession_file')
  let g:autosession_file = '.session.vim'
endif

let s:session_file = getcwd() . '/' . g:autosession_file

function! SaveSession()
  if filereadable(s:session_file)
    execute 'mksession! ' . s:session_file
  endif
endfunction

function! LoadSession()
  if filereadable(s:session_file)
    execute 'source ' .  s:session_file
  endif
endfunction

"
" Restore and save sessions.
"
if argc() == 0
  autocmd VimEnter * nested call LoadSession()
  autocmd VimLeave * call SaveSession()
endif
