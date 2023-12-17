ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo -e "$R Error: Please run with root access"
  exit 1
  else
    echo -e "$G you are the root user"
    fi

    VALIDATE(){
        if [ $1 -ne 0 ]
        then
            echo -e "ERROR:: $2 ... $R FAILED $N"
            exit 1
        else
            echo -e "$2 ... $G SUCCESS $N"
        fi
    }

    yum install mysql -y &>> $LOGFILE

    VALIDATE $? "Installation MySQL"

    yum install git -y &>> $LOGFILE

    VALIDATE $? "Installing GIT"
