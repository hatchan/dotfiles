set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()
filetype plugin indent on

syntax on

set number
set colorcolumn=80
set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set directory=$HOME/.vim/swapfiles//

colorscheme solarized

let mapleader=","

nmap <silent> <Leader>e :Explore<CR>
nmap <silent> <Leader>w :write<CR>

" change default go fmt to goimports
let g:go_fmt_command = "goimports"

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
