#!/usr/bin/env python
# encoding: utf-8
"""
Created by Sean Nelson on 2009-10-14.
Copyright 2009 Sean Nelson <audiohacked@gmail.com>

Overhauled and edited by Garrett Berg on 2011- 1 - 22
Copyright 2011 Garrett Berg <cloudform511@gmail.com>

This file is part of pyBusPirate.

pyBusPirate is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pyBusPirate is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pyBusPirate.  If not, see <http://www.gnu.org/licenses/>.
"""

from .BBIO_base import BBIO_base, BPError, ProtocolError

I2C_speed = { '400kHz': 0x03,
              '100kHz': 0x02,
              '50kHz' : 0x01,
              '5kHz'  : 0x00}

pin_mapping = {'AUX':   0b10,
               'CS':     0b01}


class I2C(BBIO_base):
    def __init__(self, portname='', speed=115200, timeout=0.1, connect=True):
        """ Provide access to the Bus Pirate I2C interface

        Parameters
        ----------
        portname : str
            Name of comport (/dev/bus_pirate or COM3)
        speed : int
            Communication speed, use default of 115200
        timeout : int
            Timeout in s to wait for reply

        Example
        -------
        >>> i2c = I2C()
        >>> i2c.speed = '400kHz'
        """
        super().__init__()
        if connect is True:
            self.connect(portname, speed, timeout)
            self.enter()

    def enter(self):
        """ Enter I2C mode

        Once in binary I2C mode, send 0×01 to get the current mode version string. The Bus Pirate responds ‘I2Cx’,
        where x is the raw I2C protocol version (currently 1). Get the version string at any time by sending 0×01 again.
        This command is the same in all binary modes, the current mode can always be determined by sending 0x01.

        Raises
        ------
        BPError
            If I2C mode could not be entered
        """
        if self.mode == 'i2c':
            return
        if self.mode != 'bb':
            super(I2C, self).enter()
        self.write(0x02)
        self.timeout(self.minDelay * 10)
        if self.response(4) == "I2C1":
            self.mode = 'i2c'
            self.bp_port = 0b00         # two bit port
            self.bp_config = 0b0000
            self.recurse_end()
            return
        self.recurse_flush(self.enter)
        raise BPError('Could not enter I2C mode')

    def start(self):
        """ Send an I2C start bit

        Raises
        ------
        ProtocolError
            Did not get expected response
        """
        self.port.flushInput()
        self.port.write(bytes([0x02]))

        self.timeout(self.minDelay * 2 * 9)

        if b'\x01' != self.response(1, True):
            raise ProtocolError('Could not send I2C start bit')

    def stop(self):
        """ Send an I2C stop bit

        Raises
        ------
        ProtocolError
            Did not get expected response
        """
        self.port.flushInput()
        self.port.write(bytes([0x03]))

        self.timeout(self.minDelay * 2 * 10)

        if b'\x01' != self.response(1, True):
            raise ProtocolError('Could not send I2C stop bit')

    def ack(self):
        """ Send ACK

        Send an I2C ACK bit after reading a byte. Tells a slave device that you will read another byte.

        Raises
        ------
        ProtocolError
            Did not get expected response
        """
        self.port.write(bytes([0x06]))
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError('Could not send ACK')

    def nack(self):
        """ Send NACK

        Send an I2C NACK bit after reading a byte. Tells a slave device that you will stop reading,
        next bit should be an I2C stop bit.

        Raises
        ------
        ProtocolError
            Did not get expected response
        """
        self.port.write(bytes([0x07]))
        if self.response(1, True) != 0x01:
            raise ProtocolError('Could not send NACK')

    def sniffer(self):
        """ Sniff traffic on an I2C bus.

        [/] - Start/stop bit
        \ - escape character precedes a data byte value
        +/- - ACK/NACK
        Sniffed traffic is encoded according to the table above. Data bytes are escaped with the '\' character.
        Send a single byte to exit, Bus Pirate responds 0x01 on exit.
        """

    def transfer(self, txdata):
        """ Bulk I2C write, send 1-16 bytes

        Bulk I2C allows multi-byte writes. The Bus Pirate expects xxxx+1 data bytes. Up to 16 data bytes can be sent at
        once. Note that 0000 indicates 1 byte because there’s no reason to send 0.

        BP replies 0×01 to the bulk I2C command. After each data byte the Bus Pirate returns the ACK (0x00) or
        NACK (0x01) bit from the slave device.

        Parameters
        ----------
        txdata: List of bytes
            Data to send (1-16 bytes)

        Returns
        -------
        status: List of bools
            Returns True(ACK) or False(NACK) for each transmitted byte

        Raises
        ------
        ValueError
            If more than 16 bytes are requested to be sent
        """
        length = len(txdata)
        if length > 16:
            ValueError('A maximum of 16 bytes can be sent')
        self.write(0x10 | (length-1))
        for data in txdata:
            self.write(data)

        if self.response(1, True) != b'\x01':
            raise ValueError("Could not transfer I2C data")

        self.timeout(self.minDelay * 9 * 2 * length)
        status = []
        for r in self.response(length, True):
            status.append(r == 0x00)
        return status

    @property
    def speed(self):
        """ Return current I2C clock speed

        Returns
        -------
        str
            I2C clock speed (5kHz, 50kHz, 100kHz, 400kHz)
        """
        return self.i2c_speed

    @speed.setter
    def speed(self, frequency):
        """ Set I2C speed

        Parameters
        ----------
        frequency : str
            I2C clock speed (5kHz, 50kHz, 100kHz, 400kHz)

        Raises
        ------
        ProtocolError
            If I2C speed could not be set
        """
        try:
            clock = I2C_speed[frequency]
        except KeyError:
            raise ValueError('Clock speed not supported')
        self.write(0x60 | clock)
        self.timeout(self.minDelay * 5)
        if b'\x01' != self.response(1, True):
            raise ProtocolError('Could not set IC2 speed')
        self.i2c_speed = frequency

    def write_then_read(self, numtx, numrx, txdata):
        """ Write then read

        This command internally sends I2C start, writes from 0-4096 bytes, then reads 0-4096 bytes into the Bus Pirates
        internal buffer, ACKing each byte internally until the final byte at which point it sends an NACK stop bit.

        All data for this command can be sent at once, and it will be buffered in the Bus Pirate. The write and read
        operations happen once the completed command has been passed to the Bus Pirate. Any write data is internally
        buffered by the Bus Pirate. At the end of the operation, any read data is returned from the buffer, be aware
        that the write buffer is re-used as the read buffer, as such any write data needs to be re-loaded if the command
         is re-executed.

        Write then read command format
        command (1byte)	number of write bytes (2bytes)	number of read bytes (2bytes)	bytes to write (0-4096bytes)
        Return data format
        success/0x01 (1byte)	bytes read from I2C (0-4096bytes)
        First send the write then read command (0x08)
        The next two bytes (High8/Low8) set the number of bytes to write (0 to 4096)
        The next two bytes (h/l) set the number of bytes to read (0 to 4096)
        If the number of bytes to read or write are out of bounds, the Bus Pirate will return 0x00 now
        Next, send the bytes to write. Bytes are buffered in the Bus Pirate, there is no acknowledgment that a byte is
        received.
        The Bus Pirate sends an I2C start bit, then all write bytes are sent at once. If an I2C write is not ACKed by a
         slave device, then the operation will abort and the Bus Pirate will return 0x00 now
        Read starts immediately after the write completes. Bytes are read from I2C into a buffer at max I2C speed
        (no waiting for UART). All read bytes are ACKed, except the last byte which is NACKed, this process is handled
         internally between the Bus Pirate and the I2C device
        At the end of the read process, the Bus Pirate sends an I2C stop
        The Bus Pirate now returns 0x01 to the PC, indicating success
        Finally, the buffered read bytes are returned to the PC
        Except as described above, there is no acknowledgment that a byte is received.

        Example
        Here's an example of a read from a typical 24AA EEPROM:

        PC------>Bus Pirate

        0x08 - command
        0x00 - Write count, Hi byte
        0x01 - Write count, Lo byte (E.G one byte to write)
        0x01 - Read count, Hi byte
        0x02 - Read count, Lo byte (E.G read 257 bytes (or more, up to the maximum allowable))
        0xA1 - The actual byte stream to write, if any (In this case the I2C read address)
        now wait while the Bus Pirate does it's business

        Bus Pirate----->PC

        0x01 - OK (would be 0x00 if the EEPROM doesn't answer the write with an ACK, in this case we wrote the read address)
        0x?? - read position 0
        ...
        0x?? - read position 256 - the requested number of bytes read from the I2C bus
        """
        self.write(0x08)
        self.write(numtx>>8 & 0xff)
        self.write(numtx & 0xff)
        self.write(numrx>>8 & 0xff)
        self.write(numrx & 0xff)
        for data in txdata:
            self.write(data)

        ## wait for transfer to BP and from BP - uart time
        self.timeout(self.minDelay * 16 * ((numtx+5) + (numrx)))
        ## wait - i2c transfer time
        i2cSpeedHz = int(self.speed[:-3]) * 1000
        self.timeout((1/i2cSpeedHz) * 9 * (2 + numtx + numrx))

        if b'\x01' != self.response(1, True):
            raise ProtocolError('Error in transmission')

        return self.response(numrx, True)

    def aux(self, cmd):
        """ Provides extended use of AUX pin. Requires one command byte. Bus Pirate acknowledges 0x01.

        Command	Function
        +-----|------------+
        |0x00 | AUX/CS low |
        |0x01 | AUX/CS high|
        |0x02 | AUX/CS HiZ |
        |0x03 | AUX read   |
        |0x10 | use AUX    |
        |0x20 | use CS     |
        +-----|------------+
        """

        # if cmd in [0x00, 0x01, 0x02, 0x03, 0x10, 0x20]:
        self.write(0x09)
        self.write(cmd)
        self.timeout(self.minDelay * 3 * 10)
        if b'\x01' != self.response(1, True):
                raise ProtocolError('Error in extended AUX command')
        # else:
            # raise ProtocolError('Illegal extended AUX command')

    # fixme can be moved to in BBIO_base?
    def configure_peripherals(self, peripherals_dict):
        """

        :param listOfPeripherals:
            The disc of peripherals to turn on or off, available options:
            {'POWER' : 1/0,
             'PULLUPS' : 1/0,
             'AUX' : 1/0,
             'CS' : 1/0
            }

        :return:
        """
        # order of this list must be the same as given option position in the BP command
        optionList = ['CS', 'AUX', 'PULLUPS', 'POWER']

        cmdByte = 0x40
        needWrite = False
        for key, value in peripherals_dict.items():
            try:
                bitNo = optionList.index(key)
                needWrite = True
                if 0 != value:
                    cmdByte |= (1 << bitNo)
            except ValueError:
                pass

        if True == needWrite:
            self.write(cmdByte)
            self.timeout(self.minDelay * 10 * 2)
            if b'\x01' != self.response(1, True):
                raise ProtocolError("Couldn't set requested peripheral's options")
