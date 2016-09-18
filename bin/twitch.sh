#!/bin/bash
#
# This script simply uses livestreamer <http://docs.livestreamer.io/> to
# stream a twitch stream. It's only a little shortcut, so I don't have to
# type so much.
#
# Usage: ./twitch.sh USERNAME [RESOLUTION]

if [[ -z $1 ]]; then
  echo "Please enter a username!"
  exit 1
fi

if [[ -z $2 ]]; then
  resolution="source"
else
  resolution="$2"
fi

livestreamer --http-header Client-ID=ewvlchtxgqq88ru9gmfp1gmyt6h2b93 "twitch.tv/$1"  "$resolution"
