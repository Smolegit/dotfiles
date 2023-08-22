#!/bin/sh         

BLANK='#00000000'
CLEAR='#ffffffcc'
DEFAULT='#ff00ffcc'
TEXT='#ffffffbb'
TEXT2='ffffff77'
WRONG='#99493f88'
VERIFYING='#bb00bbbb'

i=0

random_array_element() {
    local arr=("$@")
    Wallpaper="${arr[RANDOM % $#]}"
}

for file in ~/Pictures/Wallpapers/*; do
    fileList[$i]=$file
    ((i++))
done
random_array_element "${fileList[@]}"

convert -resize 1920x1080 $Wallpaper ~/Pictures/lockscreen.jpg
mogrify -gamma 0.7 ~/Pictures/lockscreen.jpg
i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$TEXT2 \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$TEXT2 \
--line-color=$BLANK          \
--separator-color=$CLEAR     \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT2           \
--layout-color=$TEXT         \
--keyhl-color=$CLEAR \
--bshl-color=$WRONG          \
\
--screen 1                   \
--image ~/Pictures/lockscreen.jpg \
--fill \
\
--ring-width 9.0 \
--ignore-empty-password      \
--clock                      \
--indicator                  \
--force-clock \
--time-str="%H:%M"        \
--time-pos="960:150" \
--time-size=85\
--time-font="Iosevka Nerd Font" \
--date-str="%A, %Y-%m-%d"       \
--date-size=30  \
--date-pos="960:200" \
--date-font="Iosevka Nerd Font" \
\
--greeter-text="" \
--greeter-size=60 \
--greeter-pos="955:560" \
--greeter-color=$TEXT2 \
--greeter-font="Iosevka Nerd Font" \
\
--verif-text="" \
--wrong-text="" \
--noinput-text="" \
