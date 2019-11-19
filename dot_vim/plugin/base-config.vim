set fo=tcqln scs sm tm=200 bs=2 ai bg=dark title
set ignorecase nohlsearch number showcmd

syntax on

set sessionoptions-=options
set encoding=utf-8
set termencoding=utf-8
set shortmess=filnxtToO

" Tab related
set tabstop=2 shiftwidth=2 expandtab

set laststatus=2
set autochdir
set statusline=%f(%l:%c)%y%m
set completeopt=menu


let g:xml_use_xhtml = 1
let g:explDetailedList=1

" Taglist stuff
filetype on

set printoptions=paper:Letter

" Spelling (didn't exist before vim 7.0)
if version >= 700
  set spelllang=en
  setlocal spellfile=~/.vim-spellfile.en.add
  map sp <Esc>:set spell<CR>
  map nsp <Esc>:set nospell<CR>
endif


" Indent guides
let g:indent_guides_start_level = 2
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey


" Skeletons!
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"


" Undo Config
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif


" Load man plugin for :Man support
runtime! ftplugin/man.vim

" Set backup options if we're editing a crontab
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif

" Font configuration
let g:airline_powerline_fonts = 1
"set guifont=DroidSansMono_Nerd_Font_Mono:h11
set guifont=Sauce_Code_Pro_ExtraLight_Nerd_Font_Complete:h12

function CopyMode()
  set nonu
  :SyntasticToggleMode
  :GitGutterToggle
endfunction

map cp <Esc>:call CopyMode()<CR>
