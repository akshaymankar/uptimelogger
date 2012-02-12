/*
 * =====================================================================================
 *
 *       Filename:  lastuptime.c
 *
 *    Description:  Reads /var/log/uptime.log and shows last uptime of system
 *
 *        Version:  1.0
 *        Created:  02/10/2012 11:13:50 AM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Akshay Mankar <itsakshaymankar@gmail.com>, 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#define UPTIME_LOG "/var/log/uptime.log"

int main(int argc,char *argv[])
{
    FILE *logfd;
    float tmp;
    int time,days,hours,mins,secs,res;
    logfd=fopen(UPTIME_LOG,"r");
    if(logfd==NULL)
    {
        fprintf(stderr,"Error opening log file !\n");
        return 1;
    }
    while(!feof(logfd))
    {
        res=fscanf(logfd,"%f",&tmp);
        if(res==0)
        {
            fprintf(stderr,"Bad uptime.log !\nPlease clear the file: %s\n",UPTIME_LOG);
            return 2;
        }
        time=(int)tmp;
    }
    days=time/(86400);
    time=time%86400;
    hours=time/3600;
    time=time%3600;
    mins=time/60;
    secs=time%60;
    if(days>0)
    {
        printf("%dd ",days);
    }
    printf("%dh %dm\n",hours,mins,secs);
    return 0;
}
