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
set background=dark

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do' : { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox

let mapleader = " "

imap jk <Esc>

" noremap " ""<left>
" noremap ' ''<left>
" noremap ( ()<left>
" noremap [ []<left>
" noremap { {}<left>
" noremap {<CR> {<CR>}<ESC>O
" noremap {;<CR> {<CR>};<ESC>O

nnoremap <leader>r <c-w>
nnoremap <leader>o <c-o>
nnoremap <leader>p <c-i>
nnoremap <leader>v <c-v>
nnoremap <leader>ü <c-^>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

map gn :bn<cr>
map gp :bp<cr>
