"--------------------------------------------------------------------------------------------------
"-------------------------------- SET -------------------------------------------------------------

filetype plugin indent on

set ignorecase                          "Ignorar mayúsculas al hacer una búsqueda
set smartcase                         " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
" Search fown into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

set termguicolors                       " Active true colors en la terminal
set nocompatible
set numberwidth=1
set showcmd
set showmatch
set laststatus=2
set title
syntax enable                           " Enables syntax highlighting
set spelllang=en,es                     " Corregir palabras usando diccionarios en inglés y español
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set pumheight=10                        " Makes pop up menu smaller
set fileencoding=utf-8                  " The encoding written to file
set encoding=utf-8                      " The encoding displayed
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set relativenumber
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set hidden                              " Permitir cambiar de buffers sin tener que guardarlos
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeout Len is 1000 ms
set formatoptions-=cro                  " Stop newline continuation of comments
set autochdir                           " Your working directory will always be the same as your working directory
set clipboard+=unnamedplus

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm
"alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

" Vertically center document when entering insert mode
"autocmd InsertEnter * norm zz

" Display all matching files when we tab complete
set wildmenu
set wildmode=longest,list,full
set scrolloff=7

set listchars+=tab:│\       " this is i_CTRL-k vv and escaped space (\ )
set list


"--------------------------------------------------------------------------------------------------
"-------------------------------- TABS ------------------------------------------------------------


" Indentación a 2 espacios
set tabstop=8
set shiftwidth=8
"set shiftwidth=2                        " Change the number of space characters inserted for indentation
set softtabstop=8
set shiftround
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4

set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

set noexpandtab
"set expandtab                           " Converts tabs to spaces

"--------------------------------------------------------------------------------------------------
"------------------------------- MAP LEADER -------------------------------------------------------

let mapleader=" "


"--------------------------------------------------------------------------------------------------
"------------------------------- EXECUTABLE -------------------------------------------------------
augroup exe_code
	autocmd!

	"execute python code
	autocmd FileType python nnoremap <buffer> <leader>p
		\ :sp<CR> :term python3 %<CR> :startinsert<CR>

	"execute javascript code
	autocmd FileType javascript nnoremap <buffer> <leader>p
		\ :sp<CR> :term node %<CR> :startinsert<CR>

	"execute bash code
	autocmd FileType bash,sh nnoremap <buffer> <leader>p
		\ :sp<CR> :term bash %<CR> :startinsert<CR>

	"execute C code
	autocmd FileType c nnoremap <buffer> <leader>p
		\ :sp<CR> :term ~/c %<CR> :startinsert<CR>

augroup END
