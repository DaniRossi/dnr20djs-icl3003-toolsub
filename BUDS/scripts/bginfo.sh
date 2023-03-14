#!/bin/bash

echo Background image creation script

# Copies background image to users home directory.
cp ./scripts/files/images/BCU.png ~/

# create a blue background
convert -size 1920x1080 xc:blue $HOME/background_image.png

# get username
USERNAME=`whoami`

# get computer name
COMPUTER_NAME=`hostname`

# get CPU name
CPU_NAME=`cat /proc/cpuinfo | grep 'model name' | uniq | awk -F ": " '{print $2}'`

# get amount of RAM in GB
RAM_GB=`cat /proc/meminfo | grep 'MemTotal' | awk '{print $2/1000000}'`

# get OS version
OS_VERSION=`cat /etc/os-release | grep 'VERSION_ID' | awk -F "=\"" '{print $2}' | awk -F "\"" '{print $1}'`

# create text
TEXT="Username: $USERNAME\nComputer Name: $COMPUTER_NAME\nCPU Name: $CPU_NAME\nRAM (GB): $RAM_GB\nOS Version: $OS_VERSION"

# create text
SDTEXT="ICT Service Desk\nWeb Portal: ICTPortal.cymru.nhs.uk\nTelephone: (03000) 858585\nOpening Hours: Monday - Friday\n08:00 - 1700"

# add text to image
convert $HOME/background_image.png -gravity SouthEast ~/BCU.png -geometry +100+350 -composite -gravity SouthEast -pointsize 24 -fill white -annotate +100+100 "$TEXT" -gravity SouthEast -pointsize 24 -fill white -annotate +100+230 "$SDTEXT" $HOME/info.jpg

# Sets custom background.
gsettings set org.gnome.desktop.background picture-uri ~/info.jpg

# Deletes left over files from background creation
rm ~/background_image.png && rm ~/BCU.png
