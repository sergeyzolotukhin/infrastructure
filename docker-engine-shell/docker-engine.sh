echo '================================================================================================================'
echo 'Add docker repository'
echo '================================================================================================================'
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu `lsb_release -cs` test"

echo '================================================================================================================'
echo 'Install docker engine'
echo '================================================================================================================'
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

#printf '%80s\n' | tr " " "="
#sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#apt-cache madison docker-ce

#sudo apt-get install -y docker-ce=5:20.10.17~3-0~ubuntu-focal docker-ce-cli=5:20.10.17~3-0~ubuntu-focal containerd.io docker-compose-plugin
#sudo docker run hello-world