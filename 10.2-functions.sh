ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

if [ $ID -ne 0 ]
then
  echo -e "$R Error: Please run with root access"
  exit 1
  else
    echo -e "$G you are the root user"
    fi



    yum install mysql -y &>> $LOGFILE

    VALIDATE $? "Installation MySQL"

    yum install git -y &>> $LOGFILE

    VALIDATE $? "Installing GIT"

      VALIDATE(){
            if [ $1 -ne 0 ]
            then
                echo -e "ERROR:: $2 ... $R FAILED $N"
                exit 1
            else
                echo -e "$2 ... $G SUCCESS $N"
            fi
        }
