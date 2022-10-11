#!/bin/bash

#echo -e "\e[3J" # clear scrollback
stty sane
clear


trap "exec $0" EXIT



# restart with 

# terminate with  pkill -9 -f reload.sh

while true; do
	echo "Running gravescript at $(date)"
	screen -X -S gravekey quit || true
	screen -S gravekey sh -c "./gravekey_run.sh; sleep infinity"
    sleep infinity
done
