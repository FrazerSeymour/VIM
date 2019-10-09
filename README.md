# Frazer's VIM Repository

This repo contains my Vim configuration files. 


## Installation

I have written an Ansible Playbook that installs my vim configuration and the external packages it requires on a host. You can run `install.sh` to invoke it on the current machine, or use it to provision remote servers. The Playbook is idempotent.

Lacking Ansible, `install.sh` will naively run the equivalent Bash instructions to configure vim.
