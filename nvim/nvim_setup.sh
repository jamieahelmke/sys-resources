#!/bin/bash
$install_dir = '~/.config/nvim'
# Script to setup my neovim config

echo "--> NVIM INSTALL SCRIPT <--"

echo "--> Creating Directories..."
mkdir $install_dir
mkdir $install_dir/autoload

echo "--> Copying the init.vim file into '$install_dir'"
cp ./init.vim $install_dir

echo "--> Getting 'vim-plug'..."
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim >> $install_dir/autoload/plug.vim

echo "Done!\nNow open nvim and type ':PlugInstall' to begin the installation. "
