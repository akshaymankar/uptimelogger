UptimeLogger
=============

UptimeLogger is a cronjob, which continuously logs the `uptime` of the system
every minute to `/var/log/uptime`. At every boot this information of 
`lastuptime` is appended to the log file named `/var/log/uptime.log`
The logged uptime is precise upto one minute.

Installation
------------

Run the `install.sh` with root privileges.

Usage
-----

- It comes with a command `lastuptime` which shows previous uptime of the 
system.
- You can check all the previous uptime entries in `/var/log/uptime.log`

Copyright and Authors
---------------------
Copyright (C) 2012  Akshay Mankar <itsakshaymankar@gmail.com>
              2012  Muneeb Shaikh <iammuneeb@gmail.com>

License GPLv2: GNU GPL version 2 <http://gnu.org/licenses/gpl2.html>.
