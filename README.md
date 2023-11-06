# Shadow CLJS integration with Vim

## Requirements

* https://shadow-cljs.org/
* https://github.com/Olical/conjure
* https://github.com/babashka/babashka

## What does it do?

Not much, but it makes life a bit easier.

It looks for a `.shadow-cljs/nrepl.port` file upon reading a CLJS file and connects to the Shadow-CLJS repl if the nrepl port file exists. One can thus conveniently edit and interactively work with both clj and cljs files from within same (neo)vim instance.

## Install

In case of [vim-plug](https://github.com/junegunn/vim-plug):

`Plug 'nimaai/vim-shadow-cljs'`
