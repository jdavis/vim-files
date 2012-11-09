Vim Files
=====================

Vim-files is a collection of runtime files for the awesome editor that is
[Vim][Vim]. It used to contain more files but has since been cut down because of
the amazing plugin manager called [Vundle][Vundle].

[Vim]: http://www.vim.org/
[Vundle]: https://github.com/gmarik/vundle

File Structure
--------------

### bundle/
At the time of clone, it only contains the Vundle bundle. This is the whole meat
of my Vim files. Vundle is a plugin manager for Vim. It essentially can take a
list of bundles, download them from Github, and then automatically add them to
the Vim runtime. This has dramatically improved the previous ways of managing
plugins.

For more information on the old way of plugin management, check
[Chapter 42][Plugins] from Steve Losh's Vimscript book.

When in Vim, running the command `:BundleInstall` will populate this directory
with every bundle added to the vimrc.


[Plugins]: http://learnvimscriptthehardway.stevelosh.com/chapters/42.html

### indent/
Contains new indent files that I have added overtime. Sometimes the builtin
indent files have issues and need to be overridden.

### syntax/
Contains syntax files that I have added overtime, much like the *indent/* files.
Sometimes the built in syntax files have issues as well.

### undo/
Just a placeholder directory for using the undo functionality of Vim. Issue a
`:h undo-persistence` to learn more.

A placeholder is necessary because Vim isn't smart enough to automatically
create the directory if it doesn't exist.

Installation
------------

To install and use, it is recommended to just use my [dotfiles](dotfiles), as
all of the necessary settings have been added to the [vimrc][vimrc].

[vimrc]: https://github.com/jdavis/dotfiles/blob/master/.vimrc

Alternative Installation
------------------------

If you have your own vimrc, the best way to install and use would be to follow
the steps below:

1. Move existing vim files.

        cd ~/
        mv .vim vim-old

2. Clone the repository as `.vim`.

        git clone https://github.com/jdavis/vim-files.git .vim

3. Create the submodule and pull it.

        cd .vim
        git submodule init
        git submodule update
