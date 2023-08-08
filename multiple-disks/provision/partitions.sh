#!/bin/bash

sudo apt-get -y update
echo '================================================================================================================'

echo 'Install parted'
sudo apt-get -y -q install parted

echo 'Install tools'
sudo apt-get -y -q install mc

echo '================================================================================================================'

echo "Create a partition table"
sudo parted -s /dev/sdc mklabel msdos
echo "Create a partition"
sudo parted -s /dev/sdc mkpart primary ext4 0% 100%

echo 'Make file system'
sudo mkfs.ext4 -q /dev/sdc1

echo 'Set the volume label for the second extended file system'
sudo e2label /dev/sdc1 "mnt"
echo 'mount a filesystem'
sudo mount /dev/sdc1 /mnt

echo '================================================================================================================'