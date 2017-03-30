#!/bin/bash
# music.sh

QUERY="$(cmus-remote -Q)"
STATUS="$(echo "$QUERY" | grep -e "status " | cut -d " " -f 2)"
ARTIST="$(echo "$QUERY" | grep -e " artist " | cut -d " " -f 3-)"
TITLE="$(echo "$QUERY" | grep -e " title " | cut -d " " -f 3-)"

OUTPUT="$ARTIST - $TITLE"

if [ "$STATUS" != "playing" ]; then
	OUTPUT="Not playing"
fi

# Escaping the & character
OUTPUT="${OUTPUT/\&/\&amp\;}"

echo -e " $OUTPUT"
