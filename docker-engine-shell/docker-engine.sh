echo '================================================================================================================'
echo 'Add docker repository'
echo '================================================================================================================'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu `lsb_release -cs` test"

echo '================================================================================================================'
echo 'Install docker engine'
echo '================================================================================================================'
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
#sudo apt-get -y install docker-compose-plugin

echo 'Enable remote access to docker'
sudo cp /vagrant/lib/systemd/system/docker.service /lib/systemd/system/docker.service

echo 'Restart docker'
sudo systemctl daemon-reload
sudo systemctl restart docker
#sudo systemctl status docker

echo '================================================================================================================'
echo 'Docker engine has installed'
echo '================================================================================================================'
