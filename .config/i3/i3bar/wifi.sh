#!/bin/bash
# wifi.sh
if [ "$(cat /sys/class/net/$INTERFACE/operstate)" = "down" ]; then
	echo "Wifi not connected"
fi

SSID=$(iwgetid -r)

echo "Connected to $SSID"

