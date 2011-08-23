Santiago Saavedra' s Dot Files
==============================

These config files set up bash environment and vim in a bit more productive way for me.

I am yet starting with emacs and that's why the emacs files are not so many.

Installation
------------

Read these files, as you may be replacing your own settings!

    git clone git://github.com/ssaavedra/dotfiles ~/.dotfiles
    ln -s ~/.dotfiles/profile.d ~/.profile.d
    echo "source ~/.profile.d/loader.profile" >> ~/.bashrc
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/vimfiles ~/.vim
    ln -s ~/.dotfiles/emacs/emacsrc ~/.emacs
    ln -s ~/.dotfiles/emacs/emacs.d ~/.emacs.d

Or use the provided Makefile.
You can customize what do you want to install with the Makefile, there is a rule for each setting. See the Makefile for more information.

You can put these dotfiles in some other place when installing with the Makefile by setting the `INSTALLPATH` environment variable in the `make` call.

Environment
-----------

I use mostly Mac OS X and Linux (both Ubuntu and Archlinux, in different places).
This config is usually updated so it will work finely in all of my systems, but don't expect anyting, as I might break some compatibility from commit to commit without even noticing until some time later.

Future plans
------------
 * Add some auto completion features to bash.
 * Add some new plugins to emacs.

