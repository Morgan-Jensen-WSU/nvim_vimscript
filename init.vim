" tabbing info
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc 		    " 'vim .' sources .vimrc files in local file
set relativenumber 	" shows relative numbers
set nu			    " gives current line num instead of 0 for relative
set nohlsearch		" removes highlighting from search
set hidden		    " keeps any buffer in the background without having to save it
set noerrorbells	" removes the beep for errors
set nowrap		    " doesnt wrap when it hits the end of the window
set incsearch		" highlights as you search instead of after hitting enter
set scrolloff=8		" starts scrolling when 8 away from the bottom of the file

set signcolumn=yes	" extra column for errors / git integration
set colorcolumn=80	" gives the colored bar at 80 chars

" history management
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" plugins
call plug#begin('~/.vim/plugged')
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" lsp - autcomplete and the like
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Syntax highlighting 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Code snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Git
Plug 'tpope/vim-fugitive'

" Airline 
Plug 'vim-airline/vim-airline'

" catpuccin theme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

" colortheme
colorscheme catppuccin

let mapleader = " "

" telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>

" lsp
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/lsp/python-ls.lua
luafile ~/.config/nvim/lua/lsp/bash-ls.lua
luafile ~/.config/nvim/lua/lsp/cmake-ls.lua

