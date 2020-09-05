#!/bin/bash

#$$ prits the pid of the current script
#ctrl + z stops a process
#jill -9 pid kills a process


# trap "echo Exit was detected" 0
# echo "HEllo"
# exit 0


#This catches signal, except kill and stops SIGKILL or KILLSTOP
trap "echo Exit is detected " SIGINT

echo "pid  is $$"
while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT ++ ))
    echo $COUNT

done
exit 0