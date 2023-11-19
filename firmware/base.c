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

/**
 * @file base.c
 *
 * @brief Base functions implementation file.
 */

#include "base.h"
#include "core.h"

/**
 * @brief Prefix string for hexadecimal values in human-readable form.
 */
static const uint8_t HEX_PREFIX[] = {'0', 'x'};

/**
 * @brief Look-up table for hexadecimal to ASCII transformations.
 */
static const unsigned char HEX_ASCII_TABLE[] = {'0', '1', '2', '3', '4', '5',
                                                '6', '7', '8', '9', 'A', 'B',
                                                'C', 'D', 'E', 'F'};


extern bus_pirate_configuration_t bus_pirate_configuration;
extern mode_configuration_t mode_configuration;

#pragma config FNOSC = FRCPLL
#pragma config OSCIOFNC = ON
#pragma config POSCMOD = NONE
#pragma config I2C1SEL = PRI
#pragma config JTAGEN = OFF
#pragma config GCP = OFF
#pragma config GWRP = OFF
#pragma config FWDTEN = OFF
#pragma config ICS = PGx1


/**
 * @brief Clear configuration on mode change.
 */
static void clear_mode_configuration(void);

/**
 * @brief Prints the given value to the serial port as a decimal number.
 *
 * @warning the denominator *must* be equal to 10^digits.
 *
 * @param[in] value the value to print.
 * @param[in] denominator the divisor to use when printing the value.
 * @param[in] digits how many digits to print.
 */
static void print_decimal(const uint32_t value, const uint32_t denominator,
                          const uint8_t digits);

#ifdef BP_USE_HARDWARE_DELAY_TIMER

/**
 * @brief Pauses execution for the given amount of microseconds.
 *
 * Unlike delay_short, this function handles delays longer than 16384
 * microseconds.
 *
 * @param[in] microseconds the amount of microseconds to wait.
 *
 * @see delay_short
 */
static void delay_long(uint32_t microseconds);

/**
 * @brief Pauses execution for the given amount of microseconds.
 *
 * This function can delay execution up to 16384 microseconds.  For longer
 * delays, use delay_long.
 *
 * @param[in] microseconds the amount of microseconds to wait.
 *
 * @see delay_long
 */
static inline void delay_short(uint16_t microseconds);

#endif /* BP_USE_HARDWARE_DELAY_TIMER */

void clear_mode_configuration(void) {
  mode_configuration.high_impedance = OFF;
  mode_configuration.speed = 0;
  mode_configuration.periodicService = OFF;
  mode_configuration.alternate_aux = 0;
  mode_configuration.little_endian = NO;
}

void bp_reset_board_state(void) {
  BP_MOSI_DIR = INPUT;
  BP_CLK_DIR = INPUT;
  BP_MISO_DIR = INPUT;
  BP_CS_DIR = INPUT;
  BP_AUX0_DIR = INPUT;
  BP_TP0_DIR = INPUT;
  bp_disable_mode_led();
  bp_enable_usb_led();

  /* Detach source from the currently-set AUX pin. */
  BP_AUX_RPOUT = OFF;

  bus_pirate_configuration.bus_mode = BP_HIZ;
  clear_mode_configuration();
  bp_disable_pullup();
  bp_disable_voltage_regulator();
  bp_adc_pin_setup();

  /* Configure the ADC. */

  /* Enable automatic sample conversion. */
  AD1CON1bits.SSRC = 0b111;

  /*
   * AD1CSSL : A/D INPUT SCAN SELECT REGISTER
   *
   * MSB
   * 0--0000000000000
   * |  |||||||||||||
   * |  +++++++++++++-- CSSL{12:0}: Omit A/D input pins from scan.
   * +----------------- CSSL15:     Band gap voltage reference not scanned.
   */
  AD1CSSL = 0x0000;

  /*
   * AD1CON3 : A/D CONTROL REGISTER 3
   *
   * MSB
   * 0--1111100000010
   * |  |||||||||||||
   * |  |||||++++++++-- ADCS: A/D conversion clock is 3 * Tcy.
   * |  +++++---------- SAMC: Sample time is 31 * Tad (Tad = 3 * Tcy).
   * +----------------- ADRC: Clock is derived from system clock.
   */
  AD1CON3 = 0x1F02;

  /*
   * AD1CON2 : A/D CONTROL REGISTER 2
   *
   * MSB
   * 000--0--x-000000
   * |||  |    ||||||
   * |||  |    |||||+-- ALTS:  Use MUX A input settings.
   * |||  |    ||||+--- BUFM:  Buffer is one single 16-bits word.
   * |||  |    ++++---- SMPI:  Interrupt on each sample conversion completion.
   * |||  +------------ CSCNA: Do not scan inputs.
   * +++--------------- VCFG:  VR+ is AVdd and VR- is AVss.
   */
  AD1CON2 = 0x0000;
}

uint16_t bp_read_adc(const uint16_t channel) {

  /* Set channel. */
  AD1CHS = channel;

  /* Trigger sample. */
  AD1CON1bits.SAMP = ON;

  /* Clear "done" flag. */
  AD1CON1bits.DONE = OFF;

  /* Wait for conversion to finish. */
  while (AD1CON1bits.DONE == OFF) {
  }

  /* Return value. */
  return ADC1BUF0;
}

void bp_adc_probe(void) {
  /* Turn the ADC on. */
  bp_enable_adc();

  /* Perform the measurement. */
  bp_write_voltage(bp_read_adc(BP_ADC_PROBE));

  /* Turn the ADC off. */
  bp_disable_adc();
}

void bp_adc_continuous_probe(void) {
  uint16_t measurement;

  MSG_ADC_VOLTMETER_MODE;
  MSG_ANY_KEY_TO_EXIT_PROMPT;
  MSG_ADC_VOLTAGE_PROBE_HEADER;
  bp_write_voltage(0);
  MSG_VOLTAGE_UNIT;

  /* Perform ADC probes until a character is sent to the serial port. */
  while (!user_serial_ready_to_read()) {
    /* Turn the ADC on. */
    AD1CON1bits.ADON = ON;

    /* Perform the measurement. */
    measurement = bp_read_adc(BP_ADC_PROBE);

    /* Turn the ADC off. */
    AD1CON1bits.ADON = OFF;

    /* Erase previous measurement. */
    bp_write_string("\x08\x08\x08\x08\x08");

    /* Print new measurement. */
    bp_write_voltage(measurement);
    MSG_VOLTAGE_UNIT;
  }

  /* Flush the incoming serial buffer. */
  user_serial_read_byte();
  bpBR;
}

void bp_write_formatted_integer(const uint16_t value) {
  uint16_t integer;

  integer = (mode_configuration.numbits < 16)
                ? MASKBOTTOM16(value, mode_configuration.numbits)
                : value;

  switch (bus_pirate_configuration.display_mode) {
  case HEX:
    if (mode_configuration.int16 == YES) {
      bp_write_hex_word(value);
    } else {
      bp_write_hex_byte(value);
    }
    break;

  case DEC:
    if (mode_configuration.int16 == YES) {
      bp_write_dec_word(value);
    } else {
      bp_write_dec_byte(value);
    }
    break;

  case BIN:
    if (mode_configuration.int16 == YES) {
      bp_write_bin_byte(value >> 8);
      bpSP;
    }
    bp_write_bin_byte(value & 0xFF);
    break;

  case RAW:
    if (mode_configuration.int16 == YES) {
      user_serial_transmit_character(value >> 8);
    }
    user_serial_transmit_character(value & 0xFF);
    break;
  }
}

inline uint8_t bp_reverse_byte(const uint8_t value) {
  return bp_reverse_integer(value, 8);
}

inline uint16_t bp_reverse_word(const uint16_t value) {
  return bp_reverse_integer(value, 16);
}

uint16_t bp_reverse_integer(const uint16_t value, const uint8_t bits) {
  uint16_t reversed;
  uint16_t bitmask;

  reversed = 0;
  bitmask = 1;
  while (bitmask != 0) {
    reversed <<= 1;
    if (value & bitmask) {
      reversed |= 0b00000001;
    }
    bitmask <<= 1;
  }

  return reversed >> ((sizeof(uint16_t) * 8) - bits);
}

void bp_write_buffer(const uint8_t *buffer, const size_t length) {
  size_t offset;

  for (offset = 0; offset < length; offset++) {
    user_serial_transmit_character(buffer[offset]);
  }
}

void bp_write_string(const char *string) {
  char character;
  while ((character = *string++)) {
    user_serial_transmit_character(character);
  }
}

void bp_write_line(const char *string) {
  bp_write_string(string);

  user_serial_transmit_character(0x0D);
  user_serial_transmit_character(0x0A);
}

void bp_write_bin_byte(const uint8_t value) {
  uint8_t mask = 0x80;
  size_t index;

  MSG_BINARY_NUMBER_PREFIX;

  for (index = 0; index < 8; index++) {
    user_serial_transmit_character((value & mask) ? '1' : '0');
    mask >>= 1;
  }
}

void bp_write_dec_dword_friendly(const uint32_t value) {
  unsigned long int temp;
  int mld, mil;
  uint32_t number;

  number = value;
  mld = 0;
  mil = 0;
  temp = 0;

  if (number >= 1000000) {
    temp = number / 1000000;
    bp_write_dec_word(temp);
    user_serial_transmit_character(',');
    number %= 1000000;
    if (number < 1000)
      bp_write_string("000,");
    mld = 1;
    mil = 1;
  }
  if (number >= 1000) {
    temp = number / 1000;
    if (temp >= 100) {
      bp_write_dec_word(temp);
    } else if (mld) {
      if (temp >= 10) {
        user_serial_transmit_character('0'); // 1 leading zero
      } else {
        bp_write_string("00");
      }
      bp_write_dec_word(temp);
    } else
      bp_write_dec_word(temp);
    user_serial_transmit_character(',');
    number %= 1000;
    mil = 1;
  }
  if (number >= 100) {
    bp_write_dec_word(number);
  } else if (mil) {
    if (number >= 10) {
      user_serial_transmit_character('0'); // 1 leading zero
    } else {
      bp_write_string("00");
    }
    bp_write_dec_word(number);
  } else
    bp_write_dec_word(number);
}

void print_decimal(const uint32_t value, const uint32_t denominator,
                   const uint8_t digits) {
  uint32_t number;
  uint32_t divisor;
  uint32_t current;
  uint8_t digit;
  bool first;

  first = false;
  number = value;
  divisor = denominator;

  if (!value) {
    user_serial_transmit_character('0');
    return;
  }

  for (digit = 0; digit < digits; digit++) {
    current = number / divisor;
    if (first || (current > 0)) {
      user_serial_transmit_character(current + '0');
      number -= (current * divisor);
      first = true;
    }

    divisor /= 10;
  }
}

void bp_write_dec_dword(const uint32_t value) {
  print_decimal(value, 10000000, 8);
}

void bp_write_dec_word(const uint16_t value) { print_decimal(value, 10000, 5); }

void bp_write_dec_byte(const uint8_t value) { print_decimal(value, 100, 3); }

void bp_write_hex_byte(const uint8_t value) {
  MSG_HEXADECIMAL_NUMBER_PREFIX;
  user_serial_transmit_character(HEX_ASCII_TABLE[(value >> 4) & 0x0F]);
  user_serial_transmit_character(HEX_ASCII_TABLE[value & 0x0F]);
}

void bp_write_hex_byte_to_ringbuffer(const uint8_t value) {
  user_serial_ringbuffer_append(HEX_PREFIX[0]);
  user_serial_ringbuffer_append(HEX_PREFIX[1]);
  user_serial_ringbuffer_append(HEX_ASCII_TABLE[(value >> 4) & 0x0F]);
  user_serial_ringbuffer_append(HEX_ASCII_TABLE[value & 0x0F]);
}

void bp_write_hex_word(const uint16_t value) {
  MSG_HEXADECIMAL_NUMBER_PREFIX;
  user_serial_transmit_character(HEX_ASCII_TABLE[(value >> 12) & 0x0F]);
  user_serial_transmit_character(HEX_ASCII_TABLE[(value >> 8) & 0x0F]);
  user_serial_transmit_character(HEX_ASCII_TABLE[(value >> 4) & 0x0F]);
  user_serial_transmit_character(HEX_ASCII_TABLE[value & 0x0F]);
}

void bp_write_voltage(const uint16_t adc) {
  /*
   * Input voltage is divided by two and compared to 3.3v.  With:
   *
   * volts      = adc / 1024 * 3.3v * 2
   * centivolts = volts * 100
   *
   * approximation is (adc * 165) / 256.  After simplification, the ratio can
   * be written as (adc * 29) / 45, making the final calculation result fit
   * inside an unsigned 16 bits integer.  The measurement error is less than
   * 1mV.
   */
  const uint16_t centivolts = (adc * 29) / 45;

  uint8_t value;

  bp_write_dec_byte(centivolts / 100);
  user_serial_transmit_character('.');
  value = centivolts % 100;
  if (value < 10) {
    user_serial_transmit_character('0');
  }
  bp_write_dec_byte(value);
}

uint16_t bp_read_from_flash(const uint16_t page, const uint16_t address) {
  const uint16_t old_page = TBLPAG;
  uint16_t word;

  TBLPAG = page;
  word = (__builtin_tblrdh(address) << 8) | __builtin_tblrdl(address);
  TBLPAG = old_page;

  return word;
}

void bp_initialise_delay_timer(void) {
#ifdef BP_USE_HARDWARE_DELAY_TIMER

  /*
   * T1CON
   *
   * MSB
   * 1-0------010-0-
   * | |      ||| |
   * | |      ||| +--- TCS:   External clock from pin.
   * | |      ||+----- T32:   TIMER1 is not bound with TIMER2 for 32 bit mode.
   * | |      ++------ TCKPS: 1:8 Prescaler.
   * | +-------------- TSIDL: Continue module operation in idle mode.
   * +---------------- TON:   Timer OFF.
   */
  T1CON = 0x0010;

  /* Reset Timer #1 counter. */
  TMR1 = 0x0000;

  /* Free-running Timer #1. */
  PR1 = 0xFFFF;

  /* Start Timer #1. */
  T1CONbits.TON = ON;

#endif /* BP_USE_HARDWARE_DELAY_TIMER */
}

#ifdef BP_USE_HARDWARE_DELAY_TIMER

void delay_long(uint32_t microseconds) {
  if (microseconds == 0) {
    return;
  }

  uint32_t ticks = (microseconds << 1) - 1;
  uint16_t timer_start = TMR1;

  for (;;) {
    uint16_t timer_value = TMR1;
    uint16_t ticks_delta = timer_value - timer_start;

    if ((uint32_t)ticks_delta >= ticks) {
      return;
    }

    if (ticks_delta >= 0x7FFF) {
      ticks -= (uint32_t)ticks_delta;
      timer_start = timer_value;
    }
  }
}

void delay_short(uint16_t microseconds) {
  if (microseconds == 0) {
    return;
  }

  uint16_t ticks_delta;
  uint16_t ticks = (microseconds << 1) - 1;
  uint16_t timer_start = TMR1;

  do {
    ticks_delta = TMR1 - timer_start;
  } while (ticks_delta < ticks);
}

void bp_delay_ms(uint16_t milliseconds) { delay_long(milliseconds * 1000); }

void bp_delay_us(uint16_t microseconds) {
  if (microseconds < 0x3FFF) {
    delay_short(microseconds);
    return;
  }

  delay_long(microseconds);
}

#endif /* BP_USE_HARDWARE_DELAY_TIMER */

/**
 * @brief User-facing serial ring buffer write pointer.
 */
static uint16_t user_serial_ringbuffer_write;

/**
 * @brief User-facing serial ring buffer read pointer.
 */
static uint16_t user_serial_ringbuffer_read;

#ifndef BP_ENABLE_UART_SUPPORT

/**
 * @brief UART baud rate generator speed values, included here if UART support
 * is disabled.
 */
static const uint16_t UART_BRG_SPEED[] = {
    13332, /* 300 bps */
    3332,  /* 1200 bps */
    1666,  /* 2400 bps */
    832,   /* 4800 bps */
    416,   /* 9600 bps */
    207,   /* 19200 bps */
    103,   /* 38400 bps */
    68,    /* 57600 bps */
    34     /* 115200 bps */
};
#else
extern const uint16_t UART_BRG_SPEED[];
#endif /* !BP_ENABLE_UART_SUPPORT */

void user_serial_initialise(void) {
  if (bus_pirate_configuration.terminal_speed != 9) {
    U1BRG = UART_BRG_SPEED[bus_pirate_configuration.terminal_speed];
  }

  /*
   * U1MODE - UART1 MODE REGISTER
   *
   * MSB
   * 1-000-0000001000
   * | ||| ||||||||||
   * | ||| |||||||||+-- STSEL:  One stop bit.
   * | ||| |||||||++--- PDSEL:  8-bit data, no parity.
   * | ||| ||||||+----- BRGH:   4x baud clock, high-speed mode.
   * | ||| |||||+------ RXINV:  Idle state high.
   * | ||| ||||+------- ABAUD:  Baud rate measurement disabled.
   * | ||| |||+-------- LPBACK: Loopback mode disabled.
   * | ||| ||+--------- WAKE:   No wake-up enabled.
   * | ||| ++---------- UEN:    CTS and RTS are controlled via PORT latches.
   * | ||+------------- RTSMD:  RTS pin in flow control mode.
   * | |+-------------- IREN:   IrDA encoder and decoder disabled.
   * | +--------------- USIDL:  Continue module operation in idle mode.
   * +----------------- UARTEN: UART1 enabled.
   */
  U1MODE = 0x8008;

  /*
   * U1STA - UART1 STATUS AND CONTROL REGISTER
   *
   * MSB
   * 000-01xx000xxx0x
   * ||| ||  |||   |
   * ||| ||  |||   +-- OERR:    Overflow flag cleared.
   * ||| ||  ||+------ ADDEN:   Address detect mode disabled.
   * ||| ||  ++------- URXISEL: Interrupt on any incoming character.
   * ||| |+----------- UTXEN:   Enable transmission.
   * ||| +------------ UTXBRK:  Sync break transmission disabled.
   * +|+-------------- UTXISEL: Interrupt on each outgoing character.
   *  +--------------- UTXINV:  Idle state high (IrDA is disabled).
   */
  U1STA = 0x0400;

  IFS0bits.U1RXIF = NO;
}

bool user_serial_transmit_done(void) { return U1STAbits.TRMT; }

bool user_serial_ready_to_read(void) { return U1STAbits.URXDA; }

void user_serial_ringbuffer_setup(void) {
  user_serial_ringbuffer_read = 0;
  user_serial_ringbuffer_write = 1;
  bus_pirate_configuration.overflow = NO;
}

void user_serial_ringbuffer_process(void) {
  uint16_t index;

  /* No free slots? */
  if (U1STAbits.UTXBF == YES) {
    return;
  }
  index = user_serial_ringbuffer_read + 1;

  /* Wrap around if needed. */
  if (index == BP_TERMINAL_BUFFER_SIZE) {
    index = 0;
  }

  /* Nothing to do. */
  if (index == user_serial_ringbuffer_write) {
    return;
  }

  /* Send character to port. */
  user_serial_ringbuffer_read = index;
  U1TXREG =
      bus_pirate_configuration.terminal_input[user_serial_ringbuffer_read];
}

void user_serial_ringbuffer_flush(void) {
  uint16_t index;

  for (;;) {
    index = user_serial_ringbuffer_read + 1;

    /* Wrap around if needed. */
    if (index == BP_TERMINAL_BUFFER_SIZE) {
      index = 0;
    }

    /* Nothing to do. */
    if (index == user_serial_ringbuffer_write) {
      return;
    }

    /* Send character. */
    if (U1STAbits.UTXBF == NO) {
      user_serial_ringbuffer_read = index;
      U1TXREG =
          bus_pirate_configuration.terminal_input[user_serial_ringbuffer_read];
    }
  }
}

void user_serial_ringbuffer_append(const char character) {
  if (user_serial_ringbuffer_write == user_serial_ringbuffer_read) {
    BP_LEDMODE = LOW;
    bus_pirate_configuration.overflow = YES;
    return;
  }

  bus_pirate_configuration.terminal_input[user_serial_ringbuffer_write] =
      character;
  user_serial_ringbuffer_write++;
  if (user_serial_ringbuffer_write == BP_TERMINAL_BUFFER_SIZE) {
    user_serial_ringbuffer_write = 0;
  }
}

uint8_t user_serial_read_byte(void) {
  while (U1STAbits.URXDA == NO) {
  }

  return LO8(U1RXREG);
}

void user_serial_transmit_character(const char character) {
  /* Do not transmit if the board should be quiet. */
  if (bus_pirate_configuration.quiet) {
    return;
  }

  /* Wait until transmission can take place. */
  while (U1STAbits.UTXBF == ON) {
  }

  U1TXREG = character;
}

void user_serial_wait_transmission_done(void) {
  while (U1STAbits.TRMT == NO) {
  }
}

void user_serial_set_baud_rate(const uint16_t rate) { U1BRG = rate; }

bool user_serial_check_overflow(void) { return U1STAbits.OERR; }

void user_serial_clear_overflow(void) { U1STAbits.OERR = NO; }

/* interrupt transfer related stuff */
unsigned char __attribute__((section(".bss.filereg"))) * UART1RXBuf;
unsigned int __attribute__((section(".bss.filereg"))) UART1RXToRecv;
unsigned int __attribute__((section(".bss.filereg"))) UART1RXRecvd;
unsigned char __attribute__((section(".bss.filereg"))) * UART1TXBuf;
unsigned int __attribute__((section(".bss.filereg"))) UART1TXSent;
unsigned int __attribute__((section(".bss.filereg"))) UART1TXAvailable;

void user_serial_process_transmission_interrupt() {
  /* Quit early if there is nothing to transmit. */
  if ((IEC0bits.U1TXIE == ON) || (UART1TXAvailable == UART1TXSent)) {
    return;
  }

  /* Wait until there is some space in the transmission queue. */
  while (U1STAbits.UTXBF == ON) {
  }

  /* Clear interrupt flag. */
  IFS0bits.U1TXIF = OFF;

  /* Enable interrupt. */
  IEC0bits.U1TXIE = ON;

  /* Append character to transmission queue. */
  U1TXREG = UART1TXBuf[UART1TXSent];
}

void __attribute__((interrupt, no_auto_psv)) _U1RXInterrupt(void) {
  UART1RXBuf[UART1RXRecvd] = U1RXREG;
  UART1RXRecvd++;

  if (UART1RXRecvd == UART1RXToRecv) {
    IEC0bits.U1RXIE = NO;
  }

  IFS0bits.U1RXIF = OFF;
}

void __attribute__((interrupt, no_auto_psv)) _U1TXInterrupt(void) {
  UART1TXSent++;
  if (UART1TXSent == UART1TXAvailable) {
    IEC0bits.U1TXIE = NO;
  } else {
    U1TXREG = UART1TXBuf[UART1TXSent];
  }

  IFS0bits.U1TXIF = OFF;
}

uint16_t user_serial_read_big_endian_word(void) {
  uint16_t value = ((uint16_t)user_serial_read_byte()) << 8;

  return value | ((uint16_t)user_serial_read_byte());
}

uint32_t user_serial_read_big_endian_long_word(void) {
  uint32_t value = ((uint32_t)user_serial_read_big_endian_word()) << 16;

  return value | ((uint32_t)user_serial_read_big_endian_word());
}
