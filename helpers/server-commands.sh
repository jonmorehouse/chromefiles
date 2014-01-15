function gearman_restart {

	id=$(ps -A | grep gearmand | awk '{ if (NR == 1) print $1 }')

	if [ $id != "" ]; then 
	
		kill "$id"
	fi 

	gearmand -d -p 4730
}

alias gearman_status='\watch -n 1 "gearadmin status"'

