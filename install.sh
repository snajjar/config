#!/bin/sh

mkdir ~/.vimsave
mkdir ~/.config/awesomesave
mv ~/.vimrc ~/.vimsave
mv ~/.vim ~/.vimsave
mv ~/.config/awesome ~/.config/awesomesave

ln -s $PWD/.vim ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s $PWD/.config/awesome ~/.config/awesome
