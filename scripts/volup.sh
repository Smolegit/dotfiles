#!/bin/bash 
amixer -q -D pulse sset Master 4%+
vol=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))
notify-send -i volume-2 -c volume -h int:value:$vol -h string:hlcolor:#fff "Volume Up :D" $vol 


