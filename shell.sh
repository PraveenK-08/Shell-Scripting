#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ]; then
 echo "this program only run with root access only"
 exit 1
fi

for appname in $@
do
dnf list installed $appname
if [ $? -ne 0 ]; then
  dnf install $appname -y
  echo " ${1} installed successfully "
  exit 1

else
   echo " ${1} is skipped "
fi
done



