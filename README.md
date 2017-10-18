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
$ ./etherNet &
```

### IFS
 
The IFS software from [Living Computers Museum+Labs](http://livingcomputers.org).
This software is in C#. It can run on the BeagleBone using Mono.

The original IFS repository is [https://github.com/livingcomputermuseum/IFS](here://github.com/livingcomputermuseum/IFS).
My version of IFS with modified UDP support is [https://github.com/shirriff/IFS](https://github.com/shirriff/IFS).

## Notes

I wrote articles on the [BeagleBone PRU](http://www.righto.com/2016/08/pru-tips-understanding-beaglebones.html) and [PRU C compiler](http://www.righto.com/2016/09/how-to-run-c-programs-on-beaglebones.html).
