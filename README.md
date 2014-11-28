vocore-blink
============

This is a simple test program to blink one of the the LEDs on a Vocore with the dock attached.  It's just a simple little test program to make sure that my build environment works.

For more information on the Vocore tiny Linux machine see http://vonger.cn/

Building it
-----------
As long as you have an OpenWrt build environment set up for the Vocore you should just be able to type ```make``` and you will then have the program cross-compiled and ready to be copied to the device.  Something like: ```scp ./blink root@192.168.61.1:/``` should copy the program over.  Then just ```ssh``` in and run it. 
