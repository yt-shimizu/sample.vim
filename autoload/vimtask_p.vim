let s:save_cpo = &cpo
set cpo&vim

pyfile <sfile>:h:h/python/vimtask.py
python import vim

function! vimtask_p#toggle()
  python toggle_task()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
