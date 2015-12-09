map ; :
noremap ;; ;

filetype off
call pathogen#infect()
call pathogen#helptags()

" Ensure runtime path includes Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Load plugins through Vundle
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()

syntax on " syntax highlighting
filetype on " try to detect filetypes
filetype plugin indent on " enable loading indent file for filetype

" Handle colours
set t_Co=256
set background=dark

" Vim UI
set number
set numberwidth=6

" Text formatting
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Set whitespace preferences
au Filetype javascript setlocal ts=2 sts=2 sw=2
au Filetype html setlocal ai ts=4 sts=4 sw=4
