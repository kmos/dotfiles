#!/bin/bash
echo "Generate SymLink"

if [ -f ~/.Xresources ]
then
  rm ~/.Xresources
fi

ln -s Xresources ~/.Xresources

if [ -f ~/.zshrc ]
then
  rm ~/.zshrc
fi

ln -s zshrc ~/.zshrc 

if [ -f ~/.vimrc ]
then
  rm ~/.vimrc
fi

ln -s vimrc ~/.vimrc

