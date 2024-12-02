#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
 echo "ERROR:: please run this script with root access"
 exit 1 #you can give other than 0
else
 echo "Now you are a root user"
fi # it is reverse for fi , it means end of fi

yum install mysql -y

if [ $? -ne 0 ]
then
 echo "mysql is failed"
 exit 1
else
 echo "msql installation is sucess" 
fi

yum install git -y

if [ $? -ne 0 ]
then
 echo "ERROR :: installing git is failed"
 exit 1
else
 echo "installing git is sucess"
fi