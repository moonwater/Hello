#!/bin/bash
renice 19 -p $$

sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove
## Remove Old Kernels (If No Longer Required)
sudo apt-get autoremove --purge
