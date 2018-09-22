#!/bin/bash

# Uninstall dependendencies
sudo apt-get remove -y abcde lame flac cdparanoia eject
sudo rm -f /etc/udev/rules.d/99-cd-audio-processing.rules
sudo rm -f /etc/systemd/system/rip-audio-cd@service
sudo udevadm control --reload

echo "Done"
echo "pluginuninstallend"
