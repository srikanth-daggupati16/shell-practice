#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
  echo "please enter root user access to run this script"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 installation failed"
        exit 1
    else
      echo "$2 is installed successfully"
    fi
}
echo "installing nginx"
  dnf install nginx -y
  VALIDATE $? "installing nginx"

echo "installing mysql"
dnf install mysql -y
VALIDATE $? "installing mysql"

echo "installing nodejs"
dnf install nodejs -y
VALIDATE $? "installing nodejs"