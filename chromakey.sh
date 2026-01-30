#!/bin/bash

ffmpeg -hwaccel cuda -i output1.mp4 -i image1.png \
-filter_complex "[0:v]hwupload_cuda,chromakey_cuda=color=0x21914b:similarity=0.15:blend=0,hwdownload[ckout];[1:v]scale=1920:1080[bg];[bg][ckout]overlay" \
-c:v h264_nvenc -preset fast -c:a copy output_video1.mp4