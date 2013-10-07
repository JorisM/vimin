#!/bin/bash
git submodule init
git submodule update
~/.vim/ruby/command-t/ruby extconf.rb
make

