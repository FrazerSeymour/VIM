#!/bin/bash
if ansible-playbook --version >/dev/null 2>&1; then
    ansible-playbook --connection=local --inventory 127.0.0.1, playbook.yml
else
    ln -s $PWD ~/.vim
    ln -s $PWD/vimrc ~/.vimrc
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim -E -u ~/.vim/plugins.vimrc +PluginInstall +qall >/dev/null 2>&1
fi
