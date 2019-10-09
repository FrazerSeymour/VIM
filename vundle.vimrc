" Vundle {{{
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
if has("unix") && !has("win32unix")
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
elseif (has("win32") || has("win16")) || has("win32unix")
    let $MYVIMRC='$HOME/git-vim/vimrc'
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim
    call vundle#begin('$USERPROFILE/vimfiles/bundle/')
endif

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Colour Schemes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'baeuml/summerfruit256.vim'
Plugin 'nightsense/vimspectr'
Plugin 'nightsense/night-and-day'

" Syntax Highlighting
Plugin 'vim-scripts/cSyntaxAfter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/syntastic'
Plugin 'gabrielelana/vim-markdown'
Plugin 'ekalinin/Dockerfile.vim'

" Shougo stuff
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

" Python
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mindriot101/vim-yapf'

" Go
Plugin 'fatih/vim-go'

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
" }}}

