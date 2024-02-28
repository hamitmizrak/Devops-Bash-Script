#! /bin/bash
echo "JAVA JDK"

# User Variable
UPDATED="Güncelleme"
CLEANER="Temizleme"
INSTALL="Yükleme"
DELETED="Silme"
WHICH="Nerede ?"
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



# JAVA
sleep 2
echo   -e "\n###### JAVA ######"

# Java
echo   -e "\n###### JAVA"  $INSTALL "######"
echo   -e "\n######"  $WHICH "######"
which java
which git
sudo apt-get update
java --version
javac --version
sudo apt install openjdk-11-jdk -y
sudo add-apt-repository ppa:openjdk-r/ppa -y
# JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/"             
# vim deneme2.sh  #-s <(echo -e "/foo/\ndd\n:wq")
echo -e "#Java Home\nJAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64/bin/\" " >> ~/.bashrc 
# sudo apt-get update
#sudo apt-get upgrade -y

#sudo apt-get install wget unzip -y
#sudo apt-get install openjdk-17-jdk -y
#sudo apt-get install openjdk-17-jre -y
#sudo update-alternatives --config java
#java -version


echo $JAVA_HOME
# java version
echo   -e "\n######"  "java" $VERSION  "######"
java -version
javac -version
sleep 1
echo -e "Bağımlılıklar Yükleniyor"
sudo apt install –f 



#  Silme
sleep 2
echo -e "\n### ${DELETED} ###"
echo -e "\nJava'yı Silmek istiyor musunuz ? E/H " deletedResult

echo -e "Temizlik Başlandı... "
sudo update-alternatives --remove "java" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java"    
sudo update-alternatives --remove "javac" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/javac"    
sudo update-alternatives --remove "javaws" "/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/javaws"
sudo rm -r /usr/lib/jvm/
sudo apt-get clean
sudo apt-get autoremove -y


# Temizlik
sleep 2
echo -e "\n######  Cache Temizleme  ######"

echo   -e "\n######"  $CLEANER "######"
echo -e "Temizlik Başlandı... "  
sudo apt-get clean
sudo apt-get autoremove -y
java --version


sleep 2
echo -e "\n######  BİTTİ ######"
