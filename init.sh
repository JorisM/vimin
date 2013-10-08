#!/bin/bash
git submodule init
git submodule update
cd ~/.vim/bundle/command-t/ruby/command-t
make extconf.rb
make

