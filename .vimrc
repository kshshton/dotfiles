syntax on
set autochdir
set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set encoding=utf-8
set noswapfile
set nocompatible
let mapleader = " "
filetype off

inoremap jj <ESC>
nnoremap J :tabp <CR>
nnoremap K :tabn <CR>
nnoremap Y y$
nnoremap <F5> :!python %:t <CR>
map <ESC> :noh <CR>
map <leader>m :marks <CR>
map ` :!ls <CR>
map <F2> :e .vimrc <CR>

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype plugin indent on
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'artanikin/vim-synthwave84'
call vundle#end()
filetype plugin indent on

colorscheme synthwave84
