#!/usr/bin/bash

num1=4
num2=6

#FOR INTEGERS
echo "INTEGERS"
echo $((   num1 + num2  ))
echo $((  num1 - num2  ))
echo $((  num1 * num2  ))
echo $((  num1 / num2  ))
echo $(( num1 % num2  ))

#THis is a diffenret way to di it using expr
echo $(expr   $num1 + $num2  )
echo $(expr  $num1 - $num2  )
echo $(expr  $num1 \* $num2  )
echo $(expr  $num1 / $num2  )
echo $(expr $num1 % $num2  )

#FOR FLOATS
#scale must be used when you use division
#You can replace with variables
echo "FLOATS"
echo "20.5 + 5" | bc
echo "20.5 - 5" | bc
echo "20.5 * 5" | bc
echo "scale=2; 20.5 / 5" | bc
echo "20.5 % 5" | bc

#-l calls the math library, for square root
num=29
echo "scale =2 ; sqrt($num)" | bc -l
echo "scale =2 ; 4 ^ 5" | bc -l