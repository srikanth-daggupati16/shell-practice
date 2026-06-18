USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-script/"
LOGS_FILE="/var/logs/shell-script/$0.Log"

if [ $USERID -ne 0 ]; then
  echo "please enter root user access to run this script" | tee -a $LOGS_FILE
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 installation failed" | tee -a $LOGS_FILE
        exit 1
    else
      echo "$2 is installed successfully" | tee -a $LOGS_FILE
    fi
}

mkdir -p $LOGS_FOLDER

echo "installing nginx"
dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "installing nginx"

echo "installing mysql"
dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "installing mysql"

echo "installing nodejs"
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "installing nodejs"