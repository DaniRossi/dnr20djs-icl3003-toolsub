#!/bin/bash

zenity --info \
       --title "BUDS" \
       --width 400 \
       --height 200 \
       --text "Base optional stylng pack."

       if zenity --question --width 400 --height 200 --title="BCUHB Style Pack" --text="Are you sure you want to deploy this package?" --no-wrap
        then

# Styling options to make Ubuntu appear more Windows-like.
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

# Dialogue box for sucessful script deployment.
zenity --info \
       --title "Mission Success!" \
       --width 400 \
       --height 200 \
       --text "Script deployed successfully."

else
    zenity --info --title="Exit" --text="Script deployment cancelled!" --no-wrap
fi
