#!/bin/bash
cd
git clone https://github.com/v2ray/v2ray-core.git                                                                                                                           
cd v2ray-core/                                                                                                                                                              
cd release/                                                                                                                                                                 
sudo ./install-release.sh
cd
#remove itself
rm -- "$0"
