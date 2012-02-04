#!/bin/sh
user=$(whoami)
if [  "$user" != "root" ];
then
	echo "You must be root to install uptimelogger"
	echo $user; 
	exit 1
else
	echo "SHELL=/bin/sh\
	PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin\
	* * * * * root uptime > /var/log/uptime" > /etc/cron.d/uptimelogger

	echo "#! /bin/sh\
	PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin\
	mv /var/log/uptime /var/log/uptime.1" > /etc/init.d/uptimelogger

	ln -s /etc/init.d/uptimelogger /etc/rcS.d/S99uptimelogger;
fi


