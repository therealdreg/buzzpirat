# buzzpirat

![logo](./assets/logo_comp_mini.png)

All-In-One Ruggedized Hardware Hacking tool for learning, practice and play

Using the same hardware as **Bus Pirate v3** but with some enhancements:
- Ruggedized like a Ruggeduino: enhanced security with hardware protections such as: over(voltage/current) + reverse safeguards and measures to prevent damage to devices. PTC I/O protections can be disabled with a simple jumper
- Fully compatible with both the official Bus Pirate firmware and bootloader, as well as versions supported by the Bus Pirate community
- Support for working directly with 5v, 3.3v, 2.5v and 1.8v. So you won't need an external circuit to hack a 1.8v chip
- High-quality short cables with labels + SMD IC hook clips: designed to latch onto small chips, unlike the official offerings from Seeed Studio, Adafruit or Sparkfun
- Enhanced power supply capabilities allow for the connection of more power-hungry devices (~300ma)
- Compatible with Bluetooth/WiFi UART adapters for both iOS and Android, allowing for chip hacking without the need for a PC. This feature can save your PC by ensuring your PC it is not connected to the target chip/PCB when incidents such as short circuits, high volt connect or reverse polarity occur
- All pins are duplicated to make the use of a logic analyzer easier, allowing you to hack a chip and capture your actions simultaneously
- Including an OPTIONAL ruggedized Capture The Flag board, providing a hands-on opportunity for you to practice and hone your hacking skills on the included chips
- Designed for easy DIY repairs and modifications: Large components (when possible) and ample spacing between them allow for hassle-free fixes. No need for a microscope or expensive tools - a soldering iron and a pair of tweezers are all you need
- One additional pin (TP0) with pull-up support is available (total 4: TP0+PGD+PGC+AUX). So now it's possible to connect an auxiliary SPI device for debugging purposes or any other applications you might have in mind
- Variable resistor for pull-ups, useful when you need to hack 1.8v chips so you can proceed faster without any issues
- A ZIG socket compatible with all the tools commonly used with the CH341A programmer: SOIC/SOP sockets, clip adapters...
- It fully utilizes the capabilities of the chip, for instance, it's possible to monitor the new 1.8v and 2.5v 
- Pins soldered to facilitate programming of both the bootloader and chip, as well as enabling debugging of the device's firmware via MPLAB PICkit in-circuit debugger/programmer
- A power bank or battery can easily be connected
- External on/off functionality is also available
- Equipped with a USB Type-A male connector. If you lose your USB cable, you could connect it directly to the PC (although I don't recommend it, as the board is heavy)
- Including a short high-quality USB cable. I've seen numerous issues in Flashrom and other tools due to the use of poor-quality/long USB cables
- Striving to improve the user experience, making the documentation easier to understand for people who know nothing about electronics and maths
- Firmware improvements (1.8v+2.5v monitor ...), creation of audiovisual content for education...
- Minimalist project, retaining only the essential things. The Bus Pirate repo, on the other hand, contains some stuff that I have no intention of maintaining

This product is neither a replacement for nor a competitor to the Bus Pirate; it's an entirely different approach. For a more **affordable** / **stable** option just consider purchasing a **Bus Pirate v3**. If you're looking for something more modern and powerful, consider trying the **Bus Pirate v5**: https://buspirate.com

Please be aware that buzzpirat is a **prototype** and not intended for mass production (limited stock available). As a small, artisanal creator without the extensive resources of a large company, I dedicate significant manual labor and attention to detail for each individual board

My commitment is to **quality** over quantity, and as a result, the product may be **priced higher**

Patience is appreciated as **human errors** and occasional **bugs** are an **inherent** part of this bespoke process

If you **value** what I am building and would like to see it thrive, please consider **making a donation** or purchasing one of the units. Your support will directly contribute to maintaining the project, acquiring necessary hardware, developing the website, enhancing mobile applications and so much more

## Supported protocols
    
* 1-Wire
* UART
* I2C
* SPI
* JTAG
* MIDI
* PC keyboard
* HD44780 LCD
* 2- and 3-wire libraries with bitwise pin control
* Scriptable binary bitbang, 1-Wire, I2C, SPI, and UART modes.

## More features

* Python scripting support
* 0 - 5.5v tolerant pins
* 0 - 6v measurement probe
* 1Hz - 40MHz frequency measurement
* 1kHz - 4MHz pulse-width modulator, frequency generator
* On-board multi-voltage & pull-up (variable) resistors
* On-board 1.8v, 2.5v, 3.3v and 5v power supplies with software reset
* Macros for common operations
* Bus traffic sniffers (SPI, I2C)
* A bootloader for easy firmware updates
* Transparent USB <--> serial mode
* 10Hz - 1MHz low-speed logic analyzer
* Servo driver
* Can program many AVR microcontrollers
  * Supported by AVRdude
* Public domain (Creative Commons Zero) source

## Application Support

* [AVRDude] AVR programmer (AVRDude v5.8+, firmware v4 (any) or v5.9+)
* [OpenOCD] JTAG debugger
* [flashrom] bios/flash programmer
* [asprogrammer-dregmod] https://github.com/therealdreg/asprogrammer-dregmod

## More info:

- https://buzzpirat.com/docs/
- https://buzzpirat.com/

## How to compile bootloader & firmware

- MPLAB X IDE v6.15: https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide
- MPLAB XC16 Compiler: https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers

Just compile the following MPLAB projects:
- firmware\busPirate.X
- firmware\bootloader\ds30loader.X

To debug my own firmware I use a PICkit 5: https://www.microchip.com/en-us/development-tool/pg164150

How to Debug the Bus Pirate Firmware Using a Pickit 4:
- Connect Pickit via USB to PC
- Connect Bus pirate via USB to PC
- Connect Bus Pirate pins to the pins located furthest to the right of the Pickit:

![bus_pirate_pickit4](./assets/bus_pirate_pickit4.jpg)

Now you can use MPLAB IDE and MPLAB IPE

![debugging_bus_pirate_pickit_mplab](./assets/debugging_bus_pirate_pickit_mplab.png)


## Purchasing

https://buzzpirat.com

## TO-DO Firmware

- [ ] (Binary) Support for I2C Hardware
- [ ] (Binary & Text) Support for AUX & TP0 as Edge-Triggered Interrupt Sources: 
  - Rising Edge
  - Falling Edge
  - Both Rising and Falling Edges
- [ ] (Binary) Support for Baud Rate Modification
- [ ] (Binary) Support for reading the Buzzpirat version
- [ ] (Text) Add repeat support for 'd' & 'v' command, ex:
  - d:20 
  - d%:50
- [ ] (Binary & Text) Add continuous 'v' voltage monitoring 


## Thx to

- Ian Lesnet & Dangerous Prototypes: https://dangerousprototypes.com
- Rugged Circuits: https://www.rugged-circuits.com
- k1m3rA (art): https://k1m3ra.gitlab.io
- becca203 (art): https://github.com/Becca203



