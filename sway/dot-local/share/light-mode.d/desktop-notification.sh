#!/usr/bin/env bash

ID=$(notify-send -ept 1 ".")

if [ $ID != 1 ]; then
  notify-send --app-name="darkman" --urgency=low --replace-id=1 --icon=weather-clear \
  "Switching to light mode"
fi
