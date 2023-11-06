" Description: Automatically connect to a Shadow CLJS repl
" Author: Matus Kmit <matuskmit1@gmail.com>
" License: MIT

let g:shadow_cljs#cljs_port_file_path = '.shadow-cljs/nrepl.port'

function! shadow_cljs#ConnectCljsRepl()
  let l#file_path = g:shadow_cljs#cljs_port_file_path
  if filereadable(l#file_path)
    let l#port = readfile(l#file_path, 'b', 1)[0]
    if l#port
      execute 'silent ConjureConnect ' . l#port
      let l:shadow_build=system("cat shadow-cljs.edn | bb -e '(-> *input* :builds keys first name print)'")
      execute 'silent ConjureShadowSelect ' . l:shadow_build
    endif
  endif
  if l#port
    echo l#port
  else
    echo "No port. Using default."
  endif
endfunction
