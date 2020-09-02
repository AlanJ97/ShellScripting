#!/usr/bin/bash

#Printing parameters given by default with numbers
# using 0 ypu can acces to the name of the file
echo $1 $2 $3 '<- Thease are the given parameters in ' $0

#Parsing arguments as an array
#When parsing as an array, the first argument will take the position 0
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo $@ #<- this line has the same fuctin the that one above, but you use the previous
        # one if you want to specify which argument print
echo $# #<- this prints the number of parameters given