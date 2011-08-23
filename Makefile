## You can use your own ${INSTALLPATH} as this:
## INSTALLPATH=~/repo/dotfiles install.sh
## and I will respect your ideas about where to
## put symlinks from.

DEFPATH=${HOME}/.dotfiles
INSTALLPATH ?= ${DEFPATH}

all: clone profile vimrc vimfiles emacs

clone:
	git clone git://github.com/ssaavedra/dotfiles ${INSTALLPATH}
	cd ${INSTALLPATH} && git pull && cd -

profile:
	ln -s ${INSTALLPATH}/profile.d ~/.profile.d
	echo "source ~/.profile.d/loader.profile" >> ~/.bashrc

vimrc:
	ln -s ${INSTALLPATH}/vim/vimrc ~/.vimrc

vimfiles:
	ln -s ${INSTALLPATH}/vim/vimfiles ~/.vim

emacs:
	ln -s ${INSTALLPATH}/emacs/emacsrc ~/emacs
	ln -s ${INSTALLPATH}/emacs/emacs.d ~/.emacs.d
