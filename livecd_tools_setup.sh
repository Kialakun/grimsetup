#!/bin/bash

echo "Installing patch and livecd-tools..."

dnf install patch livecd-tools

echo "Downloading livecd-iso-to-disk patch..."

curl -L -o livecd-iso-to-disk.patch.txt https://github.com/livecd-tools/livecd-tools/files/11346168/livecd-iso-to-disk.f38.patch.txt

echo "Applying patch..."

patch -i /home/liveuser/livecd-iso-to-disk.patch.txt -d /usr/bin

echo "Completed."

echo "Create live OS with persistance overlay by running the following in your terminal: "
echo "# sudo livecd-iso-to-disk --overlay-size-mb 10000 --home-size-mb 10000 --unencrypted-home --nomac --efi --format Fedora.iso /dev/sdX" 
