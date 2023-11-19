# Changes the DNS according to the session type.

change_dns () {
	if [ -f $SCRIPT_PATH/sess_includes/sess_dropins/change_dns/$1.conf ]; then
		echo "Changing DNS to $1!"

		# Create the resolved drop-in folder, if not present.
		mkdir -p /etc/systemd/resolved.conf.d

		# Link this file.
		sudo cp $SCRIPT_PATH/sess_includes/sess_dropins/change_dns/$1.conf /etc/systemd/resolved.conf.d/$1.conf

		# Reload the `systemd-resolved` service.
		sudo systemctl restart systemd-resolved
	else
		echo "Couldn't change DNS to $1 profile. Please create a $1.conf file here."
	fi
}

change_dns_shutdown () {
	# Remove the conf file.
	sudo rm -rf /etc/systemd/resolved.conf.d/$1.conf

	# Reload the `systemd-resolved` service.
	sudo systemctl restart systemd-resolved
}