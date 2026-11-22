#!/bin/bash
RED='\e[31m'
GREEN='\e[1;32m'
logs_folder="/var/log/Shell-practice"
logs_file="$logs_folder/$0"

mkdir -p $logs_folder

validate() {
    if [ $1 -eq 0 ]; then 
        echo -e " ${2} is ${GREEN}success"
    
    else
        echo -e " ${2} is ${RED}Failed "
    
    fi 
}

dnf install ${appname} -y &>> $logs_file

validate $? " ${appname} installation "