#Scenario: Print the number is greater than 100 using if condition
number=$1

if [ $number -ge 100 ]
then
  echo "given number $number is greater than 100"
else
  echo "given number $number is Less than 100"
fi
