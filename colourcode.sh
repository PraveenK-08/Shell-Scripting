#!/bin/bash
RED='\e[31m'
GREEN='\e[1;32m'
logs_folder="/var/logs/Shell-practice"
logs_file="$logs_folder/$0"

validate() {
    if [ $1 -eq 0 ]; then 
        echo -e " ${2} is success$GREEN "
    
    else
        echo -e " ${2} is Failed$RED "
    
    fi 
}

dnf install ${appname} -y &>> -a $logs_file
validate