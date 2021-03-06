" Description: Automatically connect to a Shadow CLJS repl
" Author: Matus Kmit <matuskmit1@gmail.com>
" License: MIT

command! ShadowCljs call shadow_cljs#Piggieback()

augroup ShadowCljsHook
  autocmd!
  autocmd BufReadPost,BufNewFile *.cljs call shadow_cljs#Piggieback()
augroup END
