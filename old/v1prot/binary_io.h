/*
 * This file is part of the Bus Pirate project
 * (http://code.google.com/p/the-bus-pirate/).
 *
 * Written and maintained by the Bus Pirate project.
 *
 * To the extent possible under law, the project has
 * waived all copyright and related or neighboring rights to Bus Pirate. This
 * work is published from United States.
 *
 * For details see: http://creativecommons.org/publicdomain/zero/1.0/.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

#ifndef BP_BINARY_IO_H
#define BP_BINARY_IO_H

#include <stdint.h>

/**
 * Result code indicating a successful binary I/O operation.
 */
#define BP_BINARY_IO_RESULT_SUCCESS 0x01

/**
 * Result code indicating a failed binary I/O operation.
 */
#define BP_BINARY_IO_RESULT_FAILURE 0x00

/**
 * @def REPORT_IO_SUCCESS()
 *
 * Outputs a success code to the binary I/O channel.
 */
#define REPORT_IO_SUCCESS()                                                    \
  do {                                                                         \
    user_serial_transmit_character(BP_BINARY_IO_RESULT_SUCCESS);               \
  } while (0)

/**
 * @def REPORT_IO_FAILURE()
 *
 * Outputs a failure code to the binary I/O channel.
 */
#define REPORT_IO_FAILURE()                                                    \
  do {                                                                         \
    user_serial_transmit_character(BP_BINARY_IO_RESULT_FAILURE);               \
  } while (0)

void enter_binary_bitbang_mode(void);

/**
 * Sets the direction of the various I/O pins.
 *
 * Bits set to 1 are for pins that must be set in INPUT mode, while bits set to
 * 0 indicate pins that must be set to OUTPUT mode.
 *
 * The bitmask is as follows:
 *
 * <table>
 * <tr><th>Bit #</th><th>Pin</th></tr>
 * <tr><td>7</td><td>Unused</td></tr>
 * <tr><td>6</td><td>Unused</td></tr>
 * <tr><td>5</td><td>Unused</td></tr>
 * <tr><td>4</td><td><tt>AUX0</tt></td></tr>
 * <tr><td>3</td><td><tt>MOSI</tt></td></tr>
 * <tr><td>2</td><td><tt>CLK</tt></td></tr>
 * <tr><td>1</td><td><tt>MISO</tt></td></tr>
 * <tr><td>0</td><td><tt>CS</tt></td></tr>
 * </table>
 *
 * @param[in] direction_mask the bitmask indicating the directions to assign to
 * I/O pins.
 *
 * @return the current state of the pins.
 */
uint8_t bitbang_pin_direction_set(const uint8_t direction_mask);

/**
 * Sets the state of the various I/O pins.
 *
 * Bits set to 1 are for pins that must be set HIGH, while bits set to 0
 * indicate pins that must be set LOW.
 *
 * The bitmask is as follows:
 *
 * <table>
 * <tr><th>Bit #</th><th>Pin</th></tr>
 * <tr><td>7</td><td>Unused</td></tr>
 * <tr><td>6</td><td>Voltage regulator</td></tr>
 * <tr><td>5</td><td>Pullups</td></tr>
 * <tr><td>4</td><td><tt>AUX0</tt></td></tr>
 * <tr><td>3</td><td><tt>MOSI</tt></td></tr>
 * <tr><td>2</td><td><tt>CLK</tt></td></tr>
 * <tr><td>1</td><td><tt>MISO</tt></td></tr>
 * <tr><td>0</td><td><tt>CS</tt></td></tr>
 * </table>
 *
 * @param[in] state_mask the bitmask indicating the states to assign to I/O
 * pins.
 *
 * @return the current state of the pins.
 */
uint8_t bitbang_pin_state_set(const uint8_t state_mask);

void bp_binary_io_peripherals_set(uint8_t input_byte);

#ifdef BUSPIRATEV4
bool bp_binary_io_pullup_control(uint8_t control_byte);
#endif /* BUSPIRATEV4 */

#endif /* !BP_BINARY_IO_H */