#!/bin/bash
DIRECTORY=~/tmp/vim
if [ -d "$DIRECTORY" ]; then
	cd ~/tmp/vim
	git pull
else
	git clone https://github.com/b4winckler/vim ~/tmp/vim
	cd ~/tmp/vim
fi
./configure --prefix=/usr --with-features=huge --with-compiledby='Joris Morger' --enable-gui=auto --enable-luainterp --enable-rubyinterp --enable-pythoninterp --with-x --with-python-config-dir=/usr/lib/python2.7/config --disable-darwin
make
sudo make install
