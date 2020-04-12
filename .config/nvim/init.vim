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

    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'

    Plug 'morhetz/gruvbox'
    Plug '/data/Coding/nord-vim'
    Plug 'romainl/Apprentice'

    Plug 'mhinz/vim-startify'

    Plug 'elixir-editors/vim-elixir'
    Plug 'tikhomirov/vim-glsl'

    Plug 'neovim/nvim-lsp'
    Plug 'haorenW1025/completion-nvim'
    Plug 'jiangmiao/auto-pairs'

    Plug 'ryanoasis/vim-devicons'
call plug#end()

" General editing stuff
set tabstop=4
set shiftwidth=4
set expandtab

set number
set relativenumber

set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"let g:lightline = { 'colorscheme': 'gruvbox' }
set noshowmode

set background=dark
"colorscheme gruvbox
colorscheme apprentice
hi LineNr ctermbg=235 ctermfg=242 cterm=NONE guibg=#262626 guifg=#6c6c6c gui=NONE
set cursorline

" Lua
luafile ~/.config/nvim/init.lua

" Completion settings (wish I could do this in Lua)
augroup CompletionTriggerCharacter
    autocmd!
    autocmd BufEnter * let g:completion_trigger_character = ['.']
    autocmd BufEnter *.c,*.cpp,*.rs let g:completion_trigger_character = ['.', '::']
augroup end

set completeopt=menuone,noinsert,noselect

" Remaps
let mapleader = " "

source ~/.config/nvim/remaps.vim
set noshowmode

augroup FileTypeDependentConfigs 
    autocmd!
    autocmd FileType tex source ~/.config/nvim/latex.vim
    autocmd FileType md source ~/.config/nvim/markdown.vim
augroup end
