"Sets
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

"Mappings
inoremap jj <ESC>
nnoremap J :tabp <CR>
nnoremap K :tabn <CR>
nnoremap Y y$
nnoremap <F5> :!python3 %:t <CR>
map <ESC> :noh <CR>
map <leader>m :marks <CR>
map ` :Ex <CR>
map <F2> :e C:\Users\owenk\.vimrc <CR>

"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype plugin indent on
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'vim-test/vim-test'
Plugin 'arcticicestudio/nord-vim'
call vundle#end()
filetype plugin indent on

"Lsp
let g:lsp_diagnostics_enabled = 1
let g:lsp_document_highlight_enabled = 1
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')
let g:asyncomplete_log_file = expand('~/asyncomplete.log')
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green

"Tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#python#runner = 'pytest'

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
