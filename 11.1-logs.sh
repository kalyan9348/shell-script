
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
  if [ $1 -ne 0 ]
  then
    echo " error : $2 FAILED"
    exit 1
    else
      echo "$2 SUCCESS"
      fi
}

if [ $ID -ne 0 ]
then
  echo "Error: Please run with root access"
  else
    exit 1
    echo "you are the root user"
    fi

    yum install mysql -y &>> $LOGFILE

    VALIDATE $? "Installation MySQL"

    yum install git -y &>> $LOGFILE
    VALIDATE $? "installed git"