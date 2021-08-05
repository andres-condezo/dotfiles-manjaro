" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')
    
"-------------------------------------------------------------------------
"------------------------ Themes -----------------------------------------

" gruvbox theme
Plug 'morhetz/gruvbox'
" onedark theme
Plug 'joshdick/onedark.vim'
" Nord theme
Plug 'arcticicestudio/nord-vim'
" tokyonight theme
Plug 'ghifarit53/tokyonight-vim'

"-------------------------------------------------------------------------
"------------------------ Plugins-----------------------------------------

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
" Git status flag for nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Stable version of coc
"Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Find
Plug 'easymotion/vim-easymotion'
" Change windows
Plug 'christoomey/vim-tmux-navigator'
" Commenting
Plug 'tpope/vim-commentary'
"icons
Plug 'ryanoasis/vim-devicons'
" Show a git dif in the sign column
Plug 'airblade/vim-gitgutter'
" indent guides
" Plug 'nathanaelkane/vim-indent-guides'
" See https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
" Start Screen
Plug 'mhinz/vim-startify'
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" file manager
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" sintaxis highlighting
Plug 'vim-syntastic/syntastic'

" support sass colors
Plug 'shmargum/vim-sass-colors'
" help you read complex code by showing diff level of parentheses in diff color
Plug 'luochen1990/rainbow'

" Snipts Engines
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'davidhalter/jedi-vim'

Plug 'Yggdroot/indentLine'

Plug 'pearofducks/ansible-vim'
" install and use neomake linting
Plug 'neomake/neomake'

"-------------------------------------------------------------------------------------------
"---------------------------- NEOSNIPPETS --------------------------------------------------

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'


call plug#end()
