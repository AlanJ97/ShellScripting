#!/usr/bin/bash

num1=4
num2=6

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