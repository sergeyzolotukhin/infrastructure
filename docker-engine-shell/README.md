https://docs.docker.com/storage/volumes/

https://hub.docker.com/_/registry

# How to run docker registry

https://techtutorialsite.com/docker-tag-image/
https://hub.docker.com/_/registry
https://github.com/docker-library/docs/tree/master/registry

https://github.com/docker/distribution-library-image/blob/master/Dockerfile
https://github.com/distribution/distribution/releases/download/v2.8.1/registry_2.8.1_linux_amd64.tar.gz
https://github.com/docker-archive/docker-registry
https://docs.docker.com/registry/spec/api/#:~:text=Introduction,images%20and%20enable%20their%20distribution.

=======================================================================================================================
docker images -a
docker image rm szolotukhin/hello-world
docker push localhost:5000/szolotukhin/hello-world

docker run localhost:5000/szolotukhin/hello-world
docker container ls -a
docker rm registry-1
docker container rm mystifying_euclid
=======================================================================================================================
How to Run Docker in Verbose Mode?

https://linuxhint.com/run-docker-verbose-mode/

dictionary
=======================================================================================================================

### Docker Image Name
Docker Image actually does not have a name per se. 
It has an ID, Repository and a Tag (which, according to Docker docs, stands by the way for Target Image, not the English word tag). 
So, each time we refer to Docker Image name (either creating, running, removing, pulling it or etc.) 
we actually refer to the Image Repository:Tag (target image).
We just quite often happen to omit the tag part (by just writing the repository name, which we consider as an Image name), 
and that’s when docker assumes default tag which is :latest (i.e. Target image latest)

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#### How to add aliases to bashrc
https://askubuntu.com/questions/211716/add-environment-variable-to-bashrc-through-script
https://www.cyberciti.biz/faq/create-permanent-bash-alias-linux-unix/

#### How to run nginx in docker
docker run -it --rm -p 8081:80 --name web nginx