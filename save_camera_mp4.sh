#!/bin/bash

# Usage: camera_to_mp4.sh <device> <width> <height> <fps> <out_file>
# Example: show_camera_stream.sh /dev/video1 1920 1080 30 output.mp4

DEV="$1"
W="$2"
H="$3"
FPS="$4"
OUT="$5"


# Show camera stream
gst-launch-1.0 -e v4l2src device=${DEV} ! video/x-raw,width=${W},height=${H},framerate=${FPS}/1 ! videoconvert ! x264enc ! mp4mux ! filesink location=$OUT

