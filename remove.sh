#!/bin/sh

rm ~/.vimrc
rm -rf ~/.vim
mv ~/.vimsave/.vimrc ~/
mv ~/.vimsave/.vim ~/
rm -r ~/.vimsave
