# Shadow CLJS integration with Vim

## Requirements

* https://shadow-cljs.org/
* https://github.com/tpope/vim-fireplace

## What does it do?

Not much, but it makes life a bit easier.

It looks for a `.shadow-cljs/nrepl.port` file upon reading a CLJS file and connects to the Shadow-CLJS repl if the nrepl port file exists (same like vim-fireplace does with lein and boot). One can thus conveniently edit and interactively work with both clj and cljs files from within same (neo)vim instance.

The fireplace cljs connection is always rescoped to the directory of the current cljs file.

## To Do

* The name of the Shadow-CLJS build is hard-coded to `:app` at the moment. Either make it configurable through vimscript or get it from somewhere else automatically.
