nnoremap ; :

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap çç <Esc>/<++><Enter>"_c4l

nnoremap ç :NERDTreeToggle<Esc>
nnoremap Ç :ALEDetail<Esc>
nnoremap <F8> :TagbarToggle<Esc>

nnoremap <C-p> :FZF<Esc>

nnoremap <C-m> :make<Esc><Enter>
