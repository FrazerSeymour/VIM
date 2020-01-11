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
set guifont=SourceCodePro,mono


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

" Plugin Remaps {{{
" Deoplete: Go forward through candidates with tab.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Deoplete: Go backwards through candidates with shift+tab.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"

" ALE: Super-powered indent.
nnoremap <leader><TAB> :ALEFix<CR>

" ALE: Super-powered indentation suggestions.
nnoremap <leader><S-TAB> :ALEFixSuggest<CR>

" ALE: Super-powered go-to-definition.
nnoremap <leader>gd :ALEGoToTypeDefinitionInVSplit<CR>

" ALE: Super-powered go-to-next.
nnoremap <leader>n :ALEFindReferences<CR>

" NERDtree: Super-powered 'edit file' alternate.
nnoremap <leader>E :NERDTree<CR>

" FZF: Super-powered content search.
nnoremap <leader>/  :Ag<space>

" FZF: Super-powered cursor search.
nnoremap <leader>#  :Ag <C-R><C-W><CR>

" FZF: Super-powered selection search
xnoremap <Leader>#  y:Ag <C-R>"<CR>

" FZF: Super-powered 'edit file'.
nnoremap <leader>e  :FZF<CR><CR>
" }}}

" Plugin Configuration {{{
" Vim-Plug: Plugin installation and management.
source ~/.vim/plugins.vimrc

" Deoplete: Enable on startup.
let g:deoplete#enable_at_startup = 1

" Deoplete: Use LSP as a source.
"call deoplete#custom#option('sources', { '_': ['vim_lsp'], })


" ALE: Disable auto-complete in favour of Deoplete.
let g:ale_completion_enabled = 0

" ALE: Use global tsserver installation
let g:ale_typescript_tsserver_use_global = 1

" ALE: Enable balloon hovering in GVim.
if has("gui_running")
    let g:ale_set_balloons = 1
endif

" ALE: Generic fixers.
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'],}


" Vim-Multiple-Cursors: Play nice with deoplete.
func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc


" night-and-day: Set colourschemes by time of day.
if &t_Co > 2 || has("gui_running")
    syntax on

    " Set themes for day and night.
    let g:nd_themes = [
    \ ['sunrise+0', 'vimspectrgrey-light',  'light' ],
    \ ['sunset+0',  'vimspectr210-dark',    'dark'  ],
    \ ]

    " Correct global position for sunrise/sunset times.
    let g:nd_latitude = 45
    if strftime("%m") > 3 && strftime("%m") < 11
        let g:nd_timeshift = 63
    else
        let g:nd_timeshift = 123
    endif
endif

set rtp+=~/.fzf
" }}}

" Organization {{{
set modelines=1
" }}}
" vim:foldmethod=marker:foldlevel=0
