#!/bin/bash

if [ -z "$1" ]  || [ -z "$2" ]; then
echo 'Usage: sess <any_string> <any_integer_duration>'
else
val=$1
duration=$2
echo $val | lolcat
timer ${duration}m -n ${val}
# spd-say --voice-type=female2 "'$duration' minutes '$val' session done"
notify-send -u critical -i face-yawn "Hey hey! 👋" "'$duration' minutes '$val' session done."
fi
