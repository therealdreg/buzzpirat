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

#include <stdint.h>

#include "base.h"
#include "basic.h"
#include "core.h"
#include "proc_menu.h"
#include "selftest.h"

/**
 * Perform board hardware initialization.
 */
static void initialize_board(void);

/**
 * Internal terminal buffer area.
 */
static uint8_t bp_buffer[BP_TERMINAL_BUFFER_SIZE]
    __attribute__((section(".bss.end")));

/**
 * Global configuration data holder.
 */
bus_pirate_configuration_t bus_pirate_configuration = {.terminal_input =
                                                           bp_buffer};

/**
 * Mode-specific configuration data holder.
 */
mode_configuration_t mode_configuration;

/**
 * The last command being input by the user.
 */
command_t last_command;

#define FIRMWARE_SIGNATURE 0x31415926

static uint32_t __attribute__((address(0x27FC), persistent)) firmware_signature;

#pragma code

int main(void) {
  firmware_signature = FIRMWARE_SIGNATURE;

  initialize_board();
  bp_enable_usb_led();

  bp_disable_usb_led();

  /* Starts processing user requests. */
  serviceuser();

  return 0;
}

/**
 * Table for all possible v3 hardware versions.
 */
static const uint8_t BPV3_HARDWARE_VERSION_TABLE[] = {
    /* RB3 == 0 && RB2 == 0 - v3.5 */
    '5',
    /* RB3 == 0 && RB2 == 1 - Unknown */
    '?',
    /* RB3 == 1 && RB2 == 0 - v3b */
    'b',
    /* RB3 == 1 && RB2 == 1 - v2go, v3a */
    'a'};

void initialize_board(void) {
  volatile unsigned long delay = 0xFFFF;

  /* Set clock divider to 0. */
  CLKDIVbits.RCDIV0 = 0;

  /* All pins are digital. */
  AD1PCFG = 0xFFFF;
  
  /* Disable secondary oscillator. */
  OSCCONbits.SOSCEN = OFF;

  /* Wait a bit. */
  while (delay--) {
  }

  /* Set up delay timer. */
  bp_initialise_delay_timer();

  /* Set up the UART port pins. */

  BP_TERM_RX = BP_TERM_RX_RP;
  BP_TERM_TX_RP = BP_TERM_TX;

  /* Set the UART port speed to 115200 bps. */
  bus_pirate_configuration.terminal_speed = 8;

  /* Default to print numbers in hexadecimal format. */
  bus_pirate_configuration.display_mode = HEX;

  /* Start from a known, clear state. */
  bp_reset_board_state();

  /* Initialize the internal UART port. */
  user_serial_initialise();
  
  /* Turn pull-ups ON. */
  CNPU1 |= _CNPU1_CN6PUE_MASK | _CNPU1_CN7PUE_MASK;

  /* Read device type and revision. */

  bus_pirate_configuration.device_type =
      bp_read_from_flash(DEV_ADDR_UPPER, DEV_ADDR_TYPE);
  bus_pirate_configuration.device_revision =
      bp_read_from_flash(DEV_ADDR_UPPER, DEV_ADDR_REV);

  /* Get the revision identifier. */
  bus_pirate_configuration.hardware_version =
      BPV3_HARDWARE_VERSION_TABLE[(PORTB >> 2) & 0b00000011];

  /* Turn pull-ups OFF. */
  CNPU1 &= ~(_CNPU1_CN6PUE_MASK | _CNPU1_CN7PUE_MASK);

  bus_pirate_configuration.quiet = OFF;
  mode_configuration.numbits = 8;

#ifdef BP_ENABLE_BASIC_SUPPORT
  bp_basic_initialize();
#endif /* BP_ENABLE_BASIC_SUPPORT */

  /* Move to page #0. */
  TBLPAG = 0;

  bpBR;
  print_version_info();
}
