# Alto Ethernet Interface

Note: this system is still under development as of October 2017.

This project is an interface / gateway from the Xerox Alto's 3 Mb/s Ethernet
to the outside world.
The software runs on a [BeagleBone Black](http://beagleboard.org/bone) single-board Linux computer and uses a simple interface board (shield) to interface with the Alto's Ethernet.
This system makes use of the 
IFS file server software from [Living Computers Museum+Labs](http://livingcomputers.org).

## Background

Xerox PARC invented Ethernet in the 1970s, implementing 3 MB/s Ethernet on the Xerox Alto.
This was before TCP/IP and Xerox developed a network protocol called PUP (PARC Universal Packet) to run on Ethernet.
Xerox also built the IFS (Interim File Server), server software to support ftp, network boot, network disk copying, network services, gateways, and so forth.

The 3 MB/s Ethernet system consisted of several pieces.
A network interface board inside the Alto generated TTL signals.
The network itself consisted of a coaxial cable.
An external transceiver box translated between TTL signals and signals on the coaxial cable.
The TTL signals between the Alto and the transceiver consisted of the data from the Alto to the network, data to the Alto from the network, and a collision detection signal.

## Details of the interface

To hook the Alto up to a modern network, this project has several pieces:

 * A BeagleBone shield that interfaces to the Alto's Ethernet.
 * Gateway software on the BeagleBone to read/write packets.
 * The IFS file server running on the BeagleBone.
 
The BeagleBone processor includes two microcontrollers called PRUs.
This interface runs code on a PRU to send and receive the Ethernet data.
A C program communicates with the PRU and sends/receives the data locally
over UDP.
Finally, IFS also uses UDP to send/receive the packets, allowing the Alto to
communicate with IFS.

### The shield

The interface board plugs into the BeagleBone and simply translates signal
levels between the BeagleBone and the Alto.
A schematic and PCB design were created in EagleCad.

### The Beaglebone software

 * The PRU code. This is written in C and is compiled using TI's Code Composer Studio.
 * The C gateway code.
 * The device tree overlay file, which sets the BeagleBone's pins correctly to communicate with the interface board.

This software is targeted at the BeagleBone black with the 3.8.13-bone80 kernel.
There has been a lot of churn in the kernel's PRU support so other kernels may be an adventure.

To run the software:
```
$ echo PRU-ETHER-ALTO > /sys/devices/bone_capemgr.?/slots
$ cd ~/IFS/PUP
$ bin/Debug/IFS.exe &
$ cd ~/ether
$ ./gateway &
```

### IFS
 
The IFS software from [Living Computers Museum+Labs](http://livingcomputers.org).
This software is in C#. It can run on the BeagleBone using Mono.

The original IFS repository is [https://github.com/livingcomputermuseum/IFS](here://github.com/livingcomputermuseum/IFS).
My version of IFS with modified UDP support is [https://github.com/shirriff/IFS](https://github.com/shirriff/IFS).

## Installation

To configure a BeagleBone with this software, see [build/README.md](build/READmE.md).

## Notes

I wrote articles on the [BeagleBone PRU](http://www.righto.com/2016/08/pru-tips-understanding-beaglebones.html) and [PRU C compiler](http://www.righto.com/2016/09/how-to-run-c-programs-on-beaglebones.html).


Notes:

LEDS:
0 (Left): sending packet to Alto
1: received packet from Alto
2: timeout (5 seconds with no activity)
3: select loop (gateway alive)

(To create IFS.tgz: tar -czvf IFS.tgz IFS)
To check systemd: `systemctl status alto-gateway.service` (or alto-ifs.service)
Also look in /var/log/syslog for errors

## Use

Connect the Ethernet cable from the cape (i.e. the top board) to the Alto.
Boot the BeagleBone.
The 4 LEDs on the BeagleBone should flash randomly for about 35 seconds.
Then the LEDs should go out for a few seconds.
Then the first and last LEDs should blink briefly every second.

On the Alto, hold down backspace and apostrophe. Press the reset button on the back of the keyboard. Continue holding down backspace and apostrophe for a couple seconds until the cursor changes to a box of dots.
While this is happening, the first, second and fourth LED should be flashing a lot, indicating network traffic.
Hopefully the Alto will boot to the "Net Executive".
From here, type a question mark to list commands.
Type `astroroids` [sic] to boot the Asteroids game.
Type `ftp` for FTP. Note: it will hang with a two-box cursor if you don't have a disk running.
```
login test
open 1#
list *
```

You should be able to ssh into the BeagleBone as 192.168.4.5 if necessary.

