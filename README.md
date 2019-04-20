### Peripheral access control for Real-Time Systems using TrustZone (Normal World: Raspbian Secure World: OPTEE).
_Check the `prepare-env.sh` for the sepecific versions_      

<br>

**Perform the steps in the host machine:**
_(tested on Ubuntu 16.04)_


* Download Required packages:



```
sudo apt-get install android-tools-adb android-tools-fastboot autoconf \
        automake bc bison build-essential cscope curl device-tree-compiler \
        expect flex ftp-upload gdisk iasl libattr1-dev libc6:i386 libcap-dev \
        libfdt-dev libftdi-dev libglib2.0-dev libhidapi-dev libncurses5-dev \
        libpixman-1-dev libssl-dev libstdc++6:i386 libtool libz1:i386 make \
        mtools netcat python-crypto python-serial python-wand unzip uuid-dev \
        xdg-utils xterm xz-utils zlib1g-dev u-boot-tools lzop ccache       
 ```
 _Check OPTEE Documentation for details : https://optee.readthedocs.io/building/prerequisites.html#prerequisites_

* Create output directories: `./init_out_directory.sh`

* Install Toolchains: `make toolchains`

* Make the build: `make`

* Copy the binaries to SD card: `./copy_to_sdcard.sh`

_Note: make sure to change your mount location in the `copy_to_sdcard.sh` file (e.g. use `lsblk` command and update accordingly_

###### Note: Skeleton of codes to set up OPTEE in Raspbian is obtained from: https://github.com/benhaz1024/raspbian-tee
