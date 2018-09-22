#!/bin/bash

echo "Installing abcde and encoders"
sudo apt-get update
# Install the required packages via apt-get
sudo apt-get -y install abcde lame flac cdparanoia eject

# copy scripts to automatically begin encoding
cp -f /data/plugins/miscellanea/cd_ripper/abcde.conf ~/.abcde.conf
sudo cp -fp /data/plugins/miscellanea/cd_ripper/99-cd-audio-processing.rules /etc/udev/rules.d/
sudo cp -fp /data/plugins/miscellanea/cd_ripper/rip-audio-cd@.service /etc/systemd/system/
sudo udevadm control --reload

# If you need to differentiate install for armhf and i386 you can get the variable like this
#DPKG_ARCH=`dpkg --print-architecture`
# Then use it to differentiate your install

#requred to end the plugin install
echo "plugininstallend"
