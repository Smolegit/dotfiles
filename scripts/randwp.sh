#!/bin/bash
i=0

random_array_element() {
    local arr=("$@")
    nitrogen --set-zoom-fill "${arr[RANDOM % $#]}"
}

for file in ~/Pictures/Wallpapers/*; do
    fileList[$i]=$file
    ((i++)) 
done
random_array_element "${fileList[@]}"
