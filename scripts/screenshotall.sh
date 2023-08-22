
#!/bin/bash
scrot -F  'screenshot-%Y-%m-%d-%H_%M.png' -a 1600,0,1920,1080 -e 'mv $f ~/Pictures/Screenshots' && notify-send -i maximize "Screen Captured" "NOT copied to clipboard. Scrot is annoying."
