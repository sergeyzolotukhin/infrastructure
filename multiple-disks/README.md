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

### vagrant-persistent-storage

https://github.com/kusnier/vagrant-persistent-storage/blob/master/lib/vagrant-persistent-storage/providers/virtualbox/driver/base.rb