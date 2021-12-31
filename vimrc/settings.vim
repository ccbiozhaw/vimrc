set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set incsearch
set relativenumber 
set nu
set nohlsearch
set hidden
set noerrorbells
set scrolloff=8
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do' : { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox

let mapleader = " "

imap jk <Esc>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

