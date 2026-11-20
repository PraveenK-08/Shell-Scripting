#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/Shell-practice"
logs_file="$logs_folder/$0"
echo $logs_folder
echo $logs_file
# if [ ${user_id} -ne 0 ]; then
#  echo "this program only run with root access only"
#  exit 1
# fi

# # dnf list $1 -y
# # echo ${?} 

# for appname in $@
# do
# dnf list installed $appname 
# if [ $? -ne 0 ]; then
#    dnf list $appname
#    if [ $? -eq 0 ]; then
#      dnf install $appname -y
#      echo " ${appname} installed successfully "
#    else
#      echo "Application not found, please check ${appname} correctly "
#    fi
# else
   
#    echo "Application already installed...skipping  "
   
# fi
# done



