#!/bin/sh

# If 1Password is available, lock 1password silently in the background
if type 1password > /dev/null 2>&1; then
  1password --lock --silent &
fi

# Times the screen off and puts it to background
swayidle \
    timeout  300 'swaymsg "output * power off"' \
    resume 'swaymsg "output * power on"' &

# Locks the screen immediately
swaylock

# Kills last background task so idle timer doesn't keep running
kill %%
