#!/bin/bash

SCRIPT_PATH="$(dirname "$(which "$0")")"

source $SCRIPT_PATH/sess_includes/sess-dropins.sh

if [ -z "$1" ]  || [ -z "$2" ]; then
	echo 'Usage: sess <any_string> <any_integer_duration>'
else
	val=$1
	duration=$2
	[[ $(type -t drop_ins) == function ]] && drop_ins $1
	echo $val | lolcat
	timer ${duration}m -n ${val}
	notify-send -u critical -i face-yawn "👋" "'$duration' minutes '$val' session done."
fi