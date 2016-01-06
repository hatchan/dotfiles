set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sensible'
Plugin 'mephux/vim-jsfmt'

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

colorscheme solarized

let mapleader=","

nmap <silent> <Leader>e :Explore<CR>
nmap <silent> <Leader>w :write<CR>

" change default go fmt to goimports
let g:go_fmt_command = "goimports"
