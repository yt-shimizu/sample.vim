if exists("g:loaded_vimtask_p")
  finish
endif
let g:loaded_vimtask_p = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 MyTaskToggleP call vimtask_p#toggle()

let &cpo = s:save_cpo
unlet s:save_cpo
