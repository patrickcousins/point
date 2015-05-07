#!/bin/bash
cd ~
mkdir -p bin
PATH=$PATH:~/bin
export PATH
git config --global core.editor "subl -n -w"
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl