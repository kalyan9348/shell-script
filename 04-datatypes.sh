NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total:: $SUM"

Syntax to run this sh 04-datatypes.sh 10 20

#With Arguments
a=$1
b=$2

sum=$(($1 + $2))
echo "Total= $sum"

#without Arguments

a=10
b=20
sum=(a+b)
echo "Total= $sum"