#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

info=$(ffprobe -v error -show_entries format=size,duration -of default=noprint_wrappers=1:nokey=1 "$filename")

echo "$info"

