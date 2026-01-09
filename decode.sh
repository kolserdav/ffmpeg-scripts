#! /usr/bin/bash

ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i input.mp4  -c:v h264_nvenc -preset p6 -b:v 7M -maxrate 8M -bufsize 16M -c:a copy output.mp4