#!/bin/dash
# Desenvolvido por Tchelo Noob
atualizar='\033[1;32m'
echo "$atualizar Updating repository ..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo "${k}████████╗ ██████╗██╗  ██╗███████╗██╗      ██████╗ ";
echo "${k}╚══██╔══╝██╔════╝██║  ██║██╔════╝██║     ██╔═══██╗";
echo "${k}   ██║   ██║     ███████║█████╗  ██║     ██║   ██║";
echo "${k}   ██║   ██║     ██╔══██║██╔══╝  ██║     ██║   ██║";
echo "${k}   ██║   ╚██████╗██║  ██║███████╗███████╗╚██████╔╝";
echo "${k}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ";
echo "${k} /_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/";
echo
echo "Do you want to install Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
echo "Downloading Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Unknown architecture"
esac

wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo "Command example (ngrok http 80\nOr ngrok for help)"
;;

n)
clear
echo "Ngrok not installed :("
echo
esac



