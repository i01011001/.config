#!/bin/bash
level=`cat /sys/class/power_supply/BAT1/capacity`
while true
do
  if [ $level -le 30 ]; then
    notify-send "Alert" "Battery is below 30%"
  fi
    sleep 60
done

