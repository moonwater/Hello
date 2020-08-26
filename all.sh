#!/bin/bash
renice 19 -p $$

curl -sSl https://raw.githubusercontent.com/moonwater/Hello/master/init_ubuntu.sh > init_ubuntu.sh && bash init_ubuntu.sh
curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/simple_zshrc > .zshrc
curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/aescrypt_install.sh | bash
wget -c https://github.com/moonwater/Hello/blob/master/tea.aes\?raw\=true -O .bash_aliases.aes
wget -c https://github.com/moonwater/Hello/blob/master/.bc\?raw\=true -O .bc
wget -c https://github.com/moonwater/Hello/blob/master/.dircolors\?raw\=true -O .dircolors
wget -c https://github.com/moonwater/Hello/blob/master/.vimrc\?raw\=true -O .vimrc
curl -sSl https://raw.githubusercontent.com/moonwater/Hello/master/vv.sh> vv.sh && bash vv.sh

#remove itself
rm -- "$0"
