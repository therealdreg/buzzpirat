#!/usr/bin/env python
# encoding: utf-8
"""
Created by Sean Nelson on 2009-10-20.
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
# from seobject import permissiveRecords

"""
inary1WIRE mode:
# 00000000 - reset to BBIO
# 00000001 - mode version string (1W01)
# 00000010 - 1wire reset
# 00000100 - read byte
# 00001000 - ROM search macro (0xf0)
# 00001001 - ALARM search macro (0xec)
# 0001xxxx - Bulk transfer, send 1-16 bytes (0=1byte!)
# 0100wxyz - Configure peripherals w=power, x=pullups, y=AUX, z=CS (
# 0101wxyz - Read peripherals (planned, not implemented)
"""
import time
import re
from .BBIO_base import BBIO_base, BPError, ProtocolError

class OneWire(BBIO_base):

    def __init__(self, portname='', speed=115200, timeout=0.1, connect=True):
        super().__init__()

        if connect is True:
            self.connect(portname, speed, timeout)
            self.enter()


    def enter(self):
        """this implementation requries to be in the 'terminal' mode"""

        # send few times 0x0F to exit from any mode that the BP maight be, and reset the BP
        self.port.write(bytes([0x00, 0x00, 0x0F, 0x0F, ord('#'), ord('\n'), ord('#'), ord('\n')]))

        # clear any data that might be in the input buffer
        time.sleep(0.2)
        self.port.reset_input_buffer()

        #enter to the 1-wire mode
        self.port.write(b'm\n2\n')

        time.sleep(0.1)
        self.port.reset_input_buffer()

    def rom_search(self):
        self.port.reset_input_buffer()
        self.port.write(b'(240)\n')

        romsList = []
        rawResponseData = self.__read_until_timeout(inactiveTimeout = 0.15).decode()
        regExp = re.compile('([ ]*\d\.(\dx[a-f0-9]{2}\s){8})', re.IGNORECASE)
        foundROMs = regExp.findall(rawResponseData)
        romStrList = [] # will be used temporally to convert string: '0x12 0x13' to list of strings: ['0x12', '0x13']
        try:
            for rom in foundROMs:
                # get from index [0] -> this is the whole line that contains all bytes of ROM (as an hex string)
                # after stripping, get from third character to skip the sequence number of ROM in returned list eg: 1. 0x23 0x16...
                romStrList = rom[0].strip()[2:].split(' ')
                # save rom in the output list, convert each byte to integer value
                romsList.append([int(b, 16) for b in romStrList])
        except:
            pass

        return romsList

    def write_data(self, skipRom = True, romList=None, dataList=None):
        """

        :param skipRom  If set to True, then the SKIP-ROM command will be used. If set to False, then the rom (the list
            of rom bytes) also must be passed. In that case the MATCH-ROM command will be used:
        :param romList the list of rom bytes:
        :dataList list of bytes to write:
        :return:
        """
        if 0 == len(dataList):
            raise ProtocolError('Data list cannot be empty')

        self.port.reset_input_buffer()
        writeData = []
        if True == skipRom:

            for b in dataList:
                writeData += [ord(' '), *hex(b).encode()]

            writeBytes = bytes([ord('{'), ord(' '), *hex(0xCC).encode(), *writeData, ord('\n')])
            # print("write(): ", writeBytes)
            self.port.write(writeBytes)
        else:
            if 8 != len(romList):
                raise ProtocolError('ROM list must contain exactly 8 bytes')

            for b in [*romList, *dataList]:
                writeData += [ord(' '), *hex(b).encode()]

            writeBytes = bytes([ord('{'), ord(' '), *hex(0x55).encode(), *writeData, ord('\n')])
            # print("write(): ", writeBytes)
            self.port.write(writeBytes)

        self.timeout(self.minDelay * 10 * 3 * len(writeData))
        self.port.reset_input_buffer()


    def read_data(self, skipRom=True, romList=None, readCommand=0, bytesToRead=0):
        """

        :param skipRom  If set to True, then the SKIP-ROM command will be used. If set to False, then the rom (the list
            of rom bytes) also must be passed. In that case the MATCH-ROM command will be used:
        :param romList the list of rom bytes:
        :dataList list of bytes to write:
        :return:
        """
        self.port.reset_input_buffer()
        regExp = re.compile('READ\:\ .+', re.IGNORECASE)

        if True == skipRom:
            self.port.write(bytes([ord('{'), ord(' '), *hex(0xCC).encode(),
                                   ord(' '), *hex(readCommand).encode(),
                                   *list(' r:'.encode()), 0x30 + bytesToRead,
                                   ord('\n')
                                   ]))
        else:
            if 8 != len(romList):
                raise ProtocolError('ROM list must contain exactly 8 bytes')
            writeRom = []
            for b in romList:
                writeRom += [ord(' '), *hex(b).encode()]

            self.port.write(bytes([ord('{'), ord(' '), *hex(0x55).encode(),
                                   *writeRom,
                                   ord(' '), *hex(readCommand).encode(),
                                   *list(' r:'.encode()), 0x30 + bytesToRead,
                                   ord('\n')
                                   ]))

        # self.timeout(self.minDelay * 10 * 10)
        rawResponseData = self.__read_until_timeout(inactiveTimeout=0.15).decode()
        # print(rawResponseData)
        # search for line with read bytes, trim and skip the 'READ: '
        try:
            foundData = regExp.search(rawResponseData).group(0).strip()[6:]
            if len(foundData) > 0:
                return [int(b, 16) for b in foundData.split(' ')]
        except:
            print("Didn't received any data. Read command = ", rawResponseData)

        return []


    def configure_peripherals(self, peripherals_dict):
        """

        :param listOfPeripherals:
            The disc of peripherals to turn on or off, available options:
            {'POWER' : 1/0,
             'PULLUPS' : 1/0,
             'AUX' : 0/1/2 (low, hig, HIZ)
            }

        :return:
        """
        optionList = {'AUX' :[ord('a'), ord('A'), ord('@')],
                      'PULLUPS' : [ord('p'), ord('P')],
                      'POWER' : [ord('w'), ord('W')]}


        for key, value in peripherals_dict.items():
            try:
                self.port.write(bytes([optionList[key][value], ord('\n')]))
            except ValueError:
                pass


    def exit(self):
        self.port.write('#\n'.encode())

        time.sleep(0.1)
        self.port.reset_input_buffer()


    """
    :timeout in seconds:
    :return bytearray:
    """
    def __read_until_timeout(self, inactiveTimeout):
        retArray = bytearray()
        if (inactiveTimeout > 0):
            st = time.time()
            while (time.time() - st) < inactiveTimeout:
                if self.port.in_waiting > 0:
                    retArray.extend(self.port.read(self.port.in_waiting))
                    st = time.time()

                time.sleep(0.01)

        return retArray

    ## Below commented code was an implementation that use the binary scripting mode. But according to the
    ## bug in firmware XXX (default that was with BPv3.6) in 'write_bulk' implementation this approach was
    ## abandon for using the 'terminal' mode
    # def __init__(self, portname='', speed=115200, timeout=0.1, connect=True):
    #     super().__init__()
    #
    #     if connect is True:
    #         self.connect(portname, speed, timeout)
    #         self.enter()
    #
    # def enter(self):
    #     """ Enter 1-Wire mode
    #         todo
    #     Raises
    #     ------
    #     BPError
    #         todo
    #     """
    #     self.port.reset_input_buffer()
    #     if self.mode == '1wire':
    #         return
    #     if self.mode != 'bb':
    #         super(OneWire, self).enter()
    #     self.write(0x04)
    #     self.timeout(self.minDelay * 10 * 2)
    #     if self.response(4) == "1W01":
    #         self.mode = '1wire'
    #         self.recurse_end()
    #         return
    #     self.recurse_flush(self.enter)
    #     raise BPError('Could not enter 1wire mode')
    #
    #
    # # def enter_1wire(self):
    # #     self.__check_mode()
    # #     self.write(0x04)
    # #     self.timeout(self.minDelay * 10)
    # #     if self.response(4) == "1W01":
    # #         self.mode = '1wire'
    # #         self.bp_port = 0b00         # two bit port
    # #         self.bp_config = 0b0000
    # #         self._attempts_ = 1
    # #         return 1
    # #     return self.recurse_flush(self.enter_1wire)
    #
    # def __check_mode(self):
    #     if '1wire' != self.mode:
    #         BPError("Not in 1wire mode!. Aborting.")
    #
    # def reset(self):
    #     self.__check_mode()
    #     self.port.reset_input_buffer()
    #     self.write(0x02)
    #     self.timeout(self.minDelay * 10 * 2)
    #     if b'\x01' != self.response(1, True):
    #         raise ProtocolError('Could not send Reset symbol')
    #
    # def rom_search(self):
    #     """ Note, search command automatically sends Reset symbol """
    #     self.__check_mode()
    #     self.port.reset_input_buffer()
    #     self.write(0x08)
    #     self.timeout(self.minDelay * 10 * 2)
    #     # check response from BP if ack the command
    #     if b'\x01' != self.response(1, True):
    #         raise ProtocolError("Couldn't start rom searching command.")
    #
    #     rom_list = []
    #     start_tp = time.time()
    #     while (time.time() - start_tp < 0.2):
    #         if self.port.in_waiting >= 8:
    #             data = list(self.response(8, True))
    #             if (8 == data.count(0xFF)):
    #                 break
    #             else:
    #                 rom_list.append(data)
    #             start_tp = time.time() # reset timeout counter
    #         time.sleep(0.01)
    #
    #     return rom_list
    #
    #     # self.__group_response()
    #
    #
    # def alarm_search(self):
    #     self.__check_mode()
    #     self.port.write(chr(0x09))
    #     self.timeout(self.minDelay * 10 * 2)
    #     self.__group_response()
    #
    # # def __group_response(self):
    # #     self.__check_mode()
    # #     EOD = chr(0xff)
    # #     count = 0
    # #     while count < 8:
    # #         if count > 255:
    # #             raise IOError('EOD counter exceeded')
    # #         data = self.port.read(8)
    # #         if data == EOD:
    # #             count +=1
    # #         else:
    # #             print(data)
    #
    # #fixme can be moved to in BBIO_base?
    # def configure_peripherals(self, peripherals_dict):
    #     """
    #
    #     :param listOfPeripherals:
    #         The disc of peripherals to turn on or off, available options:
    #         {'POWER' : 1/0,
    #          'PULLUPS' : 1/0,
    #          'AUX' : 1/0,
    #          'CS' : 1/0
    #         }
    #
    #     :return:
    #     """
    #     # order of this list must be the same as given option position in the BP command
    #     optionList = ['CS', 'AUX', 'PULLUPS', 'POWER']
    #
    #     cmdByte = 0x40
    #     needWrite = False
    #     for key, value in peripherals_dict.items():
    #         try:
    #             bitNo = optionList.index(key)
    #             needWrite = True
    #             if 0 != value:
    #                 cmdByte |= (1 << bitNo)
    #         except ValueError:
    #             pass
    #
    #     if True == needWrite:
    #         self.write(cmdByte)
    #         self.timeout(self.minDelay * 10 * 2)
    #         if b'\x01' != self.response(1, True):
    #             raise ProtocolError("Couldn't set requested peripheral's options")
    #
    #
    # def bulk_write(self, raw_to_write):
    #     data_len = len(raw_to_write)
    #     if 0 == data_len or data_len > 16:
    #         raise BPError("Invalid data length")
    #
    #     self.__check_mode()
    #     self.port.reset_input_buffer()
    #
    #     # BP v3.6b firmware = xxx has bug in bulk write, so use bulk write with 1 byte transfer
    #
    #     # send the Reset symbol
    #     self.write(0x02)
    #     self.timeout(self.minDelay * 2 * 10)
    #     if b'\x01' != self.response(1, True):
    #         print("Dbg: BP didn't accepted the RESET symbol")
    #     # now send each byte with command to bulk transfer - expecting double 0x01 in response (on for command, one for ack of data)
    #     # cmd = 0x10 | ((data_len - 1 ) & 0x0F)
    #     # self.write(cmd)
    #
    #     for d in raw_to_write:
    #         self.port.write(bytes([0x10, d]))
    #         # self.timeout(self.minDelay * 10 * 2)
    #         if b'\x01\x01' != self.response(2, True):
    #             print("Dbg: BP didn't accepted bulk write cmd and 1 byte data")
    #
