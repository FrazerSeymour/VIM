#!/usr/bin/python

from os.path import expanduser
from shutil import copy, copytree, rmtree
from subprocess import call

if __name__ == "__main__":
    rmtree("./vim")
    copytree(expanduser('~')+"/.vim", "./vim")
    copy(expanduser('~')+"/.vimrc", "./vimrc")

    try:
        call(["git", "add", "-A"])
        call(["git", "commit", "-m", raw_input("Commit Message: ")])
        call(["git", "push"])
        print "Update complete!"
    except:
        print "Something went wrong. :/"
