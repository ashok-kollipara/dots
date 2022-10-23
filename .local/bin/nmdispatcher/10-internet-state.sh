#!/usr/bin/bash

# The script will receive two arguments $1 and $2 
# see man page for NetworkManager-dispatcher(8)

# $1 is device name for device or interface, for connection state change event this is empty
# $2 is action value for change event for corresponding value of $1 argument

interface=$1
action=$2

if [[ "$action" == 'connectivity-change' ]];
then
	case $CONNECTIVITY_STATE in 
		FULL)
			# dunst shows notifications for user called in this case its root 
			# for user <your username>, so switch desired user and his DISPLAY, DBUS

			sudo -u ak DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 3000 "Connected to Internet"

			;;
		NONE)
			sudo -u ak DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send -t 3000 -u critical "No Internet"
			;;
	esac
fi

:' 
Commented test block

echo $(date) > ~/working.txt
echo "arg 1 : $interface" >> ~/working.txt
echo "arg 2 : $action_status" >> ~/working.txt
echo "val of CONNECTIVITY_STATE : $CONNECTIVITY_STATE" >> ~/working.txt

'
