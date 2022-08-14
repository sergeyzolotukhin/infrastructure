#printf '%80s\n' | tr " " "="
echo '================================================================================================================'
echo 'Install docker engine'
echo '================================================================================================================'
#printf '%80s\n' | tr " " "="

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#apt-cache madison docker-ce

sudo apt-get install -y docker-ce=5:20.10.17~3-0~ubuntu-focal docker-ce-cli=5:20.10.17~3-0~ubuntu-focal containerd.io docker-compose-plugin
#sudo docker run hello-world