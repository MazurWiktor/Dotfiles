#!/bin/bash

echo "Installing vim pluggins..."
vim +PluginInstall +qall

is_ubuntu=`which apt-get`
YCM_PATH="$HOME/.vim/plugged/YouCompleteMe" 

if [[ -n $is_ubuntu ]] && [[ ! -e $YCM_PATH/installed ]]
then
    cd $YCM_PATH && ./install.py --all && touch $YCM_PATH/installed
fi


