#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config $HOME/.config/waybar/style.css"
trap "killall waybar" EXIT
while true; do
    waybar &
    pid=$!
    echo $pid
    inotifywait -e create,modify $CONFIG_FILES
    kill $pid
done
