#!/usr/bin/bash

# The script will receive two arguments $1 and $2 
# see man page for NetworkManager-dispatcher(8)

# $1 is device name for device or interface, for connection state change event this is empty
# $2 is action value for change event for corresponding value of $1 argument
#
# both symlink and file to be owned by root:root

interface=$1
action=$2

pacman_update () {

    sleep 2

    val=$(cat /var/log/pacman.log | grep install | tail -1 | cut -d ' ' -f 1 | tr -d '[]')

    t1=$(date +%j -r /var/log/pacman.log)

    t2=$(date +%j -d $val)

    t3=$(date +%j)

    refresh_gap=$(( t3 - t1 ))

    update_gap=$(( t3 - t2 ))

    if [[ $update_gap < 7 ]];
    then
	    user_notify -u low "$refresh_gap days since last refresh" "$update_gap days since last update"


    else

	    user_notify -u critical "$update_gap days since last update" "Run package_update from dmenu"
    fi

}

if [[ "$action" == 'connectivity-change' ]];
then
	case $CONNECTIVITY_STATE in 
		FULL)
			# check user_notify script in /usr/local/bin and read comments in it
			# user_notify runs notify-send via ak user display even when invoked by root

			pacman_update

			;;
		NONE)
			#parked for disconnected state
			;;
	esac
fi

