#!/bin/bash
while true
do
  level=`cat /sys/class/power_supply/BAT1/capacity`
  if [ $level -le 30 ]; then
    notify-send "Alert" "Battery is below 30%"
  elif [ $level -le 10]; then
    notify-send "Alert" "Your murdering the battery"
  fi
    sleep 60
done

