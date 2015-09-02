xecute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader=","

set number
set colorcolumn=80
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab

colorscheme solarized

nmap <silent> <Leader>e :Explore<CR>
nmap <silent> <Leader>w :write<CR>

" change default go fmt to goimports
let g:go_fmt_command = "goimports"
