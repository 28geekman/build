#!/bin/bash

# Kill already running bars
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch bar
polybar example &
