#!/bin/bash 
amixer -q -D pulse sset Master 4%-
sleep 0.01
vol=$(awk -F"[][]" '/Mono:/ { print $2 }' <(amixer sget Master))
notify-send -i volume-1 -c volume -h int:value:$vol -h string:hlcolor:#fff "Volume Down :D" $vol 
