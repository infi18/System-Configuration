#!/bin/bash

# @Author : Siddhi Naik, CWID: A20444173
#The Shell Script below runs using the "getopts" command
#user can choose one option and the script will display the system details for that option.


hostname=`hostname`


while getopts abcdef options 2>/dev/null 
do
    case $options in
        a) echo "OS release and its Linux Flavor of $hostname :" 
            uname -r
            lsb_release -a
            ;;

        b) echo "Linux File System of $hostname : " 
            df -khT 
            ;;

        c) echo "Memory Capacity of $hostname : "
            free -m
            ;;

        d) echo "The IP address detail of the system of $hostname :"
            ip addr show
            ;; 

        e)  echo "The System has been running for the following time period for $hostname :"
            uptime
            ;;

        f) echo "The Server's network interfaces of $hostname :"
            ifconfig 
            ;;

        *) echo "You have not entered the correct option! "
            echo "Options are a,b,c,d,e,f and Usage :  myscript.sh -a"
            ;;

    esac
done
