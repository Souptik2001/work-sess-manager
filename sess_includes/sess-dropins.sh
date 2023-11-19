source $SCRIPT_PATH/sess_includes/sess_dropins/copy-me.sh
source $SCRIPT_PATH/sess_includes/sess_dropins/change-dns.sh

drop_ins () {
	copy_me $1
	change_dns $1
}

drop_ins_shutdown () {
	change_dns_shutdown $1
}
