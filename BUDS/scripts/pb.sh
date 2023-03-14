#!/bin/sh
(
# Removes unwanted standard Ubuntu applications/games.
echo "# Removing unwanted software." ; sleep 1
sh ./scripts/baseimage/ru.sh

# Adds and updates repositories.
echo "# Adding and updating repositories." ; sleep 1
sh ./scripts/baseimage/ar.sh

# Installation of necessary software.
echo "# Installing required software." ; sleep 1
sh ./scripts/baseimage/is.sh

# Running background creation script.
echo "# Creating custom background." ; sleep 1
sh ./scripts/baseimage/bc.sh

# Creating Microsft Edge shortcuts.
echo "# Creating Microsoft Edge shortcuts." ; sleep 1
sh ./scripts/baseimage/ms.sh

echo "# Script deployed." ; sleep 1
) |
zenity --progress --no-cancel --pulsate\
  --title="BUDS" \
  --text="BUDS Base Image." \
