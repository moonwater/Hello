wget -c https://www.aescrypt.com/download/v3/linux/aescrypt-3.14.tgz
tar xvf aescrypt-3.14.tgz
rm -vf aescrypt-3.14.tgz
cd aescrypt-3.14/src
make
sudo make install

