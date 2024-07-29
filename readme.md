# Script to Quickly Use yt-dlp

## Description
This script allows you to quickly use `yt-dlp` on macos to download videos and audio from YouTube and other supported platforms.

## System Requirements
- macOS with homebrew
- `yt-dlp`
- `ffmpeg`
- `fprobe`

## Install

```
brew install yt-dlp
brew install ffmpeg
brew install fprobe
```

## How to use
to use the script replace URL in the command with a youtube url

### mp4:
```
sh download.sh URL
```

### mp3:
```
sh download.sh URL mp3
```

### m4a:
```
sh download.sh URL m4a
```