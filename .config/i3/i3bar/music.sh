#!/bin/bash

OUTPUT="$(audtool current-song)"

if [ -z "$OUTPUT" ]; then
	OUTPUT="Not playing"
fi

echo " $OUTPUT"
