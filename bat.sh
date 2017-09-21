#!/bin/bash
#=================================================#
#     Caligula's battery notification script.     #
#=================================================#
# To list battery & adapter: $ ls -1 /sys/class/power_supply/

ICON="/usr/share/icons/Adwaita/16x16/status/battery-caution.png"
while true
do
    BAT=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/{print $NF}'`
    echo $BAT
    if [ "$BAT" = 1% ] || [ "$BAT" = 2% ] || [ "$BAT" = 3% ] || [ "$BAT" = 4% ] || [ "$BAT" = 5% ]
    then
        dunstify --urgency=critical --icon=$ICON "BATTERY IS LOW!"
        sleep 60
    elif [ "$BAT" = 6% ] || [ "$BAT" = 7% ] || [ "$BAT" = 8% ] || [ "$BAT" = 9% ] || [ "$BAT" = 10% ]
    then
        dunstify --urgency=critical --icon=$ICON "BATTERY IS LOW!"
        sleep 60
    elif [ "$BAT" = 11% ] || [ "$BAT" = 12% ] || [ "$BAT" = 13% ] || [ "$BAT" = 14% ] || [ "$BAT" = 15% ]
    then
        dunstify --urgency=critical --icon=$ICON "BATTERY IS LOW!"
        sleep 60
    elif [ "$BAT" = 16% ] || [ "$BAT" = 17% ] || [ "$BAT" = 18% ] || [ "$BAT" = 19% ] || [ "$BAT" = 20% ]
    then
        dunstify --urgency=critical --icon=$ICON "BATTERY IS LOW!"
        sleep 60
    elif [ "$BAT" = 21% ] || [ "$BAT" = 22% ] || [ "$BAT" = 23% ] || [ "$BAT" = 24% ] || [ "$BAT" = 25% ]
    then
        dunstify --urgency=critical --icon=$ICON "BATTERY IS LOW!"
        sleep 60
    else
        sleep 60
    fi
done
