#!/bin/bash

zenity --info \
       --title "BUDS Home Page" \
       --width 400 \
       --height 200 \
       --text "BCUHB Ubuntu Deployment System (BUDS)."


zenity --text-info --title "BUDS Info" --filename="./scripts/files/text/appinfo.txt"

response=$(zenity --width=400 --height=200 --list --checklist \
   --title='Selection' --column=Boxes --column=Selections \
   FALSE "Base Image" FALSE "Graphic Design Package" FALSE "Optional Styling Pack" --separator=':')

if [ -z "$response" ] ; then
   echo "No selection"
   exit 1
fi

IFS=":" ; for word in $response ; do
   case $word in
      "Base Image") sh ./scripts/baseimage.sh ;;
      "Graphic Design Package") sh ./scripts/graphicdesignpack.sh ;;
      "Optional Styling Pack") sh ./scripts/stylepack.sh  ;;
   esac
done
