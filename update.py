#!/usr/bin/python

from os.path import expanduser
from shutil import copyfile, copytree, rmtree
from subprocess import call

if __name__ == "__main__":
    copyfile(expanduser('~')+"/.vimrc", "./.vimrc")

    rmtree("./.vim")
    copytree(expanduser('~')+"/.vim", "./.vim")

    try:
        call(["hg", "commit", "-A", "-m", raw_input("Commit Message: ")])
        call(["hg", "push", "ssh://hg@bitbucket.org/FrazerS/vim-stuff"])
        print "Update comlete!"
    except:
        print "Something went wrong. :/"
