# infrastructure

# Oracle VM

    https://www.virtualbox.org/manual/ch05.html

https://unix.stackexchange.com/questions/715461/bash-how-to-automate-creation-of-disk-partitions-in-linux

# TODO

* Do not create partition and formation if disk is ready
* Keep second disk on destroy
* Umount disk before destroy

### How to import the demo database

unzip
cp *.sql to /vagrant

su postgres

psql -c "create database demo"
psql -d demo -f demo-small-20170815.sql

### How to check database size

select t1.datname AS db_name,
pg_size_pretty(pg_database_size(t1.datname)) as db_size
from pg_database t1
order by pg_database_size(t1.datname) desc;

+-------------+-------+
|db_name      |db_size|
+-------------+-------+
|demo         |281 MB |
+-------------+-------+

### How to check disk usage

du -h .

### Where does PostgreSQL store the database?

show data_directory;

+---------------------------+
|data_directory             |
+---------------------------+
|/var/lib/postgresql/14/main|
+---------------------------+

### How to create tablespace
su postgres
cd /var/lib/postgresql/14
mkdir demo_tablespace
mkdir demo_tablespace_01

CREATE TABLESPACE demo_tablespace
OWNER postgres
LOCATION '/var/lib/postgresql/14/demo_tablespace';

CREATE TABLESPACE demo_tablespace_01
OWNER postgres
LOCATION '/var/lib/postgresql/14/demo_tablespace_01';

### How to drop database

DROP DATABASE demo
create DATABASE demo TABLESPACE demo_tablespace

### How to create a template database
* https://www.postgresql.org/docs/current/sql-createdatabase.html

CREATE DATABASE demo_01
WITH TEMPLATE demo
TABLESPACE demo_tablespace_01;

### How to show list of database

SELECT datname FROM pg_database;
SELECT * FROM pg_tablespace;

SELECT datname
FROM pg_database;

SELECT spcname, pg_tablespace_location(oid)
FROM pg_tablespace;

### How to move database to another tablespace

ALTER DATABASE demo SET TABLESPACE demo_tablespace

### Getting the Size of a Directory

du -sh /var/lib/postgresql/14/demo_tablespace

281M    /var/lib/postgresql/14/demo_tablespace

### How to dump database

pg_dump -Fc -Z 9 --file=demo.dump demo
pg_dump -Fc -Z 0 --file=demo.dump demo
pg_dump -Fc --file=demo.dump demo

### How to measure execution time

time pg_dump -Fc -Z 0 --file=demo.dump demo

real    0m 1.553s
user    0m 0.138s
sys     0m 0.148s

real    0m 1.939s

-rw-rw-r-- 1 postgres postgres 110M Aug 23 20:45 demo.dump

time pg_dump -Fc --file=demo.dump demo

real    0m2.055s
user    0m1.876s
sys     0m0.032s

-rw-rw-r-- 1 postgres postgres  22M Aug 23 20:48 demo.dump

### How to restore database

pg_restore -d demo demo.dump

pg_dump -Fc --file=demo.dump demo
dropdb demo
create DATABASE demo TABLESPACE demo_tablespace
psql -c "create DATABASE demo TABLESPACE demo_tablespace"
time pg_restore -d demo demo.dump

pg_restore -C -d demo demo.dump

### How much time we need to restore database

time pg_restore -d demo demo.dump

real    0m 9.231s
user    0m 0.321s
sys     0m 0.029s

real    0m 8.884s

### How to start stop database server

time systemctl stop postgresql

real    0m 0.007s
user    0m 0.003s
sys     0m 0.000s

time systemctl start postgresql

real    0m 2.229s
user    0m 0.006s
sys     0m 0.000s

TODO: Non-Durable Settings
https://www.postgresql.org/docs/current/non-durability.html
https://stackoverflow.com/questions/9407442/optimise-postgresql-for-fast-testing
ALTER TABLE table_test SET LOGGED;


### How to Create a Ramdisk in Linux
https://linuxhint.com/create-ramdisk-linux/

Vagrant to do 
=======================================================================================================================
proxy:
    use env variable
        VAGRANT_HTTP_PROXY
        VAGRANT_HTTPS_PROXY
        VAGRANT_FTP_PROXY
        VAGRANT_NO_PROXY
    Current Open Command Prompt
        set http_proxy=http://yourproxyserver:port
        set https_proxy=https://yourproxyserver:port
    Permantly Set
        setx http_proxy=http://yourproxyserver:port
        setx https_proxy=https://yourproxyserver:port
    Docker
        https://dev.to/shriharshmishra/behind-the-corporate-proxy-2jd8
    Other
        gem install vagrant-proxy
        vagrant-proxyconf plugin
    
        
    
