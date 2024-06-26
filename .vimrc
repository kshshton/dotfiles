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
colorscheme slate

let mapleader = " "
inoremap jj <ESC>
map <silent><leader>s :Ex <CR>
map <silent><leader>a :bd <CR>
map <silent><leader>dm :delmarks! <CR>
map <leader>f :vimgrep // $home/**/
map <leader>n :cnext <CR>
map <leader>p :cprevious <CR>
map <leader>c :cclose <CR>
map <leader>o :copen <CR>
