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
"    Plugin 'w0rp/ale'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'slashmili/alchemist.vim'
    Plugin 'elixir-editors/vim-elixir'
    Plugin 'valloric/YouCompleteMe'
    Plugin 'OmniSharp/omnisharp-vim'
    Plugin 'purescript-contrib/purescript-vim'
    Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

filetype plugin indent on

if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    "set guifont=Inconsolata\ 12
    set guifont=FuraCode\ Nerd\ Font\ 10
endif

set ts=4
set sw=4
set expandtab

set number

set conceallevel=0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

syntax on

au BufNewFile,BufRead *.vs,*.fs set ft=glsl
au BufNewFile,BufRead *.tex,*.md,*.json set conceallevel=0

"color cobalt2
color luna

" remaps
nnoremap ; :
let mapleader=" "

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap çç <Esc>/<++><Enter>"_c4l

" latex
autocmd FileType tex inoremap ,bf \textbf{<++>} <++><Esc>T{i
autocmd FileType tex inoremap ,it \textit{<++>} <++><Esc>T{i
autocmd FileType tex inoremap ,bg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
autocmd FileType tex inoremap ,s0 \section{}<Enter><++><Esc>k0/{<Enter>ci{
autocmd FileType tex inoremap ,s1 \subsection{}<Enter><++><Esc>k0/{<Enter>ci{
autocmd FileType tex inoremap ,s2 \subsubsection{}<Enter><++><Esc>k0/{<Enter>ci{

" markdown
autocmd FileType markdown inoremap ,bf **<++>**<++><Esc>7hT*vt*c
autocmd FileType markdown inoremap ,it *<++>*<++><Esc>5hT*vt*c
autocmd FileType markdown inoremap ,h0 # <++><Enter><Enter><++><Esc>2kT#i 
autocmd FileType markdown inoremap ,h1 ## <++><Enter><Enter><++><Esc>2k$T#i 
autocmd FileType markdown inoremap ,h2 ### <++><Enter><Enter><++><Esc>2k$T#i 
autocmd FileType markdown inoremap ,h3 #### <++><Enter><Enter><++><Esc>2k$T#i 
autocmd FileType markdown inoremap ,ln [<++>](<++>)<++><Esc>T[i

