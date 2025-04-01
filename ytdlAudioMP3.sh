#!/bin/bash

if (($# != 1)); then
    echo "Usage: $0 <yt-link>"
    exit 1
fi

yt-dlp -f "ba[ext=mp3]" -S "acodec,abr,asr,channels" "$1"

echo "Audio downloaded successfully!"
exit 0
