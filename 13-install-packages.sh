#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
VALIDATE(){
if [ $1 -ne 0 ]
then
    echo -e "$2...$R failed $N"
else 
    echo -e "$2...$GR sucess $N"
fi       
}
if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

#echo "All arguments passed : $@"

for package in $@
do

    yum list installed $package
    if [ $? -ne 0 ]
    then
    yum install $package -y
    VALIDATE $? "installation of $package"
else
    echo -e "$package is already installed... $Y skipped $N"
fi
    
done          