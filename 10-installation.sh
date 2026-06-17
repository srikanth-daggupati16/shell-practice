#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0]; then
  echo "please enter root user access to run this script"
    exit 1
else
  echo "you do not have root user access to run this Script"
    exit 1
    fi
  dnf install nginx -y
   echo " nginx is installed successfully"