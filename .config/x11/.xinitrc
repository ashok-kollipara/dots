#set wallpaper with feh with 
#random wallpaper picking python script
#in config file

~/.config/feh/.fehbg &

# set window transparency with picom

picom --experimental-backends &


# Statusbar loop
while true; do

    # get and format date
    dt="$(date +"[ %a ] [ %d %b ] [ %H:%M %p ]")"

    # Volume indicator
    vol="[ Vol : $(amixer -M sget 'Master'| egrep -o "[0-9]{1,3}%") ]"

    xsetroot -name " $vol $dt"

    sleep 0.5 # Update time every second

done &

# Start Notification server
exec dunst &

# Start Simple X hotkey Daemon
exec sxhkd &

# Start dwm
exec dwm
