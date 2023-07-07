#!/bin/sh

# Install packer & plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
