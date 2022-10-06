echo 'Install Reposilite =============================================================================================='
sudo mkdir /opt/reposilite
sudo cp /vagrant/reposilite-3.0.4-all.jar /opt/reposilite
cd /opt/reposilite || return

echo 'Run Reposilite =================================================================================================='
sudo java -Xmx32M -jar reposilite-3.0.4-all.jar