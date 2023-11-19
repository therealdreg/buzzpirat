/*
 * This file is part of the Bus Pirate project
 * (https://github.com/BusPirate/Bus_Pirate/).
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

#include "uart2.h"

#if defined(BP_ENABLE_UART_SUPPORT)

#include "base.h"

/* PPS Settings. */

#define UARTRX_PIN BP_MISO_RPIN
#define UARTTX_PIN BP_MOSI_RPOUT
#define UARTTX_ODC BP_MOSI_ODC

void uart2_setup(const uint16_t baud_rate_generator_prescaler,
                 const bool open_drain_output, const bool invert_polarity,
                 const uint8_t databits_and_parity, const bool stop_bits) {

  /* Set open drain output mode. */
  UARTTX_ODC = (open_drain_output == UART2_OPEN_DRAIN) ? OPEN_DRAIN : PUSH_PULL;

  /* Map RB7 as UART TX. */
  RPINR19bits.U2RXR = UARTRX_PIN;
  UARTTX_PIN = U2TX_IO;

  /* Set UART2 baud rate generator prescaler. */
  U2BRG = baud_rate_generator_prescaler;

  /*
   * U2MODE - UART2 MODE REGISTER
   *
   * MSB
   * 0x000x00000C1BBA
   * | ||| ||||||||||
   * | ||| |||||||||+-- STSEL:  One or two stop bits.
   * | ||| |||||||++--- PDSEL:  Data bits and parity.
   * | ||| ||||||+----- BRGH:   High speed mode (baud clock from Fcy/4).
   * | ||| |||||+------ RXINV:  RX Idle state high/low.
   * | ||| ||||+------- ABAUD:  Baud rate measurement disabled.
   * | ||| |||+-------- LPBACK: Loopback mode disabled.
   * | ||| ||+--------- WAKE:   No wake-up enabled.
   * | ||| ++---------- UEN:    CTS and RTS controlled by port latches.
   * | ||+------------- RTSMD:  RTS pin in Flow Control mode.
   * | |+-------------- IREN:   IrDA encoder/decoder disabled.
   * | +--------------- USIDL:  Continue module operation in Idle mode.
   * +----------------- UARTEN: Disable port.
   */
  U2MODE = (MASKBOTTOM8(stop_bits, 1) << _U2MODE_STSEL_POSITION) |
           (MASKBOTTOM8(databits_and_parity, 2) << _U2MODE_PDSEL_POSITION) |
           _U2MODE_BRGH_MASK |
           (MASKBOTTOM8(invert_polarity, 1) << _U2MODE_RXINV_POSITION);

  /*
   * U2STA - UART2 STATUS REGISTER
   *
   * MSB
   * 0A0x00--000---0-
   * ||| ||  |||   |
   * ||| ||  |||   +--- OERR:    Clear overrun error status bit.
   * ||| ||  ||+------- ADDEN:   Address detect mode disabled.
   * ||| ||  ++-------- URXISEL: RX Interrupt on every incoming byte.
   * ||| |+------------ UTXEN:   Transmission disabled.
   * ||| +------------- UTXBRK:  Sync break transmission disabled.
   * +-+--------------- UTXISEL: TX Interrupt on every outgoing byte.
   *  +---------------- UTXINV:  TX Idle state high/low.
   */
  U2STA = MASKBOTTOM8(invert_polarity, 1) << _U2STA_UTXINV_POSITION;
}

void uart2_enable(void) {
  /* Enable UART port. */
  U2MODEbits.UARTEN = ON;

  /* Enable data transmission. */
  U2STAbits.UTXEN = ON;

  /* Clear UART2 interrupt flag. */
  IFS1bits.U2RXIF = OFF;

  /*
   * Tristate bits are ignored by the PPS peripheral, and are set here only to
   * allow the 'v' command to report the right direction.
   */
  BP_MOSI_DIR = OUTPUT;
}

void uart2_disable(void) {
  /* Disable UART port. */
  U2MODEbits.UARTEN = OFF;

  /* Enable data transmission. */
  U2STAbits.UTXEN = OFF;

  /* Map pin RB7 as UART2 RX. */
  RPINR19bits.U2RXR = 0b11111;

  /* Remove PPS assignment. */
  UARTTX_PIN = OFF;
  UARTTX_ODC = OFF;

  /*
   * Tristate bits are ignored by the PPS peripheral, and are set here only to
   * allow the 'v' command to report the right direction.
   */
  BP_MOSI_DIR = INPUT;
}

void uart2_tx(const uint8_t character) {
  /* Wait until the TX buffer is empty. */
  while (U2STAbits.UTXBF == ON) {
  }

  U2TXREG = character;
}

uint8_t uart2_rx(void) {
  /* Wait until the RX buffer is full. */
  while (U2STAbits.URXDA == OFF) {
  }

  return (uint8_t)(U2RXREG & 0xFF);
}

inline bool uart2_rx_ready(void) { return U2STAbits.URXDA; }

#endif /* BP_ENABLE_UART_SUPPORT */
