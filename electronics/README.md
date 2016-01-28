# KORUZA control electronics

KORUZA wireless optical system is controlled through a network interface. It is based on Raspberry Pi 2B microcomputer expanded with circuit boards designed for this purpose.

The boards have been designed in Altium Designer, all sources and gerber files are available.



## KORUZA RPi shield
This board attaches directly onto the Raspberry Pi and is the input/output interface to control motors, sensors and SFP modules.

## KORUZA power module
This board accepts DC power in 12-30V (24V optimal) range and creates two regulated outputs at 5V and 9V, used for powering the Raspberry Pi and motors respectively. It attaches directly to the RPi shield or can be connected with a flat cable.

## KORUZA SFP extension plug
This board is a fake SFP module that can be plugged in an media converted and bring out the data signals. They are connected to a SATA connector as it is a high-speed differential cable commonly available.

## KORUZA SFP extension socket
This board accepts an SFP module and connects to the plug with SATA and IDC cables and to the RPi shield with an IDC cable, allowing for the remote monitoring of SFP module digital monitoring features.

# Ordering
You can order assembled boards or PCBs from our partner company [Fabrikor](http://fabrikor.eu) and support the development this way. You can also order the PCBs from DirtyPCB service by following the two links or pre-panelized designs. To build KORUZA units you need two PCB panels of different thicknesses, [panel 1.0mm](http://dirtypcbs.com/view.php?share=15209&accesskey=d26ee0985b1c8a857d2a581abbbace13) and [panel 1.6mm](http://dirtypcbs.com/view.php?share=15210&accesskey=55f58673fd12db957a8ae663c1b3f456) you can order from the links provided.


