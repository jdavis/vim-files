Josh Davis' Vim Files
=====================

Vim-files is a collection of runtime files for the awesome editor that is
[Vim][Vim]. It used to contain more files but has since been cut down because of
the awesome plugin manager called [Vundle][Vundle].

[Vim]: http://www.vim.org/
[Vundle]: https://github.com/gmarik/vundle

## Installation

To install and use, it is recommended to just use my [dotfiles](dotfiles), as
all of the necessary settings have been added to the [vimrc][vimrc].

## Alternative Installation

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
