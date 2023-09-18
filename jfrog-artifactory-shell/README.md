# How to connect

http://192.168.56.2:8082/

Default:
    user: admin
    password: password

Current:
    user: admin
    password: Szolotukhin1


# How to run

cd /opt/jfrog-artifactory/artifactory/app/bin# 
./artifactory.sh

# How to access

http://localhost:8081/artifactory

Username: admin
Password: password

# Others

[Install Ubuntu](https://computingforgeeks.com/how-to-install-jfrog-artifactory-on-ubuntu-linux/)
[Documentation](https://www.jfrog.com/confluence/display/JFROG/JFrog+Artifactory)
[Maven Repository Manager](https://maven.apache.org/repository-management.html)


INFO interface: detail: Get:2 https://jfrog.bintray.com/artifactory-debs focal/main amd64 jfrog-artifactory-oss amd64 7.39.4 [517 MB]
INFO interface: detail:     default: Get:2 https://jfrog.bintray.com/artifactory-debs focal/main amd64 jfrog-artifactory-oss amd64 7.39.4 [517 MB]
default: Get:2 https://jfrog.bintray.com/artifactory-debs focal/main amd64 jfrog-artifactory-oss amd64 7.39.4 [517 MB]
DEBUG ssh: Sending SSH keep-alive...


# To determine your distribution, run lsb_release -c or cat /etc/os-release
# Example:echo "deb https://releases.jfrog.io/artifactory/artifactory-pro-debs xenial main" | sudo tee -a /etc/apt/sources.list;
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | sudo apt-key add -;
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs $(lsb_release -c) main" | sudo tee -a /etc/apt/sources.list;
sudo apt-get update && sudo apt-get install jfrog-artifactory-oss

# the artifactory not started  

systemctl list-units --type=service

artifactory.service