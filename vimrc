""""""""""""""""""""""""""""""""
""""" Global VIM settings. """""
""""""""""""""""""""""""""""""""




"""""""""""""""""""""""
""" Basic Operation """
"""""""""""""""""""""""

set history=1000        " remember more commands and search history
set undolevels=1000     " use many mucho levels of undo
set title               " change the terminal's title
set visualbell          " don't beep
set noerrorbells        " don't beep
set nobackup            " no backup file		
set noswapfile          " no backup file
set tabstop=4           " Tab is four spaces.
set wrap                " don't wrap lines

" Searching "
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type

:filetype plugin indent on      " Activate filetypes.
set spell spelllang=en_gb       " Spellcheck.
