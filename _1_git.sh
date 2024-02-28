#! /bin/bash
echo "GİT"

# User Variable
UPDATED="Güncelleme"
CLEANER="Temizleme"
INSTALL="Yükleme"
DELETED="Silme"
WHICH="Nerede ?"
VERSION=Version
COMMONINFORMATION=" Genel Bilgiler"

# System Variable
# Updated
sleep 2
echo -e "\n### ${UPDATED} ###"
echo -e "Güncelleme Başlandı... "  
sudo apt-get update 

# Common
sleep 2
echo -e "\n### ${COMMONINFORMATION} ###"
echo -e "Genel Bilgiler Başlandı... "  
echo -e "Ben Kimim ... "  
sudo whoami
echo -e "IP ... " 
sudo ifconfig
echo -e "Portlar ... " 
sudo netstat -nlptu
echo -e "Ram ... " 
sudo free -m

# Yükleme
sleep 2
echo -e "\n### ${UPDATED} ###"
echo -e "Yükleme Başlandı... "
sudo apt-get install git -y
git --version
git config --global user.name "hamitmizrak"
git config --global user.email "hamitmizrak@gmail.com"
git config --global -l 
sleep 1
echo -e "Bağımlılıklar Yükleniyor"
#sudo apt install –f 

# Temizlik
sleep 2
echo -e "\n######  Cache Temizleme  ######"
echo   -e "\n######"  $CLEANER "######"
echo -e "Temizlik Başlandı... "  
sudo apt-get clean
sudo apt-get autoremove -y
sleep 2
echo -e "\n######  BİTTİ ######"