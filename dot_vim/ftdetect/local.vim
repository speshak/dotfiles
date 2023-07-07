" Set filetypes for oddball extensions
augroup localFt
  autocmd!
  autocmd BufNewFile,BufRead *.thtml set ft=php
  autocmd BufNewFile,BufRead *.ctp set ft=php
  autocmd BufNewFile,BufRead *.pde set ft=c
  autocmd BufNewFile,BufRead Vagrantfile set filetype=Vagrantfile
augroup END
