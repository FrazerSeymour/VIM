#!/bin/bash
if ansible-playbook --version >/dev/null 2>&1; then
    ansible-playbook --connection=local --inventory 127.0.0.1, playbook.yml
else
    ln -s $PWD ~/.vim
    ln -s $PWD/vimrc ~/.vimrc
fi
