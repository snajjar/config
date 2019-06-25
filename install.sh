#!/bin/sh

mkdir -p ~/.vimsave
mkdir -p ~/.config/awesomesave
mv ~/.vimrc ~/.vimsave
mv ~/.vim ~/.vimsave
mv ~/.config/awesome ~/.config/awesomesave

ln -s $PWD/.vim ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s $PWD/.config/awesome ~/.config/awesome

git clone https://github.com/posva/vim-vue.git ~/.vim/pack/plugins/start/vim-vue
