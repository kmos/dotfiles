#!/bin/bash
echo "Generate SymLink"

#if [ -e $HOME/.Xresources ]
#then
#	echo "ok"
  rm ~/.Xresources
#fi

ln -s $PWD/Xresources ~/.Xresources

#if [ -f ~/.zshrc ]
#then
  rm ~/.zshrc
#fi

ln -s $PWD/zshrc ~/.zshrc 

#if [ -f ~/.vimrc ]
#then
  rm ~/.vimrc
#fi

ln -s $PWD/vimrc ~/.vimrc

