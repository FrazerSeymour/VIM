""""""""""""""""""""""""""""""""
""""" Global VIM settings. """""
""""""""""""""""""""""""""""""""




"""""""""""""""""""""""
""" Basic Operation """
"""""""""""""""""""""""

set history=1000            " Remember more commands and search history.
set undolevels=1000         " Use many mucho levels of undo.
set visualbell              " Don't beep.
set noerrorbells            " Don't beep.
set nobackup                " No backup file.
set noswapfile              " No backup file.




"""""""""""""""""""""""
""" Spaces and Tabs """
"""""""""""""""""""""""

set tabstop=4        " Tab width is four.
set softtabstop=4    " Tab width is four.
set expandtab        " Tabs are spaces.




"""""""""""""""""
""" Searching """
"""""""""""""""""
set ignorecase  " Ignore case when searching.
set smartcase   " Ignore case if search pattern is all lowercase, case-sensitive otherwise.
set hlsearch    " Highlight search terms.
set incsearch   " Show search matches as you type.




""""""""""""""""""
""" Appearance """
""""""""""""""""""
set title                   " Change the terminal's title.
set number                  " Show line numbers.
set wrap                    " Don't wrap lines.
set cursorline              " Highlight current line.
set showmatch               " Highlight matching [{()}].
set wildmenu                " Visual autocomplete for command menu.
set lazyredraw              " Redraw only when we need to.
filetype plugin indent on   " Activate filetypes.
set spell spelllang=en_gb   " Spellcheck.
