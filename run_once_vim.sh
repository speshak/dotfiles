#!/bin/sh

# Install packer & plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'


# Install the CoC libaries
vim -c ":call coc#util#install()"

vim -c ":CocInstall coc-json" -c ":qa"
vim -c ":CocInstall coc-pyright" -c ":qa"
vim -c ":CocInstall coc-sh" -c ":qa"
vim -c ":CocInstall coc-clangd" -c ":qa"
