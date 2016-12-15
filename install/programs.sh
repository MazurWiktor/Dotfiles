#!/bin/bash

echo "Checking package manager..."

if [[ -n `which apt-get` ]] 
then
	installer="sudo apt-get install -y" 
fi

function check_and_install() {
	if [[ -z `which $1` ]] 
	then
        if [[ -n $2 ]]
        then
            echo "Going to install $2"
            $installer $2	
        else
            echo "Going to install $1"
            $installer $1	
        fi
	fi
}

echo "Installing packages..."
check_and_install vim "vim-nox"
check_and_install ruby
check_and_install htop
check_and_install mc 
check_and_install tmux
check_and_install curl
check_and_install zsh
check_and_install git
check_and_install "build-essential"
check_and_install cmake 
check_and_install python "python-dev"
check_and_install mono "mono-xbuild"
check_and_install clang
check_and_install wine
check_and_install python-pip

echo "Installing other utilities..."
if [[ -z `find ~/ -name ".oh-my-zsh"` ]]
then
    echo "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "Installing powerline"
if [[ -n `which powerline` ]] 
then
    pip install --upgrade pip
    sudo pip install git+git://github.com/Lokaltog/powerline
    check_and_install powerline
    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    sudo fc-cache -vf
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
fi

echo "Installing git submodules..."
git submodule init
git submodule update

