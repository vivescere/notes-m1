#!/usr/bin/env bash

CURRENT_WID=$(xdotool getwindowfocus)

WID=$(xdotool search --name "Mozilla Firefox")
xdotool windowactivate $WID
xdotool key F5

xdotool windowactivate $CURRENT_WID

