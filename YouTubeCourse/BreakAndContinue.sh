#!/bin/bash

#BReak is used to break loops

for((i=0;i<10;i++));
do   
    if [[ $i -gt 5 ]]    
    then
        break
        
    fi
    echo $i
done

#COntinue is used to jump the next commands.
#When using -o, you must use only one brackets

for((i=0;i<10;i++));
do   
    if [ $i -eq 3 -o $i -eq 6 ]
    then
        continue        
    fi
    echo $i
done