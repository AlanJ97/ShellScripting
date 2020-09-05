#!/bin/bash

#set -x <- this uncomment, also actiivates the debug
#YOu can debud using bash -x ./NAMEFILE whenever you run the script
#You can set an -x at the first line of the script -> #!/bin/bash -x
file=/home/alan/Documents/Shell/ShellScripting/YouTubeCourse/test2.txt
#set +x <- this disables debugging in this line and the next ones
trap "rm -f $file && echo deleted ; exit" 0 2 15

echo "pid is $$"

while (( COUNT < 10 ))
do
    sleep 5
    (( COUNT ++ ))
    echo $COUNT
done
exit 0