set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Language providers
let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'

" Disable these so they don't show up in :checkhealth
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0

source ~/.vimrc
