" Vundle {{{
source ~/.vim/vundle.vimrc
" }}}

" Settings {{{
" Basic Operation
set history=1000            " Remember more commands and search history.
set undolevels=1000         " Use many mucho levels of undo.
set visualbell              " \
set t_vb=                   "  Don't beep.
set noerrorbells            " /
set nobackup                " No backup file.
set noswapfile              " No backup file.

" Spaces and Tabs
set tabstop=4       " Tab width is four.
set softtabstop=4   " Tab width is four.
set expandtab       " Tabs are spaces.
set autoindent      " Indent automatically.
set copyindent      " Copy the previous indentation when autoindenting.
set shiftwidth=4    " Number of spaces to use for autoindenting.
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'.
set smarttab        " Insert tabs on the start of a line according to shiftwidth, not tabstop
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode.

" Searching
set ignorecase  " Ignore case when searching.
set smartcase   " Ignore case if search pattern is all lowercase, case-sensitive otherwise.
set hlsearch    " Highlight search terms.
set incsearch   " Show search matches as you type.

" Appearance
set title                       " Change the terminal's title.
set number                      " Show line numbers.
set nowrap                      " Don't wrap lines.
set cursorline                  " Highlight current line.
set showmatch                   " Highlight matching [{()}].
set wildmenu                    " Visual autocomplete for command menu.
set lazyredraw                  " Redraw only when we need to.
filetype plugin indent on       " Activate filetypes.
set spell spelllang=en_gb       " Spellcheck.
set guioptions-=m               " \
set guioptions-=T               "  Hide GUI Widgets
set guioptions-=r               " /

" Change Font
if (has("win32") || has("win16")) || has("win32unix")
    set guifont=Source\ Code\ Pro:h14
else
    set guifont=SourceCodePro,mono " Change font.
endif


" Folding
set foldenable          " Enable folding.
set foldlevel=1         " One space counts as an indent.
set foldlevelstart=10   " Open most folds by default.
set foldnestmax=10      " 10 nested fold max.
set foldmethod=indent   " fold based on indent level
" }}}

" Remaps {{{
" jk is escape
inoremap jk <esc>

" easy NERDtree access
nnoremap <leader>E :NERDTree<CR>

" easy Unite bindings
"nnoremap <leader>/ :Unite grep<CR><CR>
"nnoremap <expr> <leader>e filereadable(".git") ? ":Unite file_rec/git<CR>" : ":Unite file_rec/async<CR>"

" Searching
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
" space open/closes folds
nnoremap <space> za

" Movement
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Easy tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i

" Highlight last inserted text
nnoremap gV `[v`]
" }}}

" Appearance {{{
" Switch syntax highlighting on when the terminal has colours.
if &t_Co > 2 || has("gui_running")
    syntax on
    let g:nd_themes = [
    \ ['sunrise+0', 'vimspectrgrey-light',  'light' ],
    \ ['sunset+0',  'vimspectr210-dark',    'dark'  ],
    \ ]
    let g:nd_latitude = 45
    if strftime("%m") > 3 && strftime("%m") < 11
        let g:nd_timeshift = 63
    else
        let g:nd_timeshift = 123
    endif
endif
" }}}

" Organization {{{
set modelines=1
" }}}
" vim:foldmethod=marker:foldlevel=0
