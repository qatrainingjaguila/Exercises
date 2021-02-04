#! /bin/bash

declare -a teams=("cloud","bde")
for team in ${teams[@]}
do
	echo ${team}
done


user=luke
trainer=jordan
echo "${user} > ${trainer}"

echo "Hello, please enter you favourite http status code"
read statuscode
echo ${statuscode}

if [ ${statuscode} -eq "203" ] 
then
	echo "yay"
fi

count=1
while [ ${count} -lt 10 ]
do
	echo "${count}"
	((count++))
done

echo "enter your team name"
read teams
for team in ${teams}
do
	echo ${team}
done
