#!/bin/bash
renice 19 -p $$
sudo apt-get update
sudo apt list --upgradable
echo "enable sudoer"
sudo sed -i '$ a master   ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers

cd
git clone https://github.com/junegunn/fzf.git
~/fzf/install
sudo apt install zsh emacs libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev ccze openssh-server build-essential tmux icdiff autojump curl fortune-mod magic-wormhole grc wdiff
source ~/.bashrc

while true; do
    read -p "Do you wish to change to zsh? Yy/Nn" yn
    case $yn in
        [Yy]* ) chsh -s `which zsh`; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/simple_zshrc > .zshrc

echo "install oh_my_zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
