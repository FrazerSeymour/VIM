# Frazer's VIM Repository

This repo contains my Vim configuration files. 

To use, simply:

1.  Clone this repo.
2.  Create a folder inside the repo called "vim" (or what have you) to hold your plugins.
3.  Symlink '~/.vimrc' to './vimrc' and '~/.vim' to './vim'.
4.  Install Vundle by running `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`.
5.  Open vim and run `:PluginInstall`. Vundle will then install the remaining plugins.
6.  In your terminal, navigate to '~/.vim/bundle/vimproc/' and run `make`.
7.  Enjoy!
