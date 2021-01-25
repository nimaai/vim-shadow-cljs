" Description: Automatically connect to a Shadow CLJS repl
" Author: Matus Kmit <matuskmit1@gmail.com>
" License: MIT

function! s:Relpath(fn)
  let l:cwd = getcwd()
  let l:s = substitute(a:fn, l:cwd . '/', '', '')
  return l:s
endfunction

function! shadow_cljs#Piggieback()
  let l:shadow_path = '.shadow-cljs/nrepl.port'
  if filereadable(l:shadow_path)
    let l:port = readfile(l:shadow_path, 'b', 1)[0]
    if l:port
      let l:path = s:Relpath(expand("%:p"))
      execute 'Piggieback!'
      execute 'Connect ' . l:port . ' ' . l:path 

      if filereadable('shadow-cljs.vim')
        source shadow-cljs.vim
      endif

      if exists('g:shadow_cljs#build_id')
        execute 'Piggieback ' . g:shadow_cljs#build_id
      elseif
        execute 'Piggieback :app'
      endif
    endif
  endif
endfunction
