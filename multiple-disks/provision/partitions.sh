#!/bin/bash

sudo apt-get -y update
echo 'Install parted ================================================================================================='
sudo apt-get -y install parted

#sudo lshw -class disk -short

sudo parted /dev/sdc mklabel msdos
sudo parted /dev/sdc mkpart primary ext4 0% 100%

sudo sleep 3

echo 'Make file system ==============================================================================================='
#-m swith tells mkfs to only reserve 1% of the blocks for the super block
sudo mkfs.ext4 /dev/sdc1

sudo e2label /dev/sdc1 "mnt"

sudo chmod 777 /mnt

sudo mount /dev/sdc1 /mnt
sudo chmod 777 /mnt

echo 'Install tools'
sudo apt-get -y install mc