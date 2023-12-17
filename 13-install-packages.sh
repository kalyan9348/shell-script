ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script stareted executing at $TIMESTAMP" &>> $LOGFILE

validate(){
  if [ $1 -ne 0 ]
  then
    echo " $2..is FAILED" &>> $LOGFILE
    exit 1
    else
      echo "$2 is SUCCESS" &>> $LOGFILE
      fi
}

if [ $ID -ne 0 ]
then
  echo " Please run with root user"
  exit 1
  else
    echo "you are the root user"
    fi

for package in $@
do
  yum list installed $package &>> $LOGFILE
  if [ $? -ne 0 ]
  then
    yum install $package -y &>> $LOGFILE
    validate $1 "Installation of $package"
    else
      echo "$package is already installed ...SKIPPING"
      fi
  done

