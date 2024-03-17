#!/bin/bash

notify-send.sh "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d 'Volume: '` "

