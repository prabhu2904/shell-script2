#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R=\e[31m
GR=\e[32m
Y=\e[33m
N=\e[0m


VALIDATE(){ 
if [ $1 -ne 0 ]
then
    echo  "$2 ...failed"
 exit 1
else
    echo  "$2 ... sucess" 
fi    
}

if [ $ID -ne 0 ]
then
    echo -e "ERROR::$R please run this script with root access"
 exit 1 #you can give other than 0
else
    echo "Now you are a root user"
fi # it is reverse for fi , it means end of fi

yum install mysql -y &>> $TIMESTAMP

VALIDATE $? "installed msql"

yum install git -y &>> $TIMESTAMP

VALIDATE $? "installed git"