#!/bin/bash
#Defininmos las variables

BACKUP_SRC="/home/markez"
BACKUP_DST="/backups"
BACKUP_DATE=$(date +%Y%m%d%H%S)
BACKUP_FILENAME="backup_$BACKUP_DATE.tar.gz"
mkdir -p "$BACKUP_DST/$BACKUP_DATE"
#ARCHIVE THE SOURCE DIRECTORY
tar -czf "$BACKUP_DST/$BACKUP_DATE/$BACKUP_FILENAME" "BACKUP_SRC"

#VERIFY THE BACK WAS CREATED
if [ $? -eq 0 ]; then
	echo "back succes: $BACKUP_FILENAME"
else
	echo "back failed"
fi




