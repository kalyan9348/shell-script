#Install MySQL through shell script

ID=$(id -u)
if [ $ID -ne 0 ]
then
  echo "ERROR:: Please run the script with root access"
  else
    echo "you are the root user"
fi

yum install mysql-y