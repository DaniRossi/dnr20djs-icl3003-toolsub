#!/bin/bash

# Hello message.

zenity --info \
       --title "BUDS" \
       --width 400 \
       --height 200 \
       --text "Base BCUHB image."

       if zenity --question --width 400 --height 200 --title="BCUHB Base Image" --text="Are you sure you want to deploy this package?" --no-wrap
        then

sh ./scripts/pb.sh

else

echo exit

fi
