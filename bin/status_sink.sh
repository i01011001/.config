#!/bin/bash

notify-send "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d 'Volume: '` "

