#!/bin/bash

(
echo n # Add a new partition
echo p # Primary partition
echo 1 # Partition number
echo   # First sector (Accept default: 1)
echo   # Last sector (Accept default: varies)
echo w # Write changes
) |fdisk /dev/sdc 
mkfs -t ext4 /dev/sdc1
mkdir /data
mount /dev/sdc1 /data
fallocate -l 16G /data/swapfile 
chmod 600 /data/swapfile 
mkswap /data/swapfile
swapon /data/swapfile
swapon -s 
echo 
