# Installation

This file explains how to set up the BeagleBone with the necessary kernel and software.

# The easy way

I've put a preconfigured installer disk image on Google Drive as [beaglbone-disk-image.gz](https://drive.google.com/open?id=1FQD5G4dWTDRxP52c7tuiRwAq8hB3n_ZX).

You can use the following command to put the disk image on a micro SD card. Make sure that `sdb` is the right drive so you don't clobber your hard disk.
```
gunzip -c beaglebone-disk-image.gz | dd of=/dev/sdb bs=1048576
```

Next, boot the BeagleBone with the SD card and wait about 15 minutes while the LEDs cycle back and forth.
This will install the Ethernet software on the BeagleBone's flash.
Eventually the BeagleBone will shut down.
Then remove the SD card and reboot the BeagleBone.
You can monitor progress through the serial pins if anything goes wrong.
More instructions on installing from SD are below in the "Kernel" section.

# The hard way

If you want to install the software from scratch, follow the steps in the remainder of this file to install the kernel, the Mono system, the Ethernet software, and various configuration files..
This is a somewhat tedious process, so install the disk image instead if you can.

## Kernel

This code requires a compatible kernel:
```
Linux beaglebone 3.8.13-bone80 #1 SMP Wed Jun 15 17:03:55 UTC 2016 armv7l GNU/Linux
```
If the BeagleBone already has a 3.8 kernel you're in luck. Otherwise, you'll need to flash a new kernel.

You can download it [here](https://debian.beagleboard.org/images/bone-debian-7.11-lxde-4gb-armhf-2016-06-15-4gb.img.xz).
To replace BeagleBone kernel, write the image to a micro-SD card. Mount the card (either on a Linux machine or BeagleBone) and edit /boot/uEnv.txt to enable the eMMC flasher. Install the micro-SD card in the BeagleBone and boot while holding down the SD boot button (opposite end of the board from the power button). This will copy the SD card contents to flash. This will take about 10 minutes, during which time the LEDs will go back and forth. The board will shut down when done. Remove the micro-SD card and reboot. You'll probably want to have a serial console connected so you can see what's happening.
Detailed instructions [here](https://elinux.org/Beagleboard:BeagleBoneBlack_Debian#Flashing_eMMC) and [here](http://derekmolloy.ie/write-a-new-image-to-the-beaglebone-black/).

## Install Mono

Connect the BeagleBone to the Internet. (e.g. connect through serial line, then dhclient eth0 for DHCP connection).
Install mono-devel: [instructions](http://www.mono-project.com/download/#download-lin-debian)
```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-official.list
sudo apt-get update
sudo apt-get install mono-devel
```

## Software

Establish a connection to the BeagleBone, e.g. via USB. It typically will be accessible as root@192.168.7.2 (no password).
```
scp interfaces root@192.168.7.2:/etc/network/interfaces
scp IFS.tgz root@192.168.7.2:
scp capemgr root@192.168.7.2:/etc/default/capemgr
scp {gateway,ethertext.bin,etherdata.bin} root@192.168.7.2:
scp uEnv.txt root@192.168.7.2:/boot
scp PRU-ETHER-ALTO-00A0.dtbo root@192.168.7.2:/lib/firmware
scp *.service root@192.168.7.2:/lib/systemd/system
ssh root@192.168.7.2 tar xfv IFS.tgz
```

Set `UseDNS no` in `/etc/ssh/sshd_config` to avoid ssh delays from DNS.

## Configure services to run on boot
Log onto the BeagleBone as root and run:

```
systemctl daemon-reload
systemctl enable alto-gateway.service
systemctl enable alto-ifs.service
systemctl start alto-gateway.service
systemctl start alto-ifs.service
```

## Reboot

Reboot the BeagleBone. After about 40 seconds, you should see two LEDs flash once a second, indicating the Breath of Life packets. If you don't have the cape connected, LED 0 will be steady on.

## Misc setup notes

You should be able to ssh into the BeagleBone as 192.168.4.5 if necessary.

If you want to use tcpdump to collect traces, install tcpdump and then:
```
tcpdump -i any -l portrange 42424-42426 -w capture.pcap
```
# Quick setup

If you do the whole installation to an SD card instead of flash, you can easily install new BeagleBones. Follow the instructions above for flashing a new kernel, except use the SD card that has the installation.
