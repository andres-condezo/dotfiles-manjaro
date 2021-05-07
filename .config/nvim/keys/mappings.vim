"--------------------------------------------------------------------------------------------------
"----------------------------------  MAPS  --------------------------------------------------------

inoremap ii <ESC>

nmap <Leader>w :wq<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>cl :noh<CR>

map <Leader>ll :setlocal spell! spelllang=en_us<CR>
" Auto indent
map <Leader>id :setlocal autoindent<CR>
map <Leader>iD :setlocal noautoindent<CR>
" Enable and disable  autocoment
map <Leader>dc :setlocal formatoptions-=cro<CR>
map <Leader>ec :setlocal formatoptions=cro<CR>

nmap <Leader>rp :%s//gIc<Left><Left><Left><Left>
nmap <Leader>rr :%s//gI<Left><Left><Left>

nnoremap <C-s> :w<CR>

map <Leader>trm :terminal<CR>

map <Leader>cc ct

" Call reload to apply the latest .vimrc contents
" command! Reload execute "source ~/.vimrc"

" FZF BLines

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"--------------------------------------------------------------------------------------------------
"----------------------------------  SPLITS -------------------------------------------------------

" Remove pipes
set fillchars+=vert:\ 

" Splits
nnoremap <Leader>h :split<CR>
nnoremap <Leader>v :vsplit<CR>
"resize splits
noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -5<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
" Splits navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Change splits from vertical to horizontal or vice versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Swap split
map <C-x> <C-w>R


"--------------------------------------------------------------------------------------------------
"----------------------------------  TERMINAL------------------------------------------------------

map <Leader>trh :new term://zsh<CR>
map <Leader>trv :vnew term://zsh<CR>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" Splits navigation from terminal
tnoremap <C-j>  <C-\><C-n><C-w>j
tnoremap <C-k>  <C-\><C-n><C-w>k
tnoremap <C-l>  <C-\><C-n><C-w>l
tnoremap <C-h>  <C-\><C-n><C-w>h
" Resize splits from terminal
tnoremap <silent> <C-Up> :resize +3<CR>
tnoremap <silent> <C-Down> :resize -3<CR>
tnoremap <silent> <C-Left> :vertical resize +5<CR>
tnoremap <silent> <C-Right> :vertical resize -5<CR>


"--------------------------------------------------------------------------------------------------
"----------------------------------  BUFFERS  -----------------------------------------------------
map <S-TAB> :bn<CR>
map <Leader>bn :bnext<CR>
map <Leader>bm :bprevious<CR>
map <Leader>bd :bdelete<CR>
map <Leader>on :on<CR>
map <Leader>onq :on<CR> q!<CR>
map <Leader>onw :on<CR> wq<CR>



