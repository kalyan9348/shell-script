#Install MySQL through shell script

ID=$(id -u)
if [ $ID -ne 0 ]
then
  echo "ERROR:: Please run the script with root access"
  else
    exit 1
    echo "you are the root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi