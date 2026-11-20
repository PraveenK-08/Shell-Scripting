#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/Shell-practice"
logs_file="$logs_folder/$0"
# echo $logs_folder
# echo $logs_file
mkdir -p $logs_folder

if [ ${user_id} -ne 0 ]; then
 echo "this program only run with root access only"
 exit 1
fi

# dnf list $1 -y
# echo ${?} 

for appname in $@
do
dnf list installed ${appname} &>> $logs_file
if [ $? -ne 0 ]; then
   dnf list $appname &>> $logs_file
   if [ $? -eq 0 ]; then
     dnf install $appname -y &>> $logs_file
     echo " ${appname} installed successfully " | tee -a  $logs_file
   else
     echo "Application not found, please check ${appname} correctly" | tee -a  $logs_file
   fi
else
   echo "Application already installed...skipping "
fi
done




