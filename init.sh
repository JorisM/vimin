#!/bin/bash
git submodule init
git submodule foreach git pull
cd ~/.vim/bundle/command-t/ruby/command-t; extconf.rb
make

