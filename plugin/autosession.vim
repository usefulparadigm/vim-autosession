" Maintainer: Sukjoon Kim <sjoonk@gmail.com>
" Version: 0.1.0
" Last Modified: 2013-07-03
" Description: Auto save/load sessions

" if exists('g:loaded_autosession')
"   finish
" endif
" let g:loaded_autosession = 1

if !exists('g:autosession_file')
  let g:autosession_file = '.autosession'
endif

let s:session_file = getcwd() . '/' . g:autosession_file

function! SaveSession()
  execute 'mksession! ' . s:session_file
endfunction

function! LoadSession()
  execute 'source ' .  s:session_file
endfunction

"
" Restore and save sessions.
"
if filereadable(s:session_file) && argc() == 0
  autocmd VimEnter * nested call LoadSession()
  autocmd VimLeave * call SaveSession()
end
