#!/bin/bash

pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

one(){

	local BACKUPDIR
	read -p "Enter the file you wish to backup " BACKUPDIR
	 CURRTIME=`date +%m`           # This Command will add date in Backup File Name. - Tried several variations, couldnt get it to work.
	FILENAME=backup-$CURRTIME.tar.gz     # Setting the filename.
	LOGNAME=backup-$CURRTIME.log		 # Creating log file
	DESDIR=/home/backup                   # Destination of backup file.
	echo $CURRTIME 
	echo $FILENAME

	sudo tar -cvpzf $DESDIR/$FILENAME $BACKUPDIR> $LOGNAME  #Backup Command
#END 
        pause
}
 
# do something in two()
two(){
	sudo crontab -e 
        pause
}
 
# do something in three()
three(){
	cd /home/backup
	ls
	read -p "Select a file you wish to restore " RESTOREFILE
	
	read -p "Select a location to restore to " RESTORELOCATION
	
	sudo tar -xvpzf $RESTOREFILE -C $RESTORELOCATION
	
	
    pause
}
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Backup"
	echo "2. Cron Set Up"
	echo "3. Restore"
	echo "4. Exit"
}
read_options(){
	local choice
	read -p "Enter choice [ 1 - 4] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
while true
do
 
	show_menus
	read_options
done
