while true; do
	xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "used: " $3"MB"}') | $( date +"%F %R" )"
	setxkbmap -layout us,ru -option grp:caps_toggle
	sleep 1
done &
exec dwm
