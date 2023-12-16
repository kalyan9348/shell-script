ID=$(id -u)

validate(){
  if [ $? -ne 0 ]
  then
  echo "Error: Installing is failed"
  exit 1
  else
    echo "Installing success"

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
