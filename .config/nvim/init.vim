" My init.vim file!
" Now i'm properly writing it. Should be portable enough.

" Check if Plug.vim is already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source %
endif

call plug#begin('~/.config/nvim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'w0rp/ale'
    Plug 'neoclide/coc.nvim'
    Plug 'junegunn/fzf'
    Plug 'majutsushi/tagbar'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

color gruvbox
set background=dark

source ~/.config/nvim/remaps.vim

autocmd FileType tex source ~/.config/nvim/latex.vim
autocmd FileType md source ~/.config/markdown.vim

let g:airline_powerline_fonts = 1
