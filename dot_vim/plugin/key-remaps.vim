" Remapping of keys/Mapping functions to keys

" Typo Prevention
nnoremap ; :

" Map mode change to something on homerow
inoremap kj <esc>

" Function key remaps
nnoremap <F5> :UndotreeToggle<CR>
map <F6> :NERDTreeToggle<CR>
map <F7> :StripWhitespace<CR>

" Make Ctl-L reset syntax highlighting
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" Don't lose selection when shifting
xnoremap <  <gv
xnoremap >  >gv
