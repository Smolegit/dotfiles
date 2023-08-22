#!/bin/bash
killall polybar
if [[ $(xrandr | grep " connected" -c) == 2 ]]
then
	polybar bar
else 
	polybar laptopbar
fi

