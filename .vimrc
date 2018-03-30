set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'mattn/emmet-vim'
    Plugin 'xml.vim'
    Plugin 'glsl.vim'
    Plugin 'Yggdroot/indentLine'
    Plugin 'vim-airline/vim-airline'
    Plugin 'w0rp/ale'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'flazz/vim-colorschemes'
call vundle#end()

filetype plugin indent on

nnoremap ; :

set ts=4
set sw=4
set expandtab

set number

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

syntax on

au BufNewFile,BufRead *.vs,*.fs set ft=glsl

color cobalt2
