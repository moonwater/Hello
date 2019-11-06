#!/bin/bash
renice 19 -p $$

curl -sSl https://raw.githubusercontent.com/moonwater/Hello/master/init_ubuntu.sh > init_ubuntu.sh && bash init_ubuntu.sh
curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/simple_zshrc > .zshrc
curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/aescrypt_install.sh | bash
wget -c https://github.com/moonwater/Hello/blob/master/tea.aes\?raw\=true -O .bash_aliases.aes
