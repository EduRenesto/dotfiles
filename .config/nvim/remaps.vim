" This saves lives
nnoremap ; :

nnoremap <M-j> 10j
nnoremap <M-k> 10k

" Window Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Resizing windows
map <M-H> :vertical resize -5<Esc>
map <M-J> :resize -5<Esc>
map <M-K> :resize +5<Esc>
map <M-L> :vertical resize +5<Esc>

nnoremap <Leader>ws :split<Esc>
nnoremap <Leader>wv :vs<Esc>

" Stole this from Luke Smith
vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
inoremap çç <Esc>/<++><Enter>"_c4l

" Easy toggle for NERDTree and Tagbar
nnoremap ç :NERDTreeToggle<Esc>
nnoremap <F8> :TagbarToggle<Esc>

" Fuzzy Finder
nnoremap <Leader>. :FZF<Esc>
nnoremap <Leader>r :Rg<Esc>

" Fast make
nnoremap <C-m> :make<Esc><Enter>

" Tab stuff
nnoremap <Tab> :tabn<Esc>
nnoremap <C-Tab> :tabp<Esc>
nnoremap <Leader>t :tabnew<Esc>

" Buffers
nnoremap <Leader>b :Buffers<Esc>

" Terminal
tnoremap <Leader><Leader> <C-\><C-n>
