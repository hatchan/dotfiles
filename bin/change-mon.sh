#!/bin/bash

FORCE=false

while getopts ":f" opt; do
  case $opt in
    f)
      FORCE=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

MONITOR_FILE=$HOME/.monitors
COUNT=$(xrandr | grep " connected" | wc -l)

[ ! -f "$MONITOR_FILE" ] && echo "0" > "$MONITOR_FILE"

MONITOR_COUNT=$(cat "$MONITOR_FILE")
if [ "$FORCE" == "true" ]; then
  echo Forcing monitor change
elif [ "$COUNT" -eq "$MONITOR_COUNT" ]; then
  echo Detected monitors match $COUNT, skipping
  exit
else
  echo $COUNT > "$MONITOR_FILE"
  echo Found $COUNT monitors, adjusting
fi

AMS_OFFICE=$(hwinfo --monitor --short | grep "DELL U2715H")

if [ ! -z "$AMS_OFFICE" ]; then
  echo "Switching to AMS Office Monitor"
  xrandr --dpi 108
  echo "Xft.dpi: 108" | xrdb -merge
  xrandr --output DP-1 --auto --primary
  xrandr --output eDP-1 --off
else
  echo "Switching to laptop"
  xrandr --dpi 192
  echo "Xft.dpi: 192" | xrdb -merge
  xrandr --output eDP-1 --auto --primary
  xrandr --output DP-1 --off
fi
