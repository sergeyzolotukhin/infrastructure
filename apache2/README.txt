sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache-selfsigned.key -out apache-selfsigned.crt -subj "/C=UA/ST=Kyiv/L=Kyiv/O=Home/CN=ubuntu-focal"

sudo openssl req -addext basicConstraints=critical,CA:TRUE,pathlen:1 -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache-selfsigned.key -out apache-selfsigned.crt -subj "/C=UA/ST=Kyiv/L=Kyiv/O=Home/CN=ubuntu-focal"

https://ubuntu-focal