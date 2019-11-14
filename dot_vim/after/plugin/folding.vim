" Disable folding if the file is less than 200 lines
autocmd! BufReadPost * :if line('$') < 200 | set foldlevel=999 | endif
