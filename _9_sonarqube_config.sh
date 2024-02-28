# Docker Host (Elasticsearch)
docker ps 

sudo sysctl -w vm.max_map_count=524288
sudo sysctl -w fs.file-max=131072
ulimit -n 131072
ulimit -n 8192

docker ps
docker logs -f sonarqube 
ip addr | grep 192
curl localhost:9000
echo "Dikkat docker aynı networkta olmalıdır"