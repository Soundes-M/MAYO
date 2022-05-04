# How to setup the ZedBoard

The Zedboard needs a 12V input and USB connected to host PC (Port UART).

# How to boot the ZedBoard
## Files needed
To prepare the boot sequence you want to copy(or build) the needed files for Zynq device in the according order:

- FSBL, First Stage Boot Loader, built with Vitis
- U-Boot, Universal Boot Loader, built from Xilinx tools
- DTS, Device Tree, found in Xilinx tools
- Linux kernel, built from Xilinx tools specifically for ARM32 EABI 
- ROOTFs for Linux, built with Yocto

## Setup the SD CARD
All the files are on GIT, it is only needed to format an eMMC(SD Card) to :

- 32 MB or more as W95 FAT32 (LBA) Type
- The rest as a second partition as Linux Type

## Copy files
Everything except ROOTFs goes into the first partition. The 2nd partition is for the "linux distro"

# How to connect to the board
You should notice on your host-computer that a new device is now connected, if in doubt, check with ´ls /dev´ on linux.

The UART port should usualy be ttyUSB0, ttyUSB1, or ttyACM0.

Pick a terminal with appropriate extenstion of choice and create a serial 115200 Connection the new port.

Once, on the Zynq> Stage (i.e U-Boot) type the following
´´´
fatload mmc 0 0x2080000 uImage && fatload mmc 0 0x2000000 zynq-zed.dtb && bootm 0x2080000 - 0x2000000
´´´

A direct boot is currently not supported. The u-boot defaults to tftpboot which is not included.

Once that is finished your should land on the linux login prompt, the user is ´root´. 
