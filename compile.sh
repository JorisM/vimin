#!/bin/bash
DIRECTORY=~/tmp/vim
if [ -d "$DIRECTORY" ]; then
	git pull
else
	git clone https://github.com/b4winckler/vim ~/tmp/vim
fi
cd ~/tmp/vim
./configure --prefix=/usr/e --with-features=huge --enable-python3interp --with-compiledby='Joris Morger' --enable-gui=auto --enable-luainterp --enable-rubyinterp --enable-pythoninterp
make
sudo make install
