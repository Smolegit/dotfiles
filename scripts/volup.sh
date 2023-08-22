#!/bin/bash 
amixer -q -D pulse sset Master 4%+
sleep 0.01
vol=$(awk -F"[][]" '/Mono:/ { print $2 }' <(amixer sget Master))
notify-send -i volume-2 -c volume -h int:value:$vol -h string:hlcolor:#ffffff "Volume Up :D" $vol 


