#!/bin/bash
#It executes something until the ocndition is false

#Looping gven numbers
# for VAR in 1 2 3 4 5
# do
#     echo $VAR
# done

#Looping a list of numbers
# for VAR in {1..10}
# do
#     echo $VAR
# done

#Looping a list of numbers, jumping certain amount of them by giving the increasing value
# for VAR in {1..10..2}
# do
#     echo $VAR
# done

# for VAR in {10..1..-2}
# do
#     echo $VAR
# done

#Looping with another way
# for((i=0;i<10;i++));
# do
#     echo $i
# done

#COMMANDS
#Looping trough commands
# for VAR in ls pwd date
# do

#     echo --------- $VAR
#     $VAR
# done

# * check for everything in the current folder
for VAR in *
do
    if [[ -d $VAR ]]
    then
        echo $VAR
    fi
done

