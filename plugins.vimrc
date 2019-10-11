" Plugins {{{
" Install Vim-Plug and plugins if absent.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Language Agnostic Syntax Support
Plug 'sheerun/vim-polyglot'

" Code linting, formatting, and navigation.
Plug 'dense-analysis/ale'

" Autocomplete engine. (And requirements.)
Plug 'Shougo/deoplete.nvim'  | Plug 'roxma/nvim-yarp' | Plug 'roxma/vim-hug-neovim-rpc'

" Colour Schemes
Plug 'nightsense/vimspectr'

" Change Colour Schemes by time-of-day.
Plug 'nightsense/night-and-day'

" Multiple cursors.
Plug 'terryma/vim-multiple-cursors'

" File browser with git annotation.
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Project-based editor configuration.
Plug 'embear/vim-localvimrc'

call plug#end()
" }}}
