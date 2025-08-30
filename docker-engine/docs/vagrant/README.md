#### Creating and Sharing Vagrant Boxes
vagrant package --output mybox.box

#### vagrant up --debug
https://developer.hashicorp.com/vagrant/docs/other/debugging
vagrant up --debug 2>&1 | Tee-Object -FilePath ".\vagrant.log"
vagrant up --debug-timestamp 2>&1 | Tee-Object -FilePath ".\vagrant-timestamp.log"
vagrant resume --debug-timestamp 2>&1 | Tee-Object -FilePath ".\vagrant-resume-timestamp.log"

00:24:59

2025-08-22 00:25:06
==> docker-engine-1: Booting VM...
2025-08-22 00:25:45
==> docker-engine-1: Machine booted and ready!

00:25:49
2025-08-22 00:24:59 - 2025-08-22 00:25:49 = 40 seconds

#### resume

vagrant up
vagrant suspend
vagrant resume

2025-08-22 01:08:37 - 2025-08-22 01:09:05 = 28 seconds

https://uk.soringpcrepair.com/what-is-quick-boot-in-bios/
https://www.baeldung.com/linux/boot-faster
https://medium.com/@therealcomtom/reducing-linux-booting-time-b5d0a061e05a

#### https://github.com/fgrehm/vagrant-cachier
vagrant plugin install vagrant-cachier
vagrant plugin uninstall vagrant-cachier

https://www.apalrd.net/posts/2024/cluster_debcache/
https://www.cyberciti.biz/faq/can-i-delete-var-cache-apt-archives-for-ubuntu-debian-linux/

/etc/apt/apt.conf
/etc/apt/apt.conf.d/no-cache
/var/cache/apt/archives

#### Docker Compose
https://github.com/leighmcculloch/vagrant-docker-compose

#### SSH Known Hosts
vagrant_root = File.dirname(File.expand_path(__FILE__))
client_vagrantfile2 = File.expand_path('../vagrant/Vagrantfile.client2', __FILE__)

https://developer.hashicorp.com/vagrant/docs/vagrantfile/ssh_settings
https://stackoverflow.com/questions/2232/how-to-call-shell-commands-from-ruby

vagrant ssh-config