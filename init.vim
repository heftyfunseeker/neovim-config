filetype on
syntax on
set number
set relativenumber
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch
set smarttab
set softtabstop=4

set splitbelow
set splitright

set ruler


let mapleader=" "

" Clear highlighting on escape in normal mode
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

nnoremap <c-p> :Files<CR>
nnoremap <leader>s :Rg<CR>

tnoremap <Esc> <c-\><c-n>
tnoremap <M-[> <Esc>

set hidden
set history=100

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'

Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'chooh/brightscript.vim'

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Both options are optional. You don't have to install fzf in ~/.fzf
" and you don't have to run the install script if you use fzf only in Vim.
"
Plug 'editorconfig/editorconfig-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" This line enables the true color support
set termguicolors
colorscheme  base16-atelier-dune
set rtp+=/usr/local/opt/fzf

set guifont=source-code-pro
