#### How to add an image to docker from local machine?

https://stackoverflow.com/questions/23935141/how-to-copy-docker-images-from-one-host-to-another-without-using-a-repository
https://blog.devops.dev/docker-compose-export-save-images-and-move-to-another-machine-66ea8df01dea

docker save -o <path for generated tar file> <image name>
docker load -i <path to image tar file>

