""" Python Specific Settings

""" This must be first, because it changes other options as side effect. """
set nocompatible

""" Miscealaneous """
setlocal nowrap	     " No linewrap.
setlocal nospell     " No spellcheck.
setlocal number      " Show line numbers.
setlocal showmatch   " Show matching parenthesis.
setlocal cursorline  " Highlight current line.

""" Code Folding """
setlocal foldmethod=indent   " fold based on indent
setlocal foldnestmax=5       " deepest fold is 10 levels
setlocal nofoldenable        " dont fold by default
setlocal foldlevel=1         " one space counts as an indent


""" Indenting """
setlocal tabstop=4     " a tab is four spaces
setlocal autoindent    " always setlocal autoindenting on
setlocal copyindent    " copy the previous indentation on autoindenting
setlocal shiftwidth=4  " number of spaces to use for autoindenting.
setlocal shiftround    " use multiple of shiftwidth when indenting with '<' and '>'.
setlocal expandtab     " tabs are spaces
setlocal smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
setlocal backspace=indent,eol,start  "allow backspacing over everything in insert mode


""" Highlight Whitespace """
setlocal list
setlocal listchars=tab:>.,trail:.,extends:#,nbsp:.

""" Margin at 80 columns. """
"au BufWinEnter *.py, highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
"au BufWinEnter *.py, match OverLength /\%81v.\+/
if exists('+colorcolumn')
    setlocal colorcolumn=80
else
    au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%.80v.\+', -1)
endif
