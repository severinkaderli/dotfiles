#!/bin/bash
#
# This script allows me to quickly start or stop apache2 and mysql.
#
# Usage: ./server.sh [start|stop]

if [ "$1" == "start" ]; then
	sudo service apache2 start
	sudo service mysql start
elif [ "$1" == "stop" ]; then
	sudo service apache2 stop
	sudo service mysql stop
else
	echo "'$1' is an unknown option"
	exit 0
fi
