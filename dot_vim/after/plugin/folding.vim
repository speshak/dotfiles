" Disable folding if the file is less than 200 lines
augroup foldDisable
  autocmd!
  autocmd BufReadPost * :if line('$') < 200 | set foldlevel=999 | endif
augroup END
