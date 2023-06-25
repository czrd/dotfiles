#!/usr/bin/env bash

if [ "$1" == "status" ]; then
  if [ -n "$(pgrep wf-recorder)" ]; then
    echo ''
  else
    echo ''
  fi
fi

if [ "$1" == "toggle" ]; then
  if [ -n "$(pgrep wf-recorder)" ]; then
    killall wf-recorder
    dunstify -t 2000 -a "Screen recording" "Screenrecord saved"
  else
    wf-recorder -a -f "$HOME/Videos/$(date +'%Y%m%dT%H%M%S').mkv" &
  fi
fi
