#!/bin/bash
if ! ansible-playbook --version >/dev/null 2>&1; then
    echo "Ansible is required to use this installation script!"
else
    ansible-playbook --connection=local --inventory 127.0.0.1, playbook.yml
fi
