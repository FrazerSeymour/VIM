" Vundle {{{
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Language Agnostic Syntax Support
Plugin 'sheerun/vim-polyglot'

" Colour Schemes
Plugin 'nightsense/vimspectr'

" Change Colour Schemes by time-of-day.
Plugin 'nightsense/night-and-day'

" Multiple cursors.
Plugin 'terryma/vim-multiple-cursors'

" File browser with git annotation.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Project-based editor configuration.
Plugin 'embear/vim-localvimrc'

call vundle#end()
" }}}
