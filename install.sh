#!/bin/sh
if [ "$(id -u)" != "0" ];
then
	echo "You must be root to install uptimelogger"
	exit 1
else
	echo "SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
@reboot root cat /var/log/uptime >> /var/log/uptime.log
* * * * * root uptime > /var/log/uptime" > /etc/cron.d/uptimelogger
fi


