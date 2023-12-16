ID=$(id -u)

validate(){
  if [ $1 -ne 0 ]
  then
  echo "Error: Installing $2 is failed"
  exit 1
  else
    echo "Installing $2 is success"
    fi

}
if [ $ID - ne 0 ]
then
  echo "ERROR: Please login as root user"
  exit 1
  else
    echo "you are root user"
fi

yum install mysql -y

validate #this is given for calling the function which we created validate()
#new lines below
validate $? MYSQL
#here $?,mysql were repeated words and we created function validate() and
# calling validate() and passing 2 arguments into it

yum install git -y
validate $? git
# in validate(), $1 is $? which goes as first argument and git as second argument