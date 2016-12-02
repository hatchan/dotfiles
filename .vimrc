set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sensible'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdcommenter'

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

" change default go fmt to goimports
let g:go_fmt_command = "goimports"
" let g:go_fmt_options = "-srcdir " . expand("%:p:h")
