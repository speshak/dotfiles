" Vim Syntax File
" Language:     Vagrant gem's Vagrantfile, Ruby
" Creator:      Rob Bevan <robbevan at xpt com>
" Last Change:  2010 Jan 23

runtime syntax/ruby.vim
syn case match
syn keyword vagrantfileKeywords config vm chef
hi link vagrantfileKeywords Keyword
