""" HTML Specific Settings

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
setlocal foldnestmax=10      " deepest fold is 10 levels
setlocal nofoldenable        " dont fold by default
setlocal foldlevel=2         " two spaces counts as an indent


""" Indenting """
setlocal tabstop=2     " a tab is four spaces
setlocal autoindent    " always set autoindenting on
setlocal copyindent    " copy the previous indentation on autoindenting
setlocal shiftwidth=2  " number of spaces to use for autoindenting.
setlocal shiftround    " use multiple of shiftwidth when indenting with '<' and '>'.
setlocal expandtab     " tabs are spaces
setlocal smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
setlocal backspace=indent,eol,start  "allow backspacing over everything in insert mode
