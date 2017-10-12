all: ethertext.bin etherdata.bin etherNet PRU-ETHER-ALTO-00A0.dtbo

ethertext.bin etherdata.bin: ether.out
	hexpru bin1.cmd ether.out 

etherNet: etherNet.c
	gcc -o etherNet etherNet.c -lprussdrv

PRU-ETHER-ALTO-00A0.dtbo: PRU-ETHER-ALTO-00A0.dts
	dtc -O dtb -I dts -o PRU-ETHER-ALTO-00A0.dtbo -b 0 -@ PRU-ETHER-ALTO-00A0.dts

clean:
	rm -f ethertext.bin etherdata.bin etherNet.o etherNet

install: PRU-ETHER-ALTO-00A0.dtbo
	cp PRU-ETHER-ALTO-00A0.dtbo /lib/firmware
