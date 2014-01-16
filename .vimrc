""" Global VIM settings. """

""" This must be first, because it changes other options as side effect. """
set nocompatible

""" As directed by pathogen: """
execute pathogen#infect()


""" Colourschemes """
" Set the 'Mustang' colourscheme if available.
if &t_Co >= 256 || has("gui_running")
   colorscheme Tomorrow-Night-Bright
endif
" Switch syntax highlighting on, when the terminal has colours.
if &t_Co > 2 || has("gui_running")
   syntax on
endif


""" Hide GUI Widgets """
set guioptions-=m
set guioptions-=T
set guioptions-=r


""" Miscealaneous """
:filetype plugin indent on	" Activate filetypes.
set wrap					" don't wrap lines
set guifont=Source_Code_Pro	" Change font.
set spell spelllang=en_gb	" Spellcheck.
set tabstop=4				" Tab is four spaces.

""" Searching """
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch		" highlight search terms
set incsearch		" show search matches as you type


""" Basic operation """
set history=1000	" remember more commands and search history
set undolevels=1000	" use many mucho levels of undo
set title		" change the terminal's title
set visualbell		" don't beep
set noerrorbells	" don't beep
set nobackup		" no backup file		
set noswapfile		" no backup file


if has('autocmd')
  autocmd filetype html, xml set listchars-=tab:>.
endif


""" Simple remaps """
set pastetoggle=<F2>	" press F2 to enter 'paste mode', which allows pasting without being dumb.
" now I only have to press ';'
nnoremap ; :


""" Easy window navigation """
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


""" Disables arrow keys. """
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

""" Map space bar to fold code. """
map <space> za

cmap w!! w sudo tee % >/dev/null
