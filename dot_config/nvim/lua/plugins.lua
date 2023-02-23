-- Bootstrap installing packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


-- Configure packer
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- General plugins
  use 'ervandew/supertab'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'cohama/lexima.vim'
  use 'ntpeters/vim-better-whitespace'
  use 'nathanaelkane/vim-indent-guides'
  use 'ConradIrwin/vim-bracketed-paste'
  use 'xolox/vim-misc'
  use 'xolox/vim-notes'
  use 'sheerun/vim-polyglot'
  use 'mbbill/undotree'
  use 'machakann/vim-highlightedyank'
  use 'tpope/vim-commentary'
  use 'tpope/vim-speeddating'
  use 'AndrewRadev/splitjoin.vim'
  use 'dkarter/bullets.vim'
  use 'antoyo/vim-licenses'
  use 'folke/todo-comments.nvim'

  -- Lang Server
  use {'neoclide/coc.nvim',
    requires = {'vim-airline/vim-airline'},
    config = function()
      require("coc")
    end,
    branch = 'release'}

  use {'vim-syntastic/syntastic',
    config = function()
      require("syntastic")
    end
  }

  -- User Interface
  use 'scrooloose/nerdtree'
  use 'ctrlpvim/ctrlp.vim'
  use 'vim-airline/vim-airline'
  use {'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Speed up loading/set custom filetypes
  -- See https://github.com/nathom/filetype.nvim#customization for info on
  -- setting custom types
  use 'nathom/filetype.nvim'

  use 'ryanoasis/vim-devicons'
  use 'rhysd/git-messenger.vim'
  use 'rhysd/committia.vim'

  use 'pgilad/vim-skeletons'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- Python
  use 'majutsushi/tagbar'
  use 'psf/black'

  -- (Java|Type)Script
  use 'Quramy/tsuquyomi'
  use 'Quramy/vim-js-pretty-template'
  use 'leafgarland/typescript-vim'

  -- Dev Ops stuff
  use 'digitalrounin/vim-yaml-folds'
  use {'hashivim/vim-terraform',
    config = function()
      vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
      vim.cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
      vim.cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
      vim.cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
      vim.cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])

      vim.cmd([[let g:terraform_fmt_on_save=1]])
      vim.cmd([[let g:terraform_align=1]])
    end
  }
  use 'juliosueiras/vim-terraform-completion'
  use 'speshak/vim-cfn'
  use 'hashicorp/sentinel.vim'

  use 'ynkdir/vim-vimlparser'
  use 'syngan/vim-vimlint'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
