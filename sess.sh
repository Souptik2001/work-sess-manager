#!/bin/bash

drop_ins () {
	copy_me $1
}

# Copy the `copy_me()` drop-in and create your own drop-ins, and call them in the `drop_ins()` function.
copy_me () {
	echo "Doing $1!"
}

if [ -z "$1" ]  || [ -z "$2" ]; then
	echo 'Usage: sess <any_string> <any_integer_duration>'
else
	val=$1
	duration=$2
	drop_ins $1
	echo $val | lolcat
	timer ${duration}m -n ${val}
	notify-send -u critical -i face-yawn "👋" "'$duration' minutes '$val' session done."
fi