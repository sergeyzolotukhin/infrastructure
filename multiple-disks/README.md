### You can see the list of allowable hdd controller

c:\soft\oraclevm-6.1>VBoxManage list vms --long > d:/projects-java/infrastructure/multiple-disks/log.txt

### sudo lshw -class disk -short

H/W path           Device     Class          Description
========================================================
/0/100/14/0.0.0    /dev/sda   disk           42GB HARDDISK
/0/100/14/0.1.0    /dev/sdb   disk           10MB HARDDISK
/0/100/14/0.2.0    /dev/sdc   disk           10GB HARDDISK

### Action hooks
https://developer.hashicorp.com/vagrant/docs/plugins/action-hooks

### Vagrant Triggers
https://developer.hashicorp.com/vagrant/docs/triggers/configuration

Experimental typed_triggers

### vagrant-persistent-storage
https://github.com/kusnier/vagrant-persistent-storage/blob/master/lib/vagrant-persistent-storage/providers/virtualbox/driver/base.rb
https://github.com/jtyr/vagrantfile_config/blob/master/Vagrantfile
https://github.com/whamcloud/Vagrantfiles/blob/master/Vagrantfile

### Uninstall plugin
vagrant plugin list
vagrant plugin install vagrant-persistent-storage
vagrant plugin uninstall vagrant-persistent-storage

### vagrant create base box
https://www.engineyard.com/blog/building-a-vagrant-box-from-start-to-finish/
https://developer.hashicorp.com/vagrant/docs/providers/virtualbox/boxes
https://developer.hashicorp.com/vagrant/docs/boxes/base
https://dev.to/aciklab/how-to-create-private-vagrant-cloud-on-ubuntu-2004-3p60

### Developing custom plugin
https://docs.w3cub.com/vagrant/plugins/provisioners