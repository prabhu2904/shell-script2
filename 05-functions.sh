#!/bin/bash

ID=$(id -u)

VALIDATE(){ 
if [ $1 -ne 0 ]
then
    echo "$2 ...failed"
 exit 1
else
    echo "$2 ...sucess" 
fi    
}

if [ $ID -ne 0 ]
then
    echo "ERROR::please run this script with root access"
 exit 1 #you can give other than 0
else
    echo "Now you are a root user"
fi # it is reverse for fi , it means end of fi

yum install mysql -y

VALIDATE $? "installed msql"

yum install git -y

VALIDATE $? "installed git"