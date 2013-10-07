#!/bin/bash
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi
git clone https://github.com/b4winckler/vim ~/tmp/vim
cd vim
bash  ~/tmp/vim/configure --prefix=/usr/local --with-features=huge --enable-python3interp --with-compiledby='Joris Morger' --enable-gui=gnome2 --enable-luainterp --enable-rubyinterp --enable-pythoninterp
~/tmp/vim/make
~/tmp/vim/make install
