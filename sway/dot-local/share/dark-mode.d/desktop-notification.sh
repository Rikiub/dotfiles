#!/usr/bin/env sh

ID=$(notify-send -ept 1 ".")

if [ $ID != 1 ]; then
  notify-send --app-name="darkman" --urgency=low --replace-id=1 --icon=weather-clear-night \
  "Switching to dark mode"
fi
