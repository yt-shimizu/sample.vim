if exists("g:loaded_vimtask")
  finish
endif
let g:loaded_vimtask = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 MyTaskToggle call vimtask#toggle(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo

