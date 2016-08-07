" Vundle {{{
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Colour Schemes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'baeuml/summerfruit256.vim'

" Syntax Highlighting
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/syntastic'

" Shougo stuff
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

" Python
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mindriot101/vim-yapf'

" JavaScript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'

" Clever Stuff
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'embear/vim-localvimrc'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

" Shortcuts {{{
" Command is now ';'.
nnoremap ; :

" Leader is now ','.
let mapleader=","

" jk is escape
inoremap jk <esc>

" save session
nnoremap <leader>s :mksession<CR>

" easy NERDtree access
nnoremap <leader>E :NERDTree<CR>

" easy Unite bindings
nnoremap <leader>/ :Unite grep<CR><CR>
nnoremap <leader>e :Unite file_rec/git<CR>
" }}}

" Spaces and Tabs {{{
set tabstop=4       " Tab width is four.
set softtabstop=4   " Tab width is four.
set expandtab       " Tabs are spaces.
set autoindent      " Indent automatically.
set copyindent      " Copy the previous indentation when autoindenting.
set shiftwidth=4    " Number of spaces to use for autoindenting.
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'.
set smarttab        " Insert tabs on the start of a line according to shiftwidth, not tabstop
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode.
" }}}

" Searching {{{
set ignorecase  " Ignore case when searching.
set smartcase   " Ignore case if search pattern is all lowercase, case-sensitive otherwise.
set hlsearch    " Highlight search terms.
set incsearch   " Show search matches as you type.

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Use ag to search code and respect .gitignore.
if executable("ag")
    let g:unite_source_rec_async_command = ['ag', '-iS', '--nocolor', '--nogroup', '-g', '']
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '-iS --nocolor --nogroup'
endif

" Don't limit number of files for Unite.
let g:unite_source_file_rec_max_cache_files = 0
call unite#custom#source('file_rec,file_rec/async,file_rec/git',
            \ 'max_candidates', 0)
" }}}

" Appearance {{{
set title                       " Change the terminal's title.
set number                      " Show line numbers.
set nowrap                      " Don't wrap lines.
set cursorline                  " Highlight current line.
set showmatch                   " Highlight matching [{()}].
set wildmenu                    " Visual autocomplete for command menu.
set lazyredraw                  " Redraw only when we need to.
filetype plugin indent on       " Activate filetypes.
set spell spelllang=en_gb       " Spellcheck.
set guifont=SourceCodePro,mono " Change font.
set guioptions-=m               " \
set guioptions-=T               "  Hide GUI Widgets
set guioptions-=r               " /

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
set foldlevel=1         " One space counts as an indent.
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

" Autogroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn

    autocmd FileType html,javascript,html.handlebars,scss setlocal tabstop=2
    autocmd FileType html,javascript,html.handlebars,scss setlocal shiftwidth=2
    autocmd FileType html,javascript,html.handlebars,scss setlocal softtabstop=2
    autocmd FileType html,javascript,html.handlebars,scss setlocal foldlevel=2

    autocmd FileType python setlocal list
    autocmd FileType python setlocal listchars=tab:>.,trail:.,extends:#,nbsp:.
    autocmd FileType python :call Margin()
    autocmd FileType python nnoremap <leader><tab> :call Yapf()<cr>

    autocmd BufEnter Makefile setlocal noexpandtab

    autocmd FileType cobol setlocal nospell
augroup END

function! Margin() 
    if exists('+colorcolumn')
        setlocal colorcolumn=80
    else
        au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%.80v.\+', -1)
    endif
endfunc
" }}}

" neocomplete {{{
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
   return neocomplete#close_popup() . "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Python omni completion
autocmd FileType python setlocal omnifunc=jedi#completions
let g:pymode_rope=0
let g:pymode_lint=0
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'


" JavaScript omni completion
let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
        exe 'NeoCompleteLock'
    endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
        exe 'NeoCompleteUnlock'
    endif
endfunction
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_filetype_map = { 'html.handlebars': 'handlebars' }
" }}}

" Organization {{{
set modelines=1
" }}}
" vim:foldmethod=marker:foldlevel=0
