
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
  if [ $1 -ne 0 ]
  then
    echo " error : $2 .... $R FAILED $N"
    exit 1
    else
      echo "$2 .... $G SUCCESS $N"
      fi
}

if [ $ID -ne 0 ]
then
  echo -e "$R Error: Please run with root access"
  exit 1
  else
    echo "$G you are the root user"
    fi

    yum install mysql -y &>> $LOGFILE

    VALIDATE $? "Installation MySQL"

    yum install git -y &>> $LOGFILE
    VALIDATE $? "installed git"