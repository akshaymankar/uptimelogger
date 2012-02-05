#!/bin/sh
if [ "$(id -u)" != "0" ];
then
	echo "You must be root to install uptimelogger"
	exit 1
else
    cp uptimelogger.cron /etc/cron.d/uptimelogger
    cp uptimelogger.logrotate /etc/logrotate.d/uptimelogger
    cp lastuptime /usr/bin/
    cat /proc/uptime|awk '{print $1}' > /var/log/uptime
fi
