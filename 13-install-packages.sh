#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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

done