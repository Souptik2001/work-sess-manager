#!/bin/bash

if [ -z "$1" ]  || [ -z "$2" ]; then
	echo 'Usage: sess <any_string> <any_integer_duration>'
else
	val=$1
	duration=$2
	echo $val | lolcat
	timer ${duration}m -n ${val}
	notify-send -u critical -i face-yawn "👋" "'$duration' minutes '$val' session done."
fi
