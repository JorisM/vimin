#!/bin/bash
DIRECTORY=~/tmp/vim
if [ -d "$DIRECTORY" ]; then
	git pull
else
	git clone https://github.com/b4winckler/vim ~/tmp/vim
fi
cd ~/tmp/vim
./configure --prefix=/usr/local --with-features=huge --enable-python3interp --with-compiledby='Joris Morger' --enable-gui=gnome2 --enable-luainterp --enable-rubyinterp --enable-pythoninterp
make
sudo make install
