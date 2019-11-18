#!/bin/bash
renice 19 -p $$
echo "======== updating to current ========"
sudo apt-get update
sudo apt list --upgradable
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
## Remove Old Kernels (If No Longer Required)
sudo apt-get autoremove --purge

echo "==================================="
echo "enable sudoer"
sudo sed -i '$ a master   ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers


echo "add console ssh keys"
curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/authorized_keys > ~/.ssh/authorized_keys

# sudo passwd master

cd
git clone https://github.com/junegunn/fzf.git
~/fzf/install --all

sudo apt -y install zsh
sudo apt -y install build-essential
sudo apt -y install emacs
sudo apt -y install libmicrohttpd-dev
sudo apt -y install libssl-dev
sudo apt -y install cmake
sudo apt -y install ccze
sudo apt -y install openssh-server
sudo apt -y install tmux
sudo apt -y install icdiff
sudo apt -y install autojump
sudo apt -y install curl
sudo apt -y install fortune-mod
sudo apt -y install magic-wormhole
sudo apt -y install grc
sudo apt -y install wdiff
sudo apt -y install bat
sudo apt -y install git
sudo apt -y install secure-delete
sudo apt -y install sshguard
sudo apt -y install net-tools
sudo apt -y install mosh
mosh-server
sudo apt -y install libhwloc-dev

source ~/.bashrc

sudo chsh -s `which zsh` master

#while true; do
#    read -p "Do you wish to change to zsh? Yy/Nn" yn
#    case $yn in
#        [Yy]* ) chsh -s `which zsh`; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done

curl -sSL https://raw.githubusercontent.com/moonwater/Hello/master/simple_zshrc > .zshrc

echo "install oh_my_zsh"
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

#remove itself
rm -- "$0"
