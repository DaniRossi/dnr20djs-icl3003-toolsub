#!/bin/bash

# This script will create a desktop file on the users desktop

# Get username
USERNAME=`whoami`

if [ ! -d /home/$USERNAME/icons/ ]; then
  mkdir -p /home/$USERNAME/icons/;
fi

cp ./scripts/files/images/esr.jpeg ~/icons/


# Check for the user's Desktop directory
if [ -d ~/Desktop ]; then
    DESKTOP_DIR=~/Desktop
else
    echo "Desktop directory not found"
    exit 1
fi

# Create ESR desktop file
echo "[Desktop Entry]
Type=Application
Exec=microsoft-edge-stable https://my.esr.nhs.uk/
Icon=/home/$USERNAME/icons/esr.jpeg
Name=ESR NHS
" > $DESKTOP_DIR/ESR.desktop

# Create BetsiNet desktop file
echo "[Desktop Entry]
Type=Application
Exec=microsoft-edge-stable https://bcuhb.nhs.wales/
Icon=applications-internet
Name=BetsiNet
" > $DESKTOP_DIR/BetsiNet.desktop

# Create BetsiNet desktop file
echo "[Desktop Entry]
Type=Application
Exec=microsoft-edge-stable http://jobs.bcu.wales.nhs.uk/jobs_emp?_ts=&emp=371&_srt=grade
Icon=applications-internet
Name=BCUHB Jobs
" > $DESKTOP_DIR/BCUJobs.desktop

echo "Desktop files created successfully"
