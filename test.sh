#!/bin/bash

# dunst shows notifications for user called in this case its root
# for user <your username>, so switch desired user and his DISPLAY, DBUS

sudo -u ak DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send "$@" 
