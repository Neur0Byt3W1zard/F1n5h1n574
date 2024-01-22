#!/bin/bash
clear
R="\e[31m"
P="\e[35m"
B="\e[34m"
G="\e[32m"
RS="\e[0m"
BO="\e[32m"
echo "─────────────────────────────────"
echo -e "< ${P}1N574 ${R}PH1N5H${RS} />"
echo "─────────────────────────────────"
echo -e "< ${P}1N574${RS} [${R}W3B${RS}]"
echo "─────────────────────────────────"
echo -e "[ ${P}1${RS}: ${B}localhost${RS} ]"
echo -e "[ ${P}2${RS}: ${R}IP_Wlan${RS} ]"
echo -e "[ ${P}3${RS}: ${G}IP_Chip${RS} ]"
echo "─────────────────────────────────"
echo -e -n "< ${R}PH1N5H${RS}: "
read P
echo "─────────────────────────────────"
#opção :1 localhost
if [ $P == "1" ];then
echo -e -n "< ${R}P0R74${RS}: "
read PT
#print URL
echo "─────────────────────────────────"
echo -e "<${B}537_L1NK${RS}> [ ${B}http${RS}://${R}localhost${RS}:${G}$PT${RS} ]"
echo "─────────────────────────────────"
php -S localhost:$PT
fi
#opção :2 IP_Wlan0
if [ $P == "2" ];then
#Obtendo o IP Wlan0
IP_Wlan=$(ifconfig wlan0 | awk '/inet / {print $2}')
#
echo -e -n "< ${R}P0R74${RS}: "
read PT
#print URL
echo "─────────────────────────────────"
echo -e "<${B}537_L1NK${RS}>[ ${B}http${RS}://${R}$IP_Wlan${RS}:${G}$PT${RS} ]"
echo "─────────────────────────────────"
php -S $IP_Wlan:$PT
fi
#opção IP_Chip
if [ $P == "3" ];then
IP_Chip=$(ifconfig rmnet_data0 | awk '/inet / {print $2}')
echo -e -n "< ${R}P0R74${RS}: "
read PT
#print URL
echo "─────────────────────────────────"
echo -e "<${B}537_L1NK${RS}>[ ${B}http${RS}://${R}$IP_Chip${RS}:${G}$PT${RS} ]"
echo "---------------------------------"
php -S $IP_Chip:$PT
fi
