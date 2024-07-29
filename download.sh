#!/bin/sh

DIRECTORY="./downloads/mp4"

if [ -z "$2" ]; then
    if [ ! -d "$DIRECTORY" ]; then
        mkdir -p $DIRECTORY
    fi

    yt-dlp $1 --remux-video mp4 && mv *.mp4 ./downloads/mp4/
    exit 1
fi

if [ $2 = "mp3" ]; then
    DIRECTORY="./downloads/mp3"

    if [ ! -d "$DIRECTORY" ]; then
        mkdir -p $DIRECTORY
    fi

    yt-dlp -x --audio-format mp3 $1 && mv *.mp3 ./downloads/mp3/
    exit 1
fi

if [ $2 = "m4a" ]; then
    DIRECTORY="./downloads/m4a"

    if [ ! -d "$DIRECTORY" ]; then
        mkdir -p $DIRECTORY
    fi

    yt-dlp -x --audio-format m4a $1 && mv *.m4a ./downloads/m4a/
    exit 1
fi