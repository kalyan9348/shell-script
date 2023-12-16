#if we need to run the command in linux and need to get output means we need
#to use $(COMMAND NEED TO GIVE HERE)

DATE=$(date)

echo "Script started executing: ${DATE}"

USERNAME=KALYAN
PASSWORD=KALYAN123123
echo "Username is:$USERNAME, Password is:$PASSWORD"
#Syntax to run this :sh 03-variables.sh

echo "Please enter your username:: "

read -s USERNAME #the value entered above will be automatically atteched to USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD

#Syntax to run this : sh 03-variables.sh

DATE=(date)
echo "SCript starting executing: $DATE wrong  "

DATE=$(date)
echo "SCript starting date: $DATE"
