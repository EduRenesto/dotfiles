" My init.vim file!
" Now i'm properly writing it. Should be portable enough.

" Check if Plug.vim is already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source %
endif

" Install plugins
call plug#begin('~/.config/nvim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'w0rp/ale'
    Plug 'neoclide/coc.nvim'
    Plug 'junegunn/fzf'
    Plug 'majutsushi/tagbar'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
    Plug '/data/Coding/nord-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'mhinz/vim-startify'
    Plug 'elixir-editors/vim-elixir'
    Plug 'ryanoasis/vim-devicons'
    Plug 'easymotion/vim-easymotion'
    Plug 'tikhomirov/vim-glsl'
call plug#end()

" General editing stuff
set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme gruvbox

" Remaps
let mapleader = " "

source ~/.config/nvim/remaps.vim

autocmd FileType tex source ~/.config/nvim/latex.vim
autocmd FileType md source ~/.config/markdown.vim

" Plugin configurations
let g:airline_powerline_fonts = 1

nnoremap <Tab> :tabn<Esc>
nnoremap <C-Tab> :tabp<Esc>
