#!/bin/bash
# Script to clean up remnants of packer.nvim to allow a clean transition to lazy.nvim

rm -f ~/.config/nvim/plugin/packer_compiled.lua
rm -rf ~/.local/share/nvim/site/pack/packer
