#!/bin/bash

# Hello message.

zenity --info \
       --title "BUDS" \
       --width 400 \
       --height 200 \
       --text "BCUHB Graphic design package."

       if zenity --question --width 400 --height 200 --title="BCUHB Graphic Design Package" --text="Are you sure you want to deploy this package?" --no-wrap
          then
            sudo apt-get -y install gimp
            sudo apt-get -y install krita
            sudo apt-get -y install openshot-gt
            
            zenity --info --title="Success!" --text="Script deployment successful!" --no-wrap
          else
            zenity --info --title="Exit" --text="Script deployment cancelled!" --no-wrap
          fi
