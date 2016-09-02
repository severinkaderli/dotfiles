#!/bin/bash
# volume.sh
volume=$(/usr/share/i3blocks/volume 5 pulse)

if [ ${volume::-1} -ge "35" ]; then
  echo " $volume"
elif [ ${volume::-1} -gt "0" ]; then
  echo " $volume"
else
 echo " $volume"
fi
