" Vundle {{{
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Colour Schemes
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'altercation/vim-colors-solarized'

" Shougo stuff
Plugin "Shougo/neocomplete.vim"
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

" Web Dev
Plugin 'mattn/emmet-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

call vundle#end()
filetype plugin indent on
" }}}

" Basic Operation {{{
set history=1000            " Remember more commands and search history.
set undolevels=1000         " Use many mucho levels of undo.
set visualbell              " Don't beep.
set noerrorbells            " Don't beep.
set nobackup                " No backup file.
set noswapfile              " No backup file.
" }}}

" Spaces and Tabs {{{
set tabstop=4        " Tab width is four.
set softtabstop=4    " Tab width is four.
set expandtab        " Tabs are spaces.
" }}}

" Searching {{{
set ignorecase  " Ignore case when searching.
set smartcase   " Ignore case if search pattern is all lowercase, case-sensitive otherwise.
set hlsearch    " Highlight search terms.
set incsearch   " Show search matches as you type.

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Appearance {{{
set title                   " Change the terminal's title.
set number                  " Show line numbers.
set nowrap                  " Don't wrap lines.
set cursorline              " Highlight current line.
set showmatch               " Highlight matching [{()}].
set wildmenu                " Visual autocomplete for command menu.
set lazyredraw              " Redraw only when we need to.
filetype plugin indent on   " Activate filetypes.
set spell spelllang=en_gb   " Spellcheck.
set guifont=Source_Code_Pro	" Change font.
set guioptions-=m           " \
set guioptions-=T           "  Hide GUI Widgets
set guioptions-=r           " /

" Switch syntax highlighting on, when the terminal has colours.
if &t_Co > 2 || has("gui_running")
   syntax on
endif

" Set the 'Tomorrow-Night-Bright' colourscheme if available.
if &t_Co >= 256 || has("gui_running")
   colorscheme Tomorrow-Night-Bright
endif
" }}}

" Folding {{{
set foldenable          " Enable folding.
set foldlevelstart=10   " Open most folds by default.
set foldnestmax=10      " 10 nested fold max.
set foldmethod=indent   " fold based on indent level

" space open/closes folds
nnoremap <space> za
" }}}

" Movement {{{
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disables arrow keys. "
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Highlight last inserted text
nnoremap gV `[v`]
" }}}

" Shortcuts {{{
" Command is now ';'.
nnoremap ; :

" Leader is now ','.
let mapleader=","

" jk is escape
inoremap jk <esc>

" save session
nnoremap <leader>s :mksession<CR>
" }}}

" Organization {{{
set modelines=1
" }}}
" vim:foldmethod=marker:foldlevel=0
