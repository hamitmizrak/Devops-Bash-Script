!#/bin/bash

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
read -p "Dosyalara izin vermek istiyor musunuz  E/H ? " chmodResult
if [[ $chmodResult == "E" || $chmodResult == "e"  ]]
then
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
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi

# Updated
sleep 2
echo -e "\n### ${UPDATED} ###"
read -p "Güncelleme istiyor musunuz  E/H ? " updatedResult
if [[ $updatedResult == "E" || $updatedResult == "e"  ]]
then
    echo -e "Güncelleme Başlandı... "  
    sudo apt-get update && sudo apt-get upgrade -y
else
     echo -e "apt-get Update List Güncelleme Yapılmadı!!!\n "   
fi


# Common
sleep 2
echo -e "\n### ${COMMONINFORMATION} ###"
read -p "Genel Bilgiler istiyor musunuz  E/H ? " commonResult
if [[ $commonResult == "E" || $commonResult == "e"  ]]
then
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
else
     echo -e "Genel Bilgiler Gösterilmediı!!!\n "    
fi

# Yükleme
sleep 2
echo -e "\n### ${UPDATED} ###"
read -p "Yükleme istiyor musunuz  E/H ? " installingResult
if [[ $installingResult == "E" || $installingResult == "e"  ]]
then
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
else
     echo -e "Yükleme Yapılmadı!!!\n "   
fi


# system variable
sleep 2
echo -e "\n######  Port Yükleme ######"
read -p  "Port aktif etmek istiyor musunuz? E / H " portedResult
if [[ $portedResult == "E"  ||  $portedResult == "e" ]]
then
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
else 
    echo -e "Genel Güncelleme Yapılmadı!!!\n "    
fi 


# Temizlik
sleep 2
echo -e "\n######  Cache Temizleme  ######"
read -p  "Cache Temizleme istiyor musunuz? E / H " cleanResult
if [[ $cleanResult == "E"  ||  $cleanResult == "e" ]]
then
	echo   -e "\n######"  $CLEANER "######"
	echo -e "Temizlik Başlandı... "  
    sudo apt-get clean
    sudo apt-get autoremove -y
else 
    echo -e "Temizlik Yapılmadı!!!\n "    
fi


sleep 2
echo -e "\n######  BİTTİ ######"
