syntax on
set autochdir
set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set noswapfile
set nocompatible
filetype off

inoremap jj <ESC>
nnoremap J :tabp <CR>
nnoremap K :tabn <CR>
nnoremap <C-q> :q <CR>
nnoremap Y y$
nnoremap <F5> :!
nnoremap <C-t> :NERDTreeToggle <CR>
nnoremap <F1> :NERDTreeFind <CR>
map <ESC> :noh <CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype plugin indent on
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
call vundle#end()
filetype plugin indent on
