#!/bin/bash
renice 19 -p $$
sudo apt-get update
sudo apt list --upgradable
echo "enable sudoer"
sudo sed -i '$ a master   ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers

echo -n "Enter the password: "
read -s password
echo 'master:$password' | sudo chpasswd
