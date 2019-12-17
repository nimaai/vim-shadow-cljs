" Description: Automatically connect to a Shadow CLJS repl
" Author: Matus Kmit <matuskmit1@gmail.com>
" License: MIT

function! s:Relpath(fn)
  let l:cwd = getcwd()
  let l:s = substitute(a:fn, l:cwd . '/', '', '')
  return l:s
endfunction

function! shadow_cljs#piggieback()
  execute 'Piggieback!'
  let l:shadow_path = '.shadow-cljs/nrepl.port'
  if filereadable(l:shadow_path)
    let l:port = readfile(l:shadow_path, 'b', 1)[0]
    if l:port
      let l:path = s:Relpath(expand("%:p"))
      echo(l:path)
      execute 'Connect ' . l:port . ' ' . l:path 
      execute 'Piggieback :app'
    endif
  endif
endfunction
