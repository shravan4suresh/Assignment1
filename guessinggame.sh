#!/usr/bin bash
#Assignmant for the unix study
function read_input
{
        echo "Please enter your guess"
        read enter
        entered_number=$enter
        actual=$( ls | wc -l )
}
read_input
until [[ $enter -eq $actual ]]
do
        if [[ $enter -gt $actual ]]
     then
         echo " Sorry as the number of files entered by you is greater than that of the files present in the current working directory so please cross-check and enter"
     else
         echo "Sorry as the number of files entered by you is less than that of files present in the current working directory so please cross-check "
     fi
        read_input
done
echo "Congrats as the number of files entered matches the number of files present in the current working directory and the correct number entered by you is $actual"