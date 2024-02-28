#! /bin/bash

echo "Genel Kurulumlar"

# User Variable
UPDATED="Güncelleme"
CLEANER="Temizleme"
INSTALL="Yükleme"
DELETED="Silme"
WHICH="Nerede ?"
COMMONINFORMATION=" Genel Bilgiler"
CHMOD="Dosya izinleri ver"

# System Variable


# Updated
sleep 2
echo -e "\n### ${CHMOD} ###"
echo -e "Yetkilendirme Başlandı... "  
sudo chmod +x _1_common.sh
sudo chmod +x _2_git.sh
sudo chmod +x _3_vs_code.sh
sudo chmod +x _4_JDK.sh
sudo chmod +x _5_Maven.sh
sudo chmod +x _6_Docker.sh
sudo chmod +x _7_Postgresql.sh
sudo chmod +x _8_SonarQube.sh
sudo chmod +x _14_AllVersion.sh
echo -e "Çalıştırmak ./_1_common.sh"  

# Updated
sleep 2
echo -e "\n### ${UPDATED} ###"

echo -e "Güncelleme Başlandı... "  
#sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update


# Common
sleep 2
echo -e "\n### ${COMMONINFORMATION} ###"

echo -e "Genel Bilgiler Başlandı... "  
    sleep 1
echo -e "Ben Kimim ... "  
sudo whoami
    sleep 1
echo -e "Linux Bilgileri ... "  
sudo uname
    sleep 1
echo -e "Dağıtım Bilgileri ... "  
lsb_release -a    
echo -e "Disk Alanı ... "  
sudo df -m
    sleep 1
echo -e "Cpu  ... "  
sudo cat /proc/cpuinfo
    sleep 1
echo -e "IP ... " 
sudo ifconfig
    sleep 1
echo -e "Portlar ... " 
sudo netstat -nlptu
    sleep 1
echo -e "Ram ... " 
sudo free -m



# Yükleme
sleep 2
echo -e "\n### ${UPDATED} ###"

echo -e "Yükleme Başlandı... "
pwd 
sudo apt-get update
sudo su -
sudo apt-get install vim -y
sudo apt-get install unrar -y 
sudo apt-get install rar
sudo apt-get install openssh-server -y
sudo apt install curl -y
sudo apt install net-tools
sudo apt-get install nginx -y
sudo apt install nodejs -y
node -v
npm -v



# system variable
sleep 2
echo -e "\n######  Port Yükleme ######"
echo   -e "\n######"  $PORT "######"
netstat -nlptu
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 9000
sudo ufw allow 9090
sudo ufw allow 8080
sudo ufw allow 5432
sudo ufw allow 3306
sudo ufw allow 1111
sudo ufw allow 2222
sudo ufw allow 3333
sudo ufw allow 4444



# Temizlik
sleep 2
echo -e "\n######  Cache Temizleme  ######"

echo   -e "\n######"  $CLEANER "######"
echo -e "Temizlik Başlandı... "  
sudo apt-get clean
sudo apt-get autoremove -y



sleep 2
echo -e "\n######  BİTTİ ######"
