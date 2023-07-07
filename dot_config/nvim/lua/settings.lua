local cmd = vim.cmd
local g = vim.g

cmd([[
   set fo=tcqln scs sm tm=200 bs=2 ai bg=dark title
   set ignorecase nohlsearch number showcmd
   syntax on
   set sessionoptions-=options
   set encoding=utf-8
   set termencoding=utf-8
   set shortmess=filnxtToO
   set tabstop=2 shiftwidth=2 expandtab
   set laststatus=2
   set autochdir
   set statusline=%f(%l:%c)%y%m
   set completeopt=menu
   filetype on
]])

-- Configure fonts
g.guifont = "Sauce_Code_Pro_ExtraLight_Nerd_Font_Complete:h12"
