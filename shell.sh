#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ]; then
 echo "this program only run with root access only"
 exit 1
fi

