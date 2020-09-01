#!/usr/bin/bash
#Tipyng words
# echo "Enter name: "
# read name
# echo "Hello, $name"

#Printing several things in the same sentence
# echo "Enter 3 things: "
# read thing1 thing2 thing3
# echo "Things : $thing1 $thing2 $thing3 "

#Askng for data in the same sentence that we tell the user what's this about
#Also with -s SILENT, you can hice whatever you're writing , like passwords
# read -p "Put your user in here: " user
# read -sp "Give me your pass: it is not showed " password
# echo
# echo "Your user is: $user "
# echo Your password is $password

#Print array
# echo "Enter names: " 
# read -a names
# echo "The names are: ${names[0]} , ${names[1]}"

#What happens when you do not supply a variable for you typing entrance
#It will be redirected to $REPLY
echo "Give me a name: "
read
echo "The given name was: $REPLY" 