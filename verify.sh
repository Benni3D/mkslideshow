#!/bin/sh

checkifnot() {
   [ -z "$(whereis "$1" | awk '{print $2}')" ]
   rv=$?
   [ $rv -eq 0 ] && echo "Please install $1 for mkslideshow$2" && FAILED=1
   return $rv
}

FAILED=0

checkifnot ffmpeg
checkifnot ffprobe
checkifnot zenity _gui
exit $FAILED
