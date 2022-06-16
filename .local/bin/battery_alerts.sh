#!/bin/bash

full_icon="/home/uma/.config/pix/icons/full_battery.jpg"
low_icon="/home/uma/.config/pix/icons/low_battery_plugin2.png"

full_sound="/home/uma/.config/sounds/positive_full_notification.wav"
low_sound="/home/uma/.config/sounds/error-fail-notification.wav"

full_level=98
warning_level=15

while true
do
    charge_state=$(cat /sys/class/power_supply/BAT1/status)
    bat_level=$(cat /sys/class/power_supply/BAT1/capacity)


    case "$charge_state" in

        Charging)

            if [[ $bat_level -ge $full_level ]];
            then
		sudo -u uma DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u low -i $full_icon "Battery Full" "Disconnect Adapter !"
                #aplay $full_sound
                mpv --really-quiet $full_sound
                sleep 2m
            fi
            ;;

        Discharging)

            if [[ $bat_level -le $warning_level ]];
            then
                sudo -u uma DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -u critical -i $low_icon "Low Battery" "Plug in Adapter !"
                #aplay $low_sound
                mpv --really-quiet $low_sound
                sleep 2m
            fi
            ;;
    esac

    sleep 3m

done

