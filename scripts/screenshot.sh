#!/bin/bash
scrot -F 'screenshot-%Y-%m-%d-%H_%M.png' -s -f -e 'xclip -selection clipboard -t image/png -i $f & cp $f ~/Pictures/sstemp.png' && notify-send -i ~/Pictures/sstemp.png "Screenshot taken" "Copied to clipboard"
mv ~/*.png ~/Pictures/Screenshots
