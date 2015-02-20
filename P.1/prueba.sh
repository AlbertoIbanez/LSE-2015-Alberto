#!/bin/bash

apt-get install --reinstall ca-certificates
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded
sudo apt-get update
sudo apt-get install gcc-arm-none-eabi

# instalacion del stlink

sudo apt-get install autoconf pkg-config libusb-1.0 git
cd ~
git clone https://github.com/texane/stlink.git
cd ~/stlink
./autogen.sh
./configure
make

# instalacion java 8
sudo add-apt-repository ppa:webupd8team/java && sudo apt-get --quiet update 
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default

# instalacion eclipse (el comando wget? en realidad no tiene la ultima version el repositorio de ubuntu)

sudo apt-get install eclipse




exit
