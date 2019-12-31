# Frazer's VIM Repository

This repo contains my Vim configuration files. 


## Installation

`playbook.yml` is a short Ansible Playbook that makes sure the correct symlinks are in place and that the required external packages exist on a host. You can run `install.sh` to invoke it on the current machine, or use it to provision remote servers. The Playbook is idempotent - it can be run repeatedly and will only make changes when necessary.

Lacking Ansible, `install.sh` will naively attempt to create the symlinks with bash.
