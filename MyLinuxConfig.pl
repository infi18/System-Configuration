#!/usr/bin/perl
# @Author : Siddhi Naik 
#The Shell Script "MyLinuxConfig" runs a script that fetches user's name 
#And depicts the system details for the choice entered like :
#System run time, file system, ip addrress details, Memory capacity, network interfaces


print "Please enter your first name:\n"; 
$First = <STDIN>; 
chomp $First; 
print "Please enter your first name:\n"; 
$Last = <STDIN>; 
chomp $Last;
print "Welcome $First $Last \n";

$choice = 0;
$hostname = `hostname` ;
$date = localtime() ;
$Flav = `uname -a` ;
$FileSys = `df -khT` ;
$Mem = `free -m` ;
$IP = `ip addr show` ;
$up = `uptime` ;
$netInt = `ifconfig` ; 


while ( $choice ne 9 ) {
print "Which of the Following action do you want to execute ? \n
1. Display date and time of your script running.
2. Display the OS release and its Linux flavor.
3. Display the Linux filesystem structure.
4. Display the memory capacity.
5. Display the server IP address.
6. Display how long the server has been up and running.
7. Display the server network interfaces
8. Save the content to the file.
9.Exit. \n";
print"----------------------------------------------------\n";

$choice = <STDIN>;
chomp $choice;

if ($choice == 1)
{ 
    print "Date and Time Of Script Running for system $hostname";
    print "$date \n" ;
    print"---------------------------------------------------------------\n";
}
if ($choice == 2)
{ 
    print "OS Release and Linux Flavor for $hostname";
    $OS = `lsb_release -a`;
    print "\n $OS \n$Flav\n";
    print "----------------------------------------------------------------------------------\n";
}
if ($choice == 3)
{ 
    print "Linux File System for $hostname";
    print "$FileSys \n" ;
    print"---------------------------------------------------------------------------------\n";
}
if ($choice == 4)
{ 
    print "Memory Capacity of $hostname";
    print "$Mem \n"; 
    print"----------------------------------------------------------------------------------\n";
}
if ($choice == 5)
{ 
    print "The Server IP Address for $hostname";
    print "$IP \n" ;
    print"---------------------------------------------------------------------------------\n";
}
if ($choice == 6)
{ 
    print "The time the system has been up for $hostname";
    print "$up \n" ;
    print"----------------------------------------------------------------------------------\n";
}
if ($choice == 7)
{ 
    print "The Server Network Interface of $hostname";
    print "$netInt \n" ;
    print"----------------------------------------------------------------------------------\n";
}

if ($choice == 8)
{ 
    open ( my $fh, '>' , 'Report.txt' );

    print $fh "Date and Time Of Script Running for system $hostname";
    print $fh "$date \n" ;
    print $fh "OS Release and Linux Flavor for $hostname"; 
    $OS = `lsb_release -a`;
    print $fh "\n$OS \n$Flav \n";
    print $fh "Linux File System for $hostname";
    print $fh "$FileSys \n" ;
    print $fh "Memory Capacity of $hostname" ;
    print $fh "$Mem \n"; 
    print $fh "The Server IP Address for $hostname";
    print $fh "$IP \n" ;
    print $fh "The time system has been running for $hostname";
    print $fh "$up \n" ;
    print $fh "The Server Network Interfaces for $hostname";
    print $fh "$netInt \n";

    close $fh ; 

    print "Your Content Has been copied to the File \n" ;
}

if ($choice == 9)
{ 
    break;
}

}

print "Thank you for using the System ! \n";
