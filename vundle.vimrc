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
Plugin 'nightsense/vimspectr'
Plugin 'nightsense/night-and-day'

" Clever Stuff
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'embear/vim-localvimrc'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
" }}}
