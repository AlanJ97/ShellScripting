#1/bin/bash

usage(){
    echo "You need to provide an argument : "
    echo "usage: $0 file_name"
}

#the brackets in here say that if the condition is true, it will go
#to the first opcion, if not, it goes to the second option
is_file_exist(){
    local file="$1"
    [[ -f $file ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" )
then
    echo "File found"
else
    echo "File not found"
fi