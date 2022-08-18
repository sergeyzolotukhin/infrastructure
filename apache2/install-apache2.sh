echo 'Apt update ======================================================================================================'
sudo apt-get update

echo 'Apache install =================================================================================================='
sudo apt-get -y install apache2
sudo cp -r /vagrant/var/www/html/* /var/www/html

echo 'Install tools ==================================================================================================='
sudo apt-get -y install mc

echo 'Apache install =================================================================================================='
sudo systemctl restart apache2