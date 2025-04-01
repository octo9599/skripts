#!/bin/bash

if (($# != 1)); then
    echo "Usage: $0 <yt-link>"
    exit 1
fi

yt-dlp -f "bv*[ext=mp4][height<=720]+ba[ext=m4a]/b[ext=mp4]" -S "res:720,acodec,br" "$1"

echo "Video downloaded successfully!"
exit 0