# Materials

* [74AHCT125 quad level-shifter](https://www.adafruit.com/product/1787). Note: 74HC125 will *not* work.
* 2 x [2x23 Male Headers](https://www.adafruit.com/product/2076)
* 2 x [0.1uF ceramic capacitor](https://www.adafruit.com/product/753)
* 1 x 470pF ceramic capacitor: solder directly across pins 1 and 3 of the IC
* R1 (bottom): 120 ohm resistor
* R2 (top) : 330 (or 390) ohm resistor
* Ethernet connector: through-hole, PCB mount RJ45
* DB25 male to RJ45 female modular adapter kit ([ADM-25M8-BK](http://www.frys.com/product/1544923))
* Ethernet cable
* BeagleBone Black + power supply + network connection (e.g. Apple Thunderbolt to Ethernet)

# DB25 connector wiring
 * 3 Blue
 * 16 Orange

 * 8 Red
 * 20 Green

 * 12 Yellow
 * 24 Black

 * 13 White
 * 25 Brown

Insert pins from back. Pin 1 is left on the wider side. Push pins in until they click.
You can twist the pairs of wires together if you want.

<pre>
W Y . . . R . . . . L . .
 N K . . . G . . . O . .
</pre>
(L = blue, N = brown, K = black)



# Testing

Output signal to Alto can be measured across pins 1 and 3 of the IC (pin 1 = ground). When connected to Alto, signal should be idle low (0.5V), pulsing to 4.5V. Can be a bit of overshoot, but shouldn't be ringing.
When disconnected from Alto, signal should go between 0V and 5V.


Input signal from Alto can be measured across the right hand side of a resistor. Signal should be idle high (2.2V) pulsing to 0V.

# LEDS

0 = top, 3 = closest to Ethernet port.
0 and 3 should flash every 2 seconds for Breath-of-life packet.
Others should flash during network boot or other network traffic.
If LED 0 is stuck on, reboot the BeagleBone. (There's something wrong with the gateway.)

At the end of a disk boot, LED 1 should flash a couple times (as the Alto does a couple network requests).