ssl certificate:
    vagrant-certificates
        https://medium.com/@bcoste/vagrant-provision-microk8s-with-hyper-v-behind-a-corporate-proxy-55507fedd9d3

Dns
    vagrant-hostmanager

Host Interaction
    vagrant-host-shell - https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins
        

=======================================================================================================================
visiobud 
1 - 09 - 2023
14:00 - 14:30

https://github.com/mloskot/vagrant-sqlserver/tree/master

https://github.com/kyleprager/vagrant-kafka/tree/master

#### Introduction to the alternatives command in Linux

* alternatives
* update-alternatives
* update-java-alternatives

https://www.redhat.com/sysadmin/alternatives-command
https://www.baeldung.com/linux/update-alternatives-command

https://github.com/KAMI911/ansible-role-java-adopt-open-jdk11/tree/master
https://github.com/frieder/ansible-role-oraclejdk/blob/master/tasks/04_installjdk.yml
https://dev.to/thegroo/install-and-manage-multiple-java-versions-on-linux-using-alternatives-5e93

Linux Standard Base ?

#### Vagrant Secret Feature: Automatic Plugin Installation
https://stackoverflow.com/questions/42421229/how-to-programmatically-install-vagrant-plugins
https://dustingram.com/articles/2015/09/16/vagrant-secret-feature/

https://developer.hashicorp.com/vagrant/docs/vagrantfile/machine_settings

#### How to Create Private Vagrant Cloud on Ubuntu 20.04
https://dev.to/aciklab/how-to-create-private-vagrant-cloud-on-ubuntu-2004-3p60
https://medium.com/@gajbhiyedeepanshu/building-custom-vagrant-box-e6a846b6baca

#### Docker/Alpine - Why you should avoid alpine linux
https://dev.to/kakisoft/dockeralpine-why-you-should-avoid-alpine-linux-44he
https://medium.com/@gaganarora_17523/base-image-for-java-alpine-openjdk8-or-amazon-corretto8-2af74a301cfa

#### Vagrant
https://github.com/scottslowe/learning-tools/tree/main/vagrant
https://github.com/hashicorp/vagrant/issues/2292
https://www.techtarget.com/searchitoperations/tip/Tips-to-launch-VirtualBox-nested-virtualization
https://github.com/acntech/vagrant-repository

#### Package a VM built with Vagrant as an OVA appliance
https://serverfault.com/questions/596987/package-a-vm-built-with-vagrant-as-an-ova-appliance
https://developer.hashicorp.com/packer/integrations/hashicorp/virtualbox
https://docs.xenserver.com/en-us/xencenter/current-release/vms-exportimport-ovf.html#:~:text=OVF%20packages%20contain%20a%20series,series%20of%20files%20like%20OVF.

https://fabiogomezdiaz.com/posts/how-to-run-packer-pipelines-on-jenkins-part2-jenkins-in-dkocker/
#### winrm
https://www.youtube.com/watch?v=kRnfY6R4sK8&ab_channel=RaisingCode

#### My boxes in the Vagrant Cloud
https://medium.com/nerd-for-tech/my-boxes-in-the-vagrant-cloud-72dd58478fe3
https://developer.hashicorp.com/packer/integrations/hashicorp/vagrant/latest/components/builder/vagrant
https://developer.hashicorp.com/packer
https://github.com/StephenSorriaux/vagrant-registry

#### Drone CI 
https://www.drone.io/

#### VM Guest Control File Manager
https://www.virtualbox.org/manual/ch04.html

#### Creating Boxes via the Vagrant Cloud Web Interface
https://developer.hashicorp.com/vagrant/vagrant-cloud/boxes/create#creating-boxes-via-the-vagrant-cloud-web-interface
https://medium.com/nerd-for-tech/my-boxes-in-the-vagrant-cloud-72dd58478fe3

#### Multipass VM ???

https://michaelcurrin.github.io/dev-cheatsheets/cheatsheets/markdown/code-blocks.html

#### Using Raspberry Pi 4 for USB output - keyboard-proxy
https://forums.raspberrypi.com/viewtopic.php?t=372445
raspberry pi 4 emulate mouse and keyboard
https://randomnerdtutorials.com/raspberry-pi-zero-usb-keyboard-hid/
https://mtlynch.io/key-mime-pi/
https://www.youtube.com/watch?v=DTJSREjWH7Y&t=14s&ab_channel=DavidZhang
https://github.com/benjaminmetzler/OpenRemoteHub

#### Use Android as A Bluetooth Keyboard
https://github.com/jusss/BluetoothConnect/tree/main
https://github.com/Arian04/android-hid-client
https://github.com/raghavk92/Kontroller
https://github.com/pelya/android-keyboard-gadget
