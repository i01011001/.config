#!/bin/bash
notify-send.sh "Capacity" "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)`" 