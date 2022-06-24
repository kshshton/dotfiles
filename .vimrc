"Sets
syntax on
set autochdir
set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set clipboard=unnamed
set encoding=utf-8
set noswapfile
set nocompatible
filetype off

"Mappings
let mapleader = " "
inoremap jj <ESC>
nnoremap J :tabp <CR>
nnoremap K :tabn <CR>
nnoremap Y y$
nnoremap <silent><leader>f :<C-u>CocFzfList<CR>
map <F5> :!python %:t <CR>
map <ESC> :noh <CR>
map ` :Ex <CR>
map <F2> :e C:\Users\owenk\.vimrc <CR>

"Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'antoinemadec/coc-fzf'
call plug#end()

"Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"Scheme
colorscheme nord
