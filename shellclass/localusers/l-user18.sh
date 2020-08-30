#!/bin/bash

##This script shows the open network ports open on a systen
#Use -4 as an argument to a limit to tcpv4 ports  

netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk  -F ':' '{print $NF}'