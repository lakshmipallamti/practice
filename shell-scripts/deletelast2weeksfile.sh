#!/bin/bash

need_to_delete_files=/home/ec2-user/app.logs

DATE=$(date +%F)
script_name=$0
mkdir -p /home/ec2-user/shell_script_logs
LOGFILE="/home/ec2-user/shell_script_logs/$0-$DATE.logs"

deleted_files=$(find $need_to_delete_files -name "*.log" -type f -mtime +14) 



while read -r line
do
	echo "deleting $line" &>> LOGFILE
	rm -f $line
done <<< $deleted_files

