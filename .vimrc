"--------------------------------------------------------------------------------------------------
"-------------------------------- SET -------------------------------------------------------------

filetype plugin indent on

set ignorecase                        " Ignorar mayúsculas al hacer una búsqueda
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
"set nowrap                              " Display long lines as just one line
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
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
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


"--------------------------------------------------------------------------------------------------
"-------------------------------- TABS ------------------------------------------------------------

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces

"--------------------------------------------------------------------------------------------------
"------------------------------- MAP LEADER -------------------------------------------------------

let mapleader=" "

"--------------------------------------------------------------------------------------------------
"---------------------------------- PLUGINS -------------------------------------------------------

call plug#begin('~/.vim/plugged')

" Themes"
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'
Plug 'sainnhe/edge'
Plug 'gilgigilgil/anderson.vim'
Plug 'ntk148v/vim-horizon'

" IDE
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Find
Plug 'easymotion/vim-easymotion'
" File Explorer
Plug 'scrooloose/nerdtree'
" Git status flag for nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Change windows
Plug 'christoomey/vim-tmux-navigator'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Commenting
Plug 'tpope/vim-commentary'
"icons
Plug 'ryanoasis/vim-devicons'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" CSS color picker
Plug 'KabbAmine/vCoolor.vim'
 " Find keys bendings
Plug 'liuchengxu/vim-which-key'
" Color picker
Plug 'DougBeney/pickachu'
" Live server
Plug 'turbio/bracey.vim'
" Show a git dif in the sign column
Plug 'airblade/vim-gitgutter'
" indent guides
Plug 'nathanaelkane/vim-indent-guides'
" See https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
" Start Screen
Plug 'mhinz/vim-startify'
" Snipts Engines
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-rooter'
" Quick scope
Plug 'unblevable/quick-scope'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" file manager
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" sintaxis highlighting
Plug 'vim-syntastic/syntastic'
" support sass colors
Plug 'shmargum/vim-sass-colors'

call plug#end()

"--------------------------------------------------------------------------------------------------
"--------------------------------  COLOR SCHEME  --------------------------------------------------

colorscheme nord 

"let g:gruvbox_contrast_dark = "hard"
"let g:molokai_original = 1
"let g:edge_style = 'nord-vim'
let g:airline_theme = 'nord'

"--------------------------------------------------------------------------------------------------
"----------------------------------- AIRLINE ------------------------------------------------------

" enable tabline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ''
 let g:airline#extensions#tabline#left_alt_sep = ''
 let g:airline#extensions#tabline#right_sep = ''
 let g:airline#extensions#tabline#right_alt_sep = ''

 " enable powerline fonts
 let g:airline_powerline_fonts = 1
 let g:airline_left_sep = ''
 let g:airline_right_sep = ''

 " Switch to your current theme
 " let g:airline_theme = 'onedark'

 " Always show tabs
 set showtabline=2

" We don't need to see things like -- INSERT -- anymore
 set noshowmode


"--------------------------------------------------------------------------------------------------
"---------------------------------- DEVICONS ------------------------------------------------------

" These are the basic settings to get the font to work (required):
 set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
" loading the plugin
 let g:webdevicons_enable = 1
" adding the flags to NERDTree
 let g:webdevicons_enable_nerdtree = 1
" adding to vim-airline's tabline
 let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
 let g:webdevicons_enable_airline_statusline = 1

" enable folder/directory glyph flag (disabled by default with 0)
 let g:WebDevIconsUnicodeDecorateFolderNodes = 1

"--------------------------------------------------------------------------------------------------
"------------------------------ INDENT GUIDES -----------------------------------------------------

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3

"--------------------------------------------------------------------------------------------------
"-------------------------------- STARTIFY --------------------------------------------------------

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc' },
            \ { 'v': '~/.vimrc' },
            \ { 'z': '~/.zshrc' },
            \ '~/mnt/d/webDevelopment',
            \ '~/mnt/d/Documentos/platzi',
            \ ]

