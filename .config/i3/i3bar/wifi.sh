#!/bin/bash
# wifi.sh

SSID=$(iwgetid -r)

if [ "$SSID" != "Yggdrasil"]; then
	echo "  Disconnected"
else
	echo " $SSID"
fi
