#!/bin/sh
git submodule init
git submodule update
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make

