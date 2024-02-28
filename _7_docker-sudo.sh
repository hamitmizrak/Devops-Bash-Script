# create docker group
sudo groupadd docker

# add docker user to docker group
sudo usermod -aG docker $USER

# add docker group
newgrp docker

# run docker without sudo
docker ps

# docker version


sleep 1
sudo apt-get install bash-completion 
docker version
docker run hello-world
sleep 1
echo -e "Bağımlılıklar Yükleniyor"
#sudo apt install –f  

echo -e "Docker Pulling ... "  
sudo docker pull nginx
sudo docker pull httpd
sudo docker pull mysql
sudo docker pull mongo
sudo docker pull ubuntu
sudo docker pull centos

sleep 1
sudo docker login