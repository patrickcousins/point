#!/bin/sh
#cd ~
#mkdir -p bin
#PATH=$PATH:~/bin
#export PATH=$PATH:~/bin
ln -svf "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
git config --global core.editor "subl -n -w"
echo "Adding subl symlink to your /usr/local/bin/subl"
echo "Make sure this folder is in your PATH"
