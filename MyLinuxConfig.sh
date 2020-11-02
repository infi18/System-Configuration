#!/bin/bash

# @Author : Siddhi Naik
#The Shell Script "MyLinuxConfig" runs a script that fetches user's name 
#And depicts the system details like :
#System run time, file system, ip addrress details, Memory capacity, network interfaces

hostname=`hostname`

echo "Please Enter your First and Last name"
read First Last
echo "Welcome: $First $Last ! " 

echo "Below are your details for $hostname :"
echo "------------------------------------------------------------------------------"
echo "Date and time of $hostname running: " 
date 
echo "------------------------------------------------------------------------------"
echo "OS release and its Linux Flavor of $hostname : " 
uname -r 
lsb_release -a
echo "------------------------------------------------------------------------------"
echo "Linux File System of $hostname : "
df -khT 
echo "------------------------------------------------------------------------------"
echo "Memory Capacity of $hostname : "
free -m 
echo "------------------------------------------------------------------------------"
echo "The IP address detail of the system of $hostname :"
ip addr show
echo "------------------------------------------------------------------------------"
echo "The System has been running for the following time period for $hostname :"
uptime
echo "-------------------------------------------------------------------------------"
echo "The Server's network interfaces of $hostname :"
ifconfig 
echo "-------------------------------------------------------------------------------"

exit 0
