!/bin/bash

# Usage: show_camera_stream.sh <device> <width> <height> <fps>
# Example: show_camera_stream.sh /dev/video1 1920 1080 30

DEV="$1"
W="$2"
H="$3"
FPS="$4"


# Show camera stream
gst-launch-1.0 -v v4l2src device=$DEV! 'video/x-raw,width=$W,height=$H,framerate=$FPS/1' ! videoconvert ! autovideosink

