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
    dunstify -t 2000 -a "Screen recording" "Screenrecord saved"
    killall -s SIGINT wf-recorder
  else
    wf-recorder -c h264_vaapi -t -f "$HOME/Videos/$(date +'%Y%m%dT%H%M%S').mp4"
  fi
fi
