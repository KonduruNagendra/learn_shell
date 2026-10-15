#!/bin/bash  # this is shebang/hashbang
## How will you execute a command and take output into variable
#start_time=$(date +%S)
person1=$1  #no space after equal
person2=$2
start_time=$(date +%s)
echo "script started execution at :$start_time"
echo " $person1 :: $person2 How are you ?"
echo " $person2 :: $person1 iam good how are you ?"
echo " $person1 :: $person2 iam good too ?"
echo " HURRY ! $person1 $person2 we are friends !"
sleep 20
end_time=$(date +%s)
echo "script completed execution at :$end_time"
total_time=$(($end_time-$start_time))
echo "Time taken to execute script $total_time in seconds"