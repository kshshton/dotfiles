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
set t_u7=
filetype off

let mapleader = " "
inoremap jj <ESC>
nnoremap J :tabp <CR>
nnoremap K :tabn <CR>
nnoremap Y y$
map <silent><leader>1 :bd <CR>
map <silent><leader>2 :Ex <CR>
map <silent><leader>3 :!python %:t <CR>

augroup escape_mapping
  autocmd!
  autocmd InsertEnter * call s:setupEscapeMap()
augroup END

function! s:setupEscapeMap()
  nnoremap <Esc> :noh<CR><Esc>
endfunction
