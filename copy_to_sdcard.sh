#!/bin/sh

# This script will copy the contents to removable storage for
# Raspberry pi

# check lsblk output and make sure the device id, eg. /dev/sdbX

DEV_BOOT="/dev/sdb1"
DEV_ROOTFS="/dev/sdb2"

OPTEE_ROOT="$(pwd)"

# mount filesystem

echo "Mounting filesystem..."

[ ! -d "/media/boot" ] && {
    sudo mkdir /media/boot
}
[ ! -d "/media/rootfs" ] && {
    sudo mkdir /media/rootfs
}

sudo mount $DEV_BOOT /media/boot
sudo mount $DEV_ROOTFS /media/rootfs

# copy boot
echo "Copy boot..."
SRC="$OPTEE_ROOT/out/boot/*"
sudo cp $SRC /media/boot

# copy library
echo "Copy library..."
SRC="$OPTEE_ROOT/out/rootfs/*"
sudo cp -r $SRC /media/rootfs

echo "Unmounting filesystem..."

# Unmount
sudo umount /media/boot/
sudo umount /media/rootfs/

# sudo rm -r /media/boot
# sudo rm -r /media/rootfs

echo "Script finished!"
