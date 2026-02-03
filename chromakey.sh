#!/bin/bash

ffmpeg -hwaccel cuda -i input.mp4 -i image.png \
 -filter_complex "[0:v]hwupload_cuda,chromakey_cuda=color=0x21914b:similarity=0.15:blend=0,hwdownload[ckout];[1:v]scale=1920:1080[bg];[bg][ckout]overlay" \
 -c:v h264_nvenc -preset fast -b:v 22000k -b:a 192k output.mp4
