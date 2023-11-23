#!/bin/bash

if [[ $# -eq 1 ]];then
   if [[ -e $1 ]] && [[ -d $1 ]] && [[ "${1: -1}" == "/" ]];then
       . ./info.sh
       START=$(date +%s%3N)
       all_folders $1
       top_big_folders $1
       total_files $1
       dif_file_types $1
       top_ten_files $1
       top_ten_exec_files $1
       STOP=$(date +%s%3N)
       RESULT=$((STOP - START))
       printf "Script execution time (in seconds)= 0.%d\n" $RESULT
   else
       echo "There way not exist!"
   fi
else
   echo "Only one parametr! Example ./main.sh /var/log/"
fi