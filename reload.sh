#!/bin/bash

#echo -e "\e[3J" # clear scrollback
clear


#trap "exec $0" EXIT



# restart with 

# terminate with  pkill -9 -f reload.sh

while true; do
        echo "Running gravescript at $(date)"
        running_processes="$(pgrep -f reload.sh)"
        for i in $running_processes
        do
        	pkill -P $i
        	echo "killed $i"
        done
        pkill -f gravekey_run.sh
        ./gravekey_run.sh
        sleep infinity
done
