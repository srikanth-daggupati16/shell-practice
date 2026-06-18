#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0]; then
  echo "please enter root user access to run this script"
    exit 1
    fi

echo "installinf nginx"
  dnf install nginx -y
if [$? -ne 0]; then
  echo "nginx inxtallation failed"
    exit 1
else
   echo " nginx is installed successfully"
   fi

   echo "installinf MySQL"
  dnf install mysql -y
if [$? -ne 0]; then
  echo "MySQL installation failed"
    exit 1
else
   echo " MySQL is installed successfully"
   fi

   echo "installinf nodejs"
  dnf install nodejs -y
if [$? -ne 0]; then
  echo "nodejs installation failed"
    exit 1
else
   echo " nodejs is installed successfully"
   fi