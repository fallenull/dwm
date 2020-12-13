while true; do 
	xsetroot -name "$(xset -q | sed -rn 's/.*LED mask.*(.)[[:xdigit:]]{3}$/\1/p') | Memory $(free -m | grep '^Mem' | awk '{print "used: " $3"MB"}') | $( date +"%F %R" )"
	setxkbmap -layout us,ru -option grp:caps_toggle
	sleep 0.1
done &
exec dwm