"--------------------------------------------------------------------------------------------------
"------------------------------------ FZF ---------------------------------------------------------

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'alt-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

"--------------------------------------------------------------------------------------------------
"------------------------------------ COC ---------------------------------------------------------

"TextEdit fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
 set nobackup
 set nowritebackup

 " Give more space for displaying messages.
 set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
 set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
 if has("patch-8.1.1564")
" Recently vim can merge signcolumn and number column into one
set signcolumn=number
else
set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
 " other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
inoremap <silent><expr> <c-space> coc#refresh()
else
inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
 inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
execute 'h '.expand('<cword>')
elseif (coc#rpc#ready())
call CocActionAsync('doHover')
else
execute '!' . &keywordprg . " " . expand('<cword>')
endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
autocmd!
" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder.
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s :<C-u>CocList -I symbols<cr>

nnoremap <silent><nowait> <space>j :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p :<C-u>CocListResume<CR>"


"--------------------------------------------------------------------------------------------------
"----------------------- -------- COC EXPLORER ----------------------------------------------------

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }


"--------------------------------------------------------------------------------------------------
"-------------------------------- SYNTASTIC -------------------------------------------------------

" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"--------------------------------------------------------------------------------------------------
"------------------------------ NEOSNIPPETS -------------------------------------------------------

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"--------------------------------------------------------------------------------------------------
"---------------------------------- WHICH KEY------------------------------------------------------

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment'  ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer'  ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files'  ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below' ]
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger'  ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen'  ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text'  ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right' ]
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen'  ]

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


"--------------------------------------------------------------------------------------------------
"------------------------------------- QUICK SCOPE ------------------------------------------------

" Trigger a highlight in the appropriate direction when pressing these keys:
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00D7F1' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#CEFF9E' gui=underline ctermfg=81 cterm=underline

"let g:qs_max_chars=150

"--------------------------------------------------------------------------------------------------
"---------------------------------- MULTI CURSOR --------------------------------------------------

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"--------------------------------------------------------------------------------------------------
"---------------------------------- COLOR PICKER Pikachu ------------------------------------------

let g:pickachu_default_app = "color"
let g:pickachu_default_color_format = "hex"

"--------------------------------------------------------------------------------------------------
"---------------------------------- COLOR PICKER --------------------------------------------------

let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>g'

let g:vcoolor_custom_picker = 'zenity --title "custom" --color-selection --show-palette --color '

"--------------------------------------------------------------------------------------------------
"---------------------------------- bracey --------------------------------------------------------

let g:bracey_auto_start_browser=0                                
let g:bracey_server_allow_remote_connections=1                   
let g:bracey_server_port=8080 

"--------------------------------------------------------------------------------------------------
"---------------------------------- RANGER --------------------------------------------------------

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<CR>


"--------------------------------------------------------------------------------------------------
"-------------------------------- EASY MOTION -----------------------------------------------------

nmap <Leader>s <Plug>(easymotion-s2)

"--------------------------------------------------------------------------------------------------
"---------------------------------- NERDTREE ------------------------------------------------------

let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>
nmap <C-n> :NERDTreeToggle<CR>

" NERDTreeGitStatusUseNerdFonts
let g:NERDTreeGitStatusUseNerdFonts = 1 
let g:NERDTreeGitStatusShowIgnored = 1 
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"--------------------------------------------------------------------------------------------------
"----------------------------------  MAPS  --------------------------------------------------------

inoremap ii <ESC>

nmap <Leader>w :wq<CR>
nmap <Leader>q :q!<CR>
nmap <Leader>cl :noh<CR>

map <Leader>ll :setlocal spell! spelllang=en_us<CR>
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
command! Reload execute "source ~/.vimrc"

" FZF BLines

"--------------------------------------------------------------------------------------------------
"----------------------------------  SPLITS -------------------------------------------------------

" Remove pipes
"set fillchars+=vert:\

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


