#!/bin/bash
#script for cron


TIME=`date +%m`         # This Command will add date in Backup File Name.
FILENAME=backup-$TIME.tar.gz     # Setting file name
LOGNAME=backup-$TIME.log		 # Creating log file
DESDIR=/home/network/backup                   # Destination of backup file.

tar -cvpzf $DESDIR/$FILENAME /  > $LOGNAME  #Backup Command
