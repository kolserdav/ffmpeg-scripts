#! /usr/bin/bash

ffmpeg -f concat -safe 0 -i filelist.txt -c:v copy -c:a aac output.mp4