#!/bin/sh

echo "Creating output directory..."

[ ! -d "./out" ] && {
    mkdir out
    mkdir out/boot
    mkdir out/rootfs
    mkdir out/rootfs/bin
    mkdir out/rootfs/lib
    mkdir out/rootfs/lib/optee_armtz
}
