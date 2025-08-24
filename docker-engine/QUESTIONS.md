#### How to add an image to docker from local machine?

https://stackoverflow.com/questions/23935141/how-to-copy-docker-images-from-one-host-to-another-without-using-a-repository

docker save -o <path for generated tar file> <image name>
docker load -i <path to image tar file>

