syntax on
filetype on
set autochdir
set relativenumber
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set encoding=utf-8
set noswapfile
set nocompatible
set t_u7=

let mapleader = " "
inoremap jj <ESC>
nnoremap Y y$
map <silent><leader>0 :source% <CR>
map <silent><leader>1 :!python % <CR>
map <silent><leader>2 :!node % <CR>
map <silent><leader>s :Ex <CR>
map <silent><leader>a :bd <CR>

augroup escape_mapping
  autocmd!
  autocmd InsertEnter * call s:setupEscapeMap()
augroup END

function! s:setupEscapeMap()
  nnoremap <Esc> :noh<CR><Esc>
endfunction

call plug#begin()
  Plug 'prabirshrestha/vim-lsp'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

colorscheme ron
