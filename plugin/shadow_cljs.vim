" Description: Automatically connect to a Shadow CLJS repl
" Author: Matus Kmit <matuskmit1@gmail.com>
" License: MIT

augroup ShadowCljsCljsHook
  autocmd!
  autocmd BufEnter *.cljs ConjureClientState shadow
  autocmd BufEnter *.cljs command! ConnectCljsRepl call shadow_cljs#ConnectCljsRepl()
augroup END

augroup ShadowCljsCljHook
  autocmd!
  autocmd BufEnter *.clj ConjureClientState default
augroup END
