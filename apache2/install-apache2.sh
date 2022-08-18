echo 'Apt update ======================================================================================================'
sudo apt-get update

echo 'Install tools ==================================================================================================='
sudo apt-get -y install mc

echo 'Apache install =================================================================================================='
sudo apt-get -y install apache2
sudo cp -r /vagrant/var/www/html/* /var/www/html
sudo cp -r /vagrant/etc/apache2/conf-available/ssl-params.conf /etc/apache2/conf-available/ssl-params.conf
sudo cp -r /vagrant/etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
sudo cp -r /vagrant/etc/ssl/certs/apache-selfsigned.crt /etc/ssl/certs/apache-selfsigned.crt
sudo cp -r /vagrant/etc/ssl/private/apache-selfsigned.key /etc/ssl/private/apache-selfsigned.key
sudo a2enmod ssl
sudo a2enmod headers
sudo a2enconf ssl-params
sudo a2ensite default-ssl
sudo apache2ctl configtest

echo 'Apache restart =================================================================================================='
sudo systemctl restart apache2