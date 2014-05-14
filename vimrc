""""""""""""""""""""""""""""""""
""""" Global VIM settings. """""
""""""""""""""""""""""""""""""""




""""""""""""""""""""""""
""" Vundle settings. """
""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "mattn/emmet-vim"
Bundle 'gmarik/vundle'
Bundle "Shougo/neocomplete.vim"
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'altercation/vim-colors-solarized'
Bundle 'nvie/vim-togglemouse'
Bundle 'vim-perl/vim-perl'




"""""""""""""""""""""""
""" Basic Operation """
"""""""""""""""""""""""

set history=1000	" remember more commands and search history
set undolevels=1000	" use many mucho levels of undo
set title			" change the terminal's title
set visualbell		" don't beep
set noerrorbells	" don't beep
set nobackup		" no backup file		
set noswapfile		" no backup file
set tabstop=4		" Tab is four spaces.
set wrap			" don't wrap lines

" Searching "
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch		" highlight search terms
set incsearch		" show search matches as you type

:filetype plugin indent on	" Activate filetypes.
set spell spelllang=en_gb	" Spellcheck.




""""""""""""""""""
""" Appearance """
""""""""""""""""""

" Set the 'Mustang' colourscheme if available.
if &t_Co >= 256 || has("gui_running")
   colorscheme Tomorrow-Night-Bright
endif

" Switch syntax highlighting on, when the terminal has colours.
if &t_Co > 2 || has("gui_running")
   syntax on
endif

" Hide GUI Widgets "
set guioptions-=m
set guioptions-=T
set guioptions-=r

set guifont=Source_Code_Pro	" Change font.




""""""""""""""
""" Remaps """
""""""""""""""

" Map space bar to fold code. "
map <space> za

" press F2 to enter 'paste mode', which allows pasting without being dumb.
set pastetoggle=<F2>

" now I only have to press ';'
nnoremap ; :

" Easy window navigation "
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disables arrow keys. "
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>




""""""""""""""""""""""""""""
""" NeoComplete Settings """
""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0			" Disable AutoComplPop.
let g:neocomplete#enable_at_startup = 1	" Use neocomplete.
let g:neocomplete#enable_smart_case = 1	" Use smartcase.
let g:neocomplete#sources#syntax#min_keyword_length = 3	" Set minimum syntax keyword length.
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
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
