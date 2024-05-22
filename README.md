# Shadow CLJS integration with Vim

## Requirements

* https://shadow-cljs.org/
* https://github.com/Olical/conjure
* https://github.com/babashka/babashka

## Install

In case of [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'nimaai/vim-shadow-cljs'`

## How to use

Call `:ConnectCljsRepl` to setup the repl connection. It looks for a `.shadow-cljs/nrepl.port` file.

Afterwards, switching between `clj` and `cljs` files automatically switches the respective conjure client states and thus keeping 2 repl connections open in parallel. 

It reads the build value from `shadow-cljs.edn` file under `:builds`. It takes the first key.
