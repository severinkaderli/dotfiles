#!/bin/bash
#
# This script allows me to quickly start or stop apache2 and mysql.
#
# Usage: ./server.sh [start|stop]

if [ "$1" == "start" ]; then
	sudo systemctl start apache2.service
	sudo systemctl start mysql.service
	sudo systemctl start php7.0-fpm.service
elif [ "$1" == "stop" ]; then
	sudo systemctl stop apache2.service
	sudo systemctl stop mysql.service
	sudo systemctl stop php7.0-fpm.service
else
	echo "'$1' is an unknown option"
	exit 0
fi
