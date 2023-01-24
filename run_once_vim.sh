#!/bin/sh
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Force a Vundle install of all plugins
vim -c ":PluginInstall" -c ":qa"

# Install the CoC libaries
vim -c ":call coc#util#install()"

vim \
  -c ":CocInstall coc-json" \
  -c ":CocInstall coc-python" \
  -c ":CocInstall coc-pyright" \
  -c ":CocInstall coc-sh" \
  -c ":CocInstall coc-clangd" \
  -c ":qa"
