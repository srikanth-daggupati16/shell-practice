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