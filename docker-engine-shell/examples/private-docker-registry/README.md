https://linuxhint.com/setup_docker_private_registry_ubuntu/

http://192.168.56.2:5000/v2/_catalog

docker image rm 052fcc99291d
docker images

docker pull localhost:5000/test-image
docker run localhost:5000/test-image

docker container ls
docker container ls -a

docker container rm 5918138a92c7
docker stop 36956703fa4b