/*
 * This file is part of the Bus Pirate project
 * (http://code.google.com/p/the-bus-pirate/).
 *
 * Written and maintained by the Bus Pirate project.
 *
 * To the extent possible under law, the project has waived all copyright and
 * related or neighboring rights to Bus Pirate. This work is published from
 * United States.
 *
 * For details see: http://creativecommons.org/publicdomain/zero/1.0/
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.
 */

#include "openocd.h"

#ifdef BP_JTAG_OPENOCD_SUPPORT

#include "base.h"
#include "binary_io.h"
#include "core.h"

extern mode_configuration_t mode_configuration;
extern bus_pirate_configuration_t bus_pirate_configuration;

// tris registers
#define OOCD_TDO_TRIS BP_MISO_DIR
#define OOCD_TMS_TRIS BP_CS_DIR
#define OOCD_CLK_TRIS BP_CLK_DIR
#define OOCD_TDI_TRIS BP_MOSI_DIR
#define OOCD_SRST_TRIS BP_AUX0_DIR
#define OOCD_TRST_TRIS BP_PGD_DIR

// io ports
#define OOCD_TDO BP_MISO
#define OOCD_TMS BP_CS
#define OOCD_CLK BP_CLK
#define OOCD_TDI BP_MOSI
#define OOCD_SRST BP_AUX0
#define OOCD_TRST BP_PGD

// open-drain control
#define OOCD_TDO_ODC BP_MISO_ODC
#define OOCD_TMS_ODC BP_CS_ODC
#define OOCD_CLK_ODC BP_CLK_ODC
#define OOCD_TDI_ODC BP_MOSI_ODC
#define OOCD_SRST_ODC BP_AUX0_ODC
#define OOCD_TRST_ODC BP_PGD


#define CMD_UNKNOWN 0x00
#define CMD_PORT_MODE 0x01
#define CMD_FEATURE 0x02
#define CMD_READ_ADCS 0x03
//#define CMD_TAP_SHIFT     0x04 // old protocol
#define CMD_TAP_SHIFT 0x05
#define CMD_ENTER_OOCD 0x06 // this is the same as in binIO
#define CMD_UART_SPEED 0x07
#define CMD_JTAG_SPEED 0x08

static void binOpenOCDPinMode(unsigned char mode);
static void binOpenOCDHandleFeature(unsigned char feat, unsigned char action);
extern void binOpenOCDTapShiftFast(unsigned char *in_buf,
                                   unsigned char *out_buf, unsigned int bits,
                                   unsigned int delay);

enum {
  FEATURE_LED = 0x01,
  FEATURE_VREG = 0x02,
  FEATURE_TRST = 0x04,
  FEATURE_SRST = 0x08,
  FEATURE_PULLUP = 0x10
};

enum { SERIAL_NORMAL = 0, SERIAL_FAST = 1 };

enum {
  MODE_HIZ = 0,
  MODE_JTAG = 1,
  MODE_JTAG_OD = 2, // open-drain outputs
};

static unsigned int openocd_jtag_delay;

void binOpenOCD(void) {
  uint8_t *buf = bus_pirate_configuration.terminal_input;
  unsigned int i, j;
  unsigned char inByte;
  unsigned char inByte2;

  openocd_jtag_delay = 1;

  MSG_OPENOCD_MODE_IDENTIFIER;

  for (;;) {
    /*
    this will misbehave when polling is turned off in OpenOCD

                    // enable timeout timer (1sec) taken from AUX measurement
                    T4CON=0;
                    TMR5HLD=0x00; // reset the counter
                    TMR4=0x00;
                    T4CON=0b1000; // 32bit timer
                    PR5=0x1e8;  // 0xf4;
                    PR4=0x4800; // 0x2400;
                    IFS1bits.T5IF=0;

                    // enable timer
                    T4CONbits.TON=1;

                    // wait for byte or timeout
                    while(U1STAbits.URXDA == 0 && IFS1bits.T5IF==0);

                    if (IFS1bits.T5IF==1) {
                            // disable timer
                            T4CONbits.TON=0;
                            // we timeouted, set serial to normal speed
                            UART1Speed(UART_NORMAL_SPEED);
                            return;
                    }

                    // disable timer
                    T4CONbits.TON=0;

                    // read the byte
                    inByte=U1RXREG;
    */
    inByte = user_serial_read_byte();

    switch (inByte) {
    case CMD_UNKNOWN:
      return;
    case CMD_ENTER_OOCD:
      MSG_OPENOCD_MODE_IDENTIFIER;
      break;
    case CMD_READ_ADCS:
      buf[0] = CMD_READ_ADCS;
      buf[1] = 8;
      AD1CON1bits.ADON = ON;
      i = bp_read_adc(BP_ADC_PROBE);
      buf[2] = (unsigned char)(i >> 8);
      buf[3] = (unsigned char)(i);
      i = bp_read_adc(BP_ADC_VPU);
      buf[4] = (unsigned char)(i >> 8);
      buf[5] = (unsigned char)(i);
      i = bp_read_adc(BP_ADC_3V3);
      buf[6] = (unsigned char)(i >> 8);
      buf[7] = (unsigned char)(i);
      i = bp_read_adc(BP_ADC_5V0);
      buf[8] = (unsigned char)(i >> 8);
      buf[9] = (unsigned char)(i);
      AD1CON1bits.ADON = OFF;
      bp_write_buffer(buf, 10);
      break;
    case CMD_PORT_MODE:
      inByte = user_serial_read_byte();
      binOpenOCDPinMode(inByte);
      break;
    case CMD_FEATURE:
      inByte = user_serial_read_byte();
      inByte2 = user_serial_read_byte();
      binOpenOCDHandleFeature(inByte, inByte2);
      break;
    case CMD_JTAG_SPEED:
      inByte = user_serial_read_byte();
      inByte2 = user_serial_read_byte();
      openocd_jtag_delay = (inByte << 8) | inByte2;
      break;
    case CMD_UART_SPEED:
      inByte = user_serial_read_byte();
      i = inByte;
      if (inByte == SERIAL_FAST) {
        user_serial_set_baud_rate(UART_FAST_SPEED);
      } else {
        user_serial_set_baud_rate(UART_NORMAL_SPEED);
      }

      inByte = user_serial_read_byte();
      inByte2 = user_serial_read_byte();
      if ((inByte != 0xAA) || (inByte2 != 0x55)) {
        i = SERIAL_NORMAL;
        user_serial_set_baud_rate(UART_NORMAL_SPEED);
      }

      buf[0] = CMD_UART_SPEED;
      buf[1] = (unsigned char)i;
      bp_write_buffer(buf, 2);
      break;
    case CMD_TAP_SHIFT: {
      inByte = user_serial_read_byte();
      inByte2 = user_serial_read_byte();

      IFS0bits.U1RXIF = 0; // reset the RX flag

      j = (inByte << 8) | inByte2; // number of bit sequences

      if (BP_JTAG_OPENOCD_BIT_SEQUENCES_LIMIT < j) {
          j = BP_JTAG_OPENOCD_BIT_SEQUENCES_LIMIT;
      }
      buf[0] = CMD_TAP_SHIFT;
      buf[1] = inByte;
      buf[2] = inByte2;
      bp_write_buffer(buf, 3);

      i = (j + 7) / 8; // number of bytes used

      // prepare the interrupt transfer
      UART1RXBuf = (unsigned char *)bus_pirate_configuration.terminal_input;
      UART1RXToRecv = 2 * i;
      UART1RXRecvd = 0;

      UART1TXBuf =
          (unsigned char *)(bus_pirate_configuration.terminal_input +
                            2100); // 2048 bytes + 3 command header + to be sure
      UART1TXSent = 0;
      UART1TXAvailable = 0;

      // enable RX interrupt
      IEC0bits.U1RXIE = 1;

      binOpenOCDTapShiftFast(UART1RXBuf, UART1TXBuf, j, openocd_jtag_delay);

      break;
    }
    default:
      buf[0] = 0x00; // unknown command
      buf[1] = 0x00;
      /* Should this be 2 bytes long? */
      bp_write_buffer(buf, 1);
      break;
    }
  }
}

static void binOpenOCDPinMode(unsigned char mode) {
  // reset all pins
  OOCD_TMS = 0;
  OOCD_TDI = 0;
  OOCD_CLK = 0;
  OOCD_SRST = 0;
  OOCD_TRST = 0;
  // setup open-drain if necessary
  if (mode == MODE_JTAG_OD) {
    OOCD_TMS_ODC = 1;
    OOCD_CLK_ODC = 1;
    OOCD_TDI_ODC = 1;
    OOCD_SRST_ODC = 1;
    OOCD_TRST_ODC = 1;
  } else {
    OOCD_TMS_ODC = 0;
    OOCD_CLK_ODC = 0;
    OOCD_TDI_ODC = 0;
    OOCD_SRST_ODC = 0;
    OOCD_TRST_ODC = 0;
  }
  // make pins output
  if (mode == MODE_JTAG || mode == MODE_JTAG_OD) {
    OOCD_TMS_TRIS = 0;
    OOCD_TDI_TRIS = 0;
    OOCD_CLK_TRIS = 0;
    OOCD_SRST_TRIS = 0;
    OOCD_TRST_TRIS = 0;
    OOCD_TDO_TRIS = 1;
  } else {
    OOCD_TMS_TRIS = 1;
    OOCD_TDI_TRIS = 1;
    OOCD_CLK_TRIS = 1;
    OOCD_SRST_TRIS = 1;
    OOCD_TRST_TRIS = 1;
    OOCD_TDO_TRIS = 1;
  }
}

static void binOpenOCDHandleFeature(unsigned char feat, unsigned char action) {
  switch (feat) {
  case FEATURE_LED:
    bp_set_mode_led_state(action ? ON : OFF);
    break;
    
  case FEATURE_VREG:
    bp_set_voltage_regulator_state(action ? ON : OFF);
    break;
    
  case FEATURE_PULLUP:
    bp_set_pullup_state(action ? ON : OFF);
    break;
    
  case FEATURE_TRST:
    OOCD_TRST = action;
    break;
    
  case FEATURE_SRST:
    OOCD_SRST = action;
    break;
    
  default:
    break;
  }
}

#endif /* BP_JTAG_OPENOCD_SUPPORT */
