#!/bin/bash
#script for touch/date

TIME=`date +%d%m%Y`         # This Command will add date in Backup File Name.
FILENAME=$TIME.dat
cd /home/network
touch /home/network/$FILENAME

