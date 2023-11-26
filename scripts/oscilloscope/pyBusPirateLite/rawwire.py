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

from .BitBang import BitBang
from .BBIO_base import  BBIO_base, BBIO_base, BPError, ProtocolError


class RawWireCfg:
    NA = 0x01
    LSB = 0x02
    _3WIRE = 0x04
    OUTPUT = 0x08


class RawWire(BBIO_base):
    def enter(self):
        """Enter raw wire mode

        Raw-wire binary mode provides access to the Bus Pirate's raw 2- and 3-wire libraries.
        This new mode will make it easier to script operations on arbitrary serial protocols
        used by devices like smart cards, shift registers, etc.
        """
        if self.mode == 'raw':
            return
        if self.mode != 'bb':
            super(RawWire, self).enter()

        # self.reset()
        self.write(0x05)
        self.timeout(self.minDelay * 5 * 10)
        if self.response(4) == "RAW1":
            self.mode = 'raw'
            self.bp_port = 0b00  # two bit port
            self.bp_config = 0b0000
            self.recurse_end()
            return
        self.recurse_flush(self.enter)
        raise BPError('Could not enter to RAW-WIRE mode')


    def check_mode(self, mode):
        if 'raw' != mode:
            raise BPError("Not in RAW-WIRE mode")

    def start_bit(self):
        """is kept in because it was in for legacy code,
        I recommend you use send_start_bit"""
        self.check_mode('raw')
        self.write(0x02)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't send start bit")

    def stop_bit(self):
        """is kept in because it was in for legacy code,
        I recommend you use send_stop_bit"""
        self.check_mode('raw')
        self.write(0x03)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't send stop bit")

    def read_bit(self):
        self.check_mode('raw')
        self.write(0x07)
        self.timeout(self.minDelay * 2 * 10)
        bit =  self.response(1, True)
        if len(bit) == 0:
            raise ProtocolError("Couldn't ...")

        return int(bit[0])

    def peek(self):
        self.check_mode('raw')
        self.write(0x08)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't ...")

    def clock_tick(self):
        self.check_mode('raw')
        self.write(0x09)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't ...")

    def clock_low(self):
        self.check_mode('raw')
        self.write(0x0a)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't set clock line to LOW")

    def clock_high(self):
        self.check_mode('raw')
        self.write(0x0b)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't set clock line to HIGH")

    def data_low(self):
        self.check_mode('raw')
        self.write(0x0c)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't set data line to LOW")

    def data_high(self):
        self.check_mode('raw')
        self.write(0x0d)
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't set data line to HIGH")


    # def wire_cfg(self, pins = 0):
    #     # fixme
    #     self.check_mode('raw')
    #     self.write(0x80 | pins))
    #     self.timeout(self.minDelay * 2 * 10)
    #     if b'\x01' != self.response(1, True):
    #         raise ProtocolError("Couldn't ...")


    def configure_peripherals(self, peripherals_dict):
        """

        :param listOfPeripherals:
            The disc of peripherals to turn on or off, avaiable options:
            {'POWER' : 1/0,
             'PULLUPS' : 1/0,
             'AUX' : 1/0,
             'CS' : 1/0
            }

        :return:
        """
        # order must be the same as given option position in the BP command
        optionList = ['CS', 'AUX', 'PULLUPS', 'POWER']

        self.check_mode('raw')
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


    #if someone who cares could write a more user-friendly wire_cfg that would be cool
    # (make it similar to my configure_peripherals)

    def bulk_clock_ticks(self, ticks = 1):
        self.check_mode('raw')
        self.write(0x20 | (ticks - 1))
        self.timeout(self.minDelay * 2 * 10)
        if b'\x01' != self.response(1, True):
            raise ProtocolError("Couldn't ...")


    def bulk_transfer(self, dataList):
        """
        Bulk write transfers a packet of xxxx+1 bytes to the bus. Up to 16 data bytes can be sent at once. Note that 0000
        indicates 1 byte because there’s no reason to send 0. BP replies 0×01 to each byte in 2wire mode, returns the bus
        read in 3wire (SPI) mode.

        :param dataList:


        """
        bytesLen = len(dataList)
        if (bytesLen > 16):
            bytesLen = 16
        elif (0 == bytesLen):
            raise ProtocolError("Need some bytes to send!")

        cmd = 0x10 | (bytesLen-1)
        self.write(cmd)
        for i in range(bytesLen):
            self.write(dataList[i])

        if  b'\x01' != self.response(1, True):
            raise ValueError("Could not transfer I2C data")

        self.timeout(self.minDelay * 10 * 2 * bytesLen)
        response = self.response(bytesLen, True)
        if bytesLen != response.count(b'\x01'):
            raise ProtocolError('BP doesn\'t replied with expected data.')