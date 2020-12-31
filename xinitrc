#########
###DWM###
#########
while true; do
	xsetroot -name "$(xset -q | sed -rn 's/.*LED mask.*(.)[[:xdigit:]]{3}$/\1/p') | Memory $(free -m | grep '^Mem' | awk '{print "used: " $3"MB"}') | $( date +"%F %R" )"
	setxkbmap -layout us,ru -option grp:caps_toggle
	sleep 5
done &
DRI_PRIME=1 exec dwm

############
###XMonad###
############
#feh --bg-scale ~/.wallp.png
#setxkbmap -layout "us,ru"
#setxkbmap -option "grp:caps_toggle,grp_led:scroll"
#xsetroot -cursor_name left_ptr &
#exec xmonad

###############
###AwesomeWM###
###############
#setxkbmap -layout us,ru -option grp:caps_toggle
#DRI_PRIME=1 exec awesome
