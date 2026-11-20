#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ]; then
 echo "this program only run with root access only"
 exit 1
fi

dnf install $1 -y
echo ${?} 

# for appname in $@
# do
# dnf list installed $appname
# if [ $? -ne 0 ]; then
#   dnf install $appname -y
#   echo " ${appname} installed successfully "
#   exit 1

# else
#    echo " ${appname} is skipped "
# fi
# done



