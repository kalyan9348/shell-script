DATE=$(date)

echo "Script started executing: ${DATE}"

USERNAME=KALYAN
PASSWORD=KALYAN123123
echo "Username is:$USERNAME, Password is:$PASSWORD"

echo "Please enter your username:: "

read -s USERNAME #the value entered above will be automatically atteched to USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD