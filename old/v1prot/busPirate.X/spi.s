	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\spi.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.type	_spi_slave_enable,@function
_spi_slave_enable:
.LFB40:
	.file 1 "../spi.c"
	.loc 1 667 0
	.set ___PA___,1
	.loc 1 670 0
	bset.b	_TRISBbits,#6
	.loc 1 671 0
	bset.b	_TRISBbits+1,#0
	.loc 1 672 0
	bset.b	_TRISBbits,#7
	.loc 1 673 0
	bset.b	_TRISBbits+1,#1
	.loc 1 676 0
	mov	#-32,w0
	mov	_RPINR21bits,w2
	and	w0,w2,w1
	ior	#6,w1
	mov	w1,_RPINR21bits
	.loc 1 677 0
	mov	_RPINR23bits,w3
	and	w0,w3,w1
	ior	#6,w1
	mov	w1,_RPINR23bits
	.loc 1 678 0
	mov	_RPINR20bits,w2
	and	w0,w2,w1
	ior	#9,w1
	mov	w1,_RPINR20bits
	.loc 1 679 0
	mov	#-7937,w1
	mov	_RPINR20bits,w3
	and	w1,w3,w2
	bset	w2,#11
	mov	w2,_RPINR20bits
	.loc 1 680 0
	and	_RPINR22bits,WREG
	ior	#7,w0
	mov	w0,_RPINR22bits
	.loc 1 681 0
	mov	_RPINR22bits,w0
	and	w1,w0,w1
	bset	w1,#11
	mov	w1,_RPINR22bits
	.loc 1 706 0
	mov	_spi_state,w1
	sl	w1,#7,w0
	and	#256,w0
	.loc 1 705 0
	and	w1,#1,w1
	sl	w1,#6,w1
	.loc 1 704 0
	ior	w1,w0,w0
	.loc 1 703 0
	mov	#_mode_configuration,w1
	ze	[w1],w1
	mov	#_spi_bus_speed,w2
	.loc 1 704 0
	mov.b	[w2+w1],w2
	and	w2,#31,w2
	.loc 1 705 0
	ior	w2,w0,w0
	.loc 1 702 0
	mov	w0,_SPI1CON1
	.loc 1 719 0
	clr	_SPI1CON2
	.loc 1 731 0
	clr	_SPI1STAT
	.loc 1 750 0
	mov	w0,_SPI2CON1
	.loc 1 767 0
	clr	_SPI2CON2
	.loc 1 779 0
	clr	_SPI2STAT
	.loc 1 784 0
	clr	_SPI1BUF
	.loc 1 785 0
	clr	_SPI2BUF
	.loc 1 788 0
	bset.b	_SPI1CON1bits+1,#3
	.loc 1 789 0
	bset.b	_SPI2CON1bits+1,#3
	.loc 1 792 0
	bclr.b	_SPI1CON1bits+1,#1
	.loc 1 793 0
	bclr.b	_SPI2CON1bits+1,#1
	.loc 1 796 0
	bclr.b	_SPI1STATbits,#6
	.loc 1 797 0
	bclr.b	_SPI2STATbits,#6
	.loc 1 800 0
	bset.b	_SPI1CON2bits,#0
	.loc 1 801 0
	bset.b	_SPI2CON2bits,#0
	.loc 1 802 0
	return	
	.set ___PA___,0
.LFE40:
	.size	_spi_slave_enable, .-_spi_slave_enable
	.align	2
	.type	_spi_slave_disable,@function
_spi_slave_disable:
.LFB41:
	.loc 1 804 0
	.set ___PA___,1
	.loc 1 807 0
	bclr.b	_SPI1STATbits+1,#7
	.loc 1 808 0
	bclr.b	_SPI2STATbits+1,#7
	.loc 1 811 0
	bclr.b	_SPI1CON1bits+1,#3
	.loc 1 812 0
	bclr.b	_SPI2CON1bits+1,#3
	.loc 1 815 0
	mov	#31,w0
	ior	_RPINR21bits
	.loc 1 816 0
	ior	_RPINR23bits
	.loc 1 817 0
	ior	_RPINR20bits
	.loc 1 818 0
	mov	#7936,w2
	mov	w2,w0
	ior	_RPINR20bits
	.loc 1 819 0
	mov.w	#31,w0
	ior	_RPINR22bits
	.loc 1 820 0
	mov	w2,w0
	ior	_RPINR22bits
	.loc 1 821 0
	return	
	.set ___PA___,0
.LFE41:
	.size	_spi_slave_disable, .-_spi_slave_disable
	.align	2
	.type	_engage_spi_cs,@function
_engage_spi_cs:
.LFB24:
	.loc 1 270 0
	.set ___PA___,1
	.loc 1 271 0
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#6,w0
	mov.b	[w1],w2
	bclr.b	w2,#6
	ior.b	w2,w0,[w1]
	.loc 1 272 0
	mov	#_spi_state,w0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	ze	w0,w1
	dec	w1,w1
	lsr	w1,#15,w1
	sl	w1,#6,w1
	mov	_PORTBbits,w2
	bclr	w2,#6
	ior	w1,w2,w2
	mov	w2,_PORTBbits
	.loc 1 273 0
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L4
	.loc 1 274 0
	mov.b	#47,w0
	call	_user_serial_transmit_character
.L4:
	.loc 1 276 0
	mov	#tbloffset(_MSG_SPI_CS_ENABLED_str),w0
	mov	#tblpage(_MSG_SPI_CS_ENABLED_str),w1
	call	_bp_message_write_line
	.loc 1 277 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_engage_spi_cs, .-_engage_spi_cs
	.align	2
	.global	_spi_start_with_read	; export
	.type	_spi_start_with_read,@function
_spi_start_with_read:
.LFB25:
	.loc 1 279 0
	.set ___PA___,1
	.loc 1 279 0
	mov.b	#1,w0
	call	_engage_spi_cs
	return	
	.set ___PA___,0
.LFE25:
	.size	_spi_start_with_read, .-_spi_start_with_read
	.align	2
	.global	_spi_start	; export
	.type	_spi_start,@function
_spi_start:
.LFB26:
	.loc 1 281 0
	.set ___PA___,1
	.loc 1 281 0
	clr.b	w0
	call	_engage_spi_cs
	return	
	.set ___PA___,0
.LFE26:
	.size	_spi_start, .-_spi_start
	.align	2
	.global	_spi_stop	; export
	.type	_spi_stop,@function
_spi_stop:
.LFB27:
	.loc 1 283 0
	.set ___PA___,1
	.loc 1 284 0
	mov	#_spi_state,w0
	mov	[w0],w1
	sl	w1,#3,w1
	and	#64,w1
	mov	_PORTBbits,w2
	bclr	w2,#6
	ior	w1,w2,w2
	mov	w2,_PORTBbits
	.loc 1 285 0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	.set ___BP___,61
	bra	z,.L8
	.loc 1 286 0
	mov.b	#47,w0
	call	_user_serial_transmit_character
.L8:
	.loc 1 288 0
	mov	#tbloffset(_MSG_SPI_CS_DISABLED_str),w0
	mov	#tblpage(_MSG_SPI_CS_DISABLED_str),w1
	call	_bp_message_write_line
	.loc 1 289 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_spi_stop, .-_spi_stop
	.align	2
	.global	_spi_print_settings	; export
	.type	_spi_print_settings,@function
_spi_print_settings:
.LFB30:
	.loc 1 298 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI0:
	.loc 1 299 0
	mov	#tbloffset(_MSG_SPI_MODE_HEADER_START_str),w0
	mov	#tblpage(_MSG_SPI_MODE_HEADER_START_str),w1
	call	_bp_message_write_buffer
	.loc 1 300 0
	mov	#_mode_configuration,w0
	inc.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 301 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 302 0
	mov	#_spi_state,w8
	mov.b	[w8],w1
	and.b	w1,#1,w0
	call	_bp_write_dec_byte
	.loc 1 303 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 304 0
	lsr	[w8],w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 305 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 306 0
	mov	[w8],w0
	lsr	w0,#2,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 307 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 308 0
	mov	[w8],w0
	lsr	w0,#3,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 309 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 310 0
	mov	#_mode_configuration+2,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 311 0
	mov	#tbloffset(_MSG_MODE_HEADER_END_str),w0
	mov	#tblpage(_MSG_MODE_HEADER_END_str),w1
	call	_bp_message_write_line
	.loc 1 312 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE30:
	.size	_spi_print_settings, .-_spi_print_settings
	.align	2
	.global	_spi_setup_prepare	; export
	.type	_spi_setup_prepare,@function
_spi_setup_prepare:
.LFB31:
	.loc 1 314 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	mov.d	w10,[w15++]
.LCFI2:
	mov	w12,[w15++]
.LCFI3:
	.loc 1 323 0
	call	_consumewhitechars
	.loc 1 324 0
	call	_getint
	mov	w0,w8
	.loc 1 325 0
	call	_consumewhitechars
	.loc 1 326 0
	call	_getint
	mov	w0,w9
	.loc 1 327 0
	call	_consumewhitechars
	.loc 1 328 0
	call	_getint
	mov	w0,w10
	.loc 1 329 0
	call	_consumewhitechars
	.loc 1 330 0
	call	_getint
	mov	w0,w11
	.loc 1 331 0
	call	_consumewhitechars
	.loc 1 332 0
	call	_getint
	mov	w0,w12
	.loc 1 333 0
	call	_consumewhitechars
	.loc 1 334 0
	call	_getint
	.loc 1 336 0
	dec	w8,w1
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L11
	.loc 1 337 0
	dec	w9,w1
	.loc 1 336 0
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L11
	.loc 1 338 0
	dec	w10,w1
	.loc 1 337 0
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L11
	.loc 1 339 0
	dec	w11,w1
	.loc 1 338 0
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L11
	.loc 1 340 0
	dec	w12,w1
	.loc 1 339 0
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L11
	.loc 1 341 0
	dec	w0,w1
	.loc 1 343 0
	sub	w1,#1,[w15]
	.set ___BP___,100
	bra	leu,.L12
.L11:
	.loc 1 344 0
	mov	#_mode_configuration+2,w9
	bclr.b	[w9],#7
	.loc 1 346 0
	mov	#tbloffset(_MSG_SPI_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 347 0
	clr	w3
	mov	#12,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	.loc 1 349 0
	mov	#tbloffset(_MSG_SPI_POLARITY_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_POLARITY_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 350 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_spi_state,w8
	dec.b	w0,w0
	and.b	w0,#1,w0
	mov.b	[w8],w1
	bclr.b	w1,#0
	ior.b	w1,w0,[w8]
	.loc 1 352 0
	mov	#tbloffset(_MSG_SPI_EDGE_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_EDGE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 353 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w2,w0
	call	_getnumber
	dec.b	w0,w0
	and.b	w0,#1,w0
	add.b	w0,w0,w0
	mov.b	[w8],w1
	bclr.b	w1,#1
	ior.b	w1,w0,[w8]
	.loc 1 355 0
	mov	#tbloffset(_MSG_SPI_SAMPLE_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_SAMPLE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 356 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	dec.b	w0,w0
	and.b	w0,#1,w0
	sl	w0,#2,w0
	mov.b	[w8],w1
	bclr.b	w1,#2
	ior.b	w1,w0,[w8]
	.loc 1 358 0
	mov	#tbloffset(_MSG_SPI_CS_MODE_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_CS_MODE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 359 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w2,w0
	call	_getnumber
	dec.b	w0,w0
	and.b	w0,#1,w0
	sl	w0,#3,w0
	mov.b	[w8],w1
	bclr.b	w1,#3
	ior.b	w1,w0,[w8]
	.loc 1 361 0
	mov	#tbloffset(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w0
	mov	#tblpage(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 362 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	[w9],w1
	bclr.b	w1,#4
	ior.b	w1,w0,[w9]
	bra	.L13
.L12:
	.loc 1 364 0
	mov	#_mode_configuration,w1
	dec.b	w8,[w1]
	.loc 1 365 0
	mov	#_spi_state,w1
	dec.b	w9,w9
	and.b	w9,#1,w9
	mov.b	[w1],w2
	bclr.b	w2,#0
	ior.b	w2,w9,w9
	.loc 1 366 0
	dec.b	w10,w10
	and.b	w10,#1,w10
	add.b	w10,w10,w2
	mov.b	w9,w10
	bclr.b	w10,#1
	ior.b	w10,w2,w10
	.loc 1 367 0
	dec.b	w11,w11
	and.b	w11,#1,w11
	sl	w11,#2,w11
	bclr.b	w10,#2
	ior.b	w10,w11,w10
	.loc 1 368 0
	dec.b	w12,w12
	and.b	w12,#1,w12
	sl	w12,#3,w12
	bclr.b	w10,#3
	ior.b	w10,w12,[w1]
	.loc 1 369 0
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	[w1],w2
	bclr.b	w2,#4
	ior.b	w2,w0,[w1]
	.loc 1 370 0
	call	_spi_print_settings
.L13:
	.loc 1 373 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#6
	.loc 1 374 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE31:
	.size	_spi_setup_prepare, .-_spi_setup_prepare
	.align	2
	.global	_spi_print_pins_state	; export
	.type	_spi_print_pins_state,@function
_spi_print_pins_state:
.LFB35:
	.loc 1 441 0
	.set ___PA___,1
	.loc 1 441 0
	mov	#tbloffset(_MSG_SPI_PINS_STATE_str),w0
	mov	#tblpage(_MSG_SPI_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE35:
	.size	_spi_print_pins_state, .-_spi_print_pins_state
	.align	2
	.global	_spi_setup	; export
	.type	_spi_setup,@function
_spi_setup:
.LFB36:
	.loc 1 443 0
	.set ___PA___,1
	.loc 1 445 0
	bclr.b	_SPI1STATbits+1,#7
	.loc 1 448 0
	mov	#_mode_configuration+2,w1
	mov.b	[w1],w1
	and.b	w1,#16,w1
	.set ___BP___,61
	bra	z,.L16
	.loc 1 449 0
	bset.b	_ODCBbits+1,#1
	.loc 1 450 0
	bset.b	_ODCBbits+1,#0
	.loc 1 451 0
	bset.b	_ODCBbits,#6
	bra	.L17
.L16:
	.loc 1 453 0
	bclr.b	_ODCBbits+1,#1
	.loc 1 454 0
	bclr.b	_ODCBbits+1,#0
	.loc 1 455 0
	bclr.b	_ODCBbits,#6
.L17:
	.loc 1 460 0
	mov	#-32,w1
	mov	_RPINR20bits,w3
	and	w1,w3,w2
	ior	#7,w2
	mov	w2,_RPINR20bits
	.loc 1 461 0
	mov	#-7937,w3
	mov	_RPOR4bits,w2
	and	w3,w2,w3
	mov	#1792,w2
	ior	w2,w3,w2
	mov	w2,_RPOR4bits
	.loc 1 462 0
	mov	_RPOR4bits,w3
	and	w1,w3,w1
	bset	w1,#3
	mov	w1,_RPOR4bits
	.loc 1 463 0
	bset.b	_PORTBbits,#6
	.loc 1 464 0
	bclr.b	_TRISBbits,#6
	.loc 1 465 0
	bclr.b	_TRISBbits+1,#0
	.loc 1 466 0
	bset.b	_TRISBbits,#7
	.loc 1 467 0
	bclr.b	_TRISBbits+1,#1
	.loc 1 489 0
	mov	_spi_state,w1
	and	w1,#1,w3
	sl	w3,#6,w3
	.loc 1 490 0
	sl	w1,#7,w2
	and	#256,w2
	.loc 1 487 0
	ior	w2,w3,w2
	.loc 1 488 0
	bset	w2,#5
	.loc 1 491 0
	sl	w1,#7,w1
	and	#512,w1
	.loc 1 489 0
	ior	w1,w2,w1
	.loc 1 487 0
	and	w0,#31,w0
	.loc 1 486 0
	ior	w0,w1,w0
	mov	w0,_SPI1CON1
	.loc 1 504 0
	clr	_SPI1CON2
	.loc 1 516 0
	mov	#-32768,w0
	mov	w0,_SPI1STAT
	.loc 1 517 0
	return	
	.set ___PA___,0
.LFE36:
	.size	_spi_setup, .-_spi_setup
	.align	2
	.global	_spi_setup_execute	; export
	.type	_spi_setup_execute,@function
_spi_setup_execute:
.LFB32:
	.loc 1 376 0
	.set ___PA___,1
	.loc 1 378 0
	mov	#_mode_configuration,w0
	ze	[w0],w0
	mov	#_spi_bus_speed,w1
	mov.b	[w1+w0],w0
	call	_spi_setup
	.loc 1 381 0
	mov	_spi_state,w0
	sl	w0,#3,w0
	and	#64,w0
	mov	_PORTBbits,w1
	bclr	w1,#6
	ior	w0,w1,w1
	mov	w1,_PORTBbits
	.loc 1 382 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_spi_setup_execute, .-_spi_setup_execute
	.align	2
	.global	_spi_disable_interface	; export
	.type	_spi_disable_interface,@function
_spi_disable_interface:
.LFB37:
	.loc 1 519 0
	.set ___PA___,1
	.loc 1 522 0
	bclr.b	_SPI1STATbits+1,#7
	.loc 1 525 0
	mov	#31,w0
	ior	_RPINR20bits
	.loc 1 526 0
	mov	#-7937,w0
	and	_RPOR4bits
	.loc 1 527 0
	mov	#-32,w0
	and	_RPOR4bits
	.loc 1 530 0
	bclr.b	_ODCBbits+1,#1
	.loc 1 531 0
	bclr.b	_ODCBbits+1,#0
	.loc 1 532 0
	bclr.b	_ODCBbits,#6
	.loc 1 533 0
	return	
	.set ___PA___,0
.LFE37:
	.size	_spi_disable_interface, .-_spi_disable_interface
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_spi_sniffer,@function
_spi_sniffer:
.LFB39:
	.loc 1 552 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI4:
	mov.d	w8,[w15++]
.LCFI5:
	mov.d	w10,[w15++]
.LCFI6:
	mov.d	w12,[w15++]
.LCFI7:
	mov	w14,[w15++]
.LCFI8:
	mov.b	w0,[w15-16]
	mov.b	w1,w13
.L21:
	.loc 1 610 0
	mov	#_bus_pirate_configuration+10,w12
	.loc 1 642 0
	mov	#tbloffset(_MSG_SPI_COULD_NOT_KEEP_UP_str),w8
	mov	#tblpage(_MSG_SPI_COULD_NOT_KEEP_UP_str),w9
.L32:
	.loc 1 559 0
	call	_user_serial_ringbuffer_setup
	.loc 1 560 0
	call	_spi_disable_interface
	.loc 1 561 0
	call	_spi_slave_enable
	.loc 1 563 0
	mov.b	[w15-16],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L22
	.loc 1 564 0
	bset.b	_SPI1CON1bits,#7
	.loc 1 565 0
	bset.b	_SPI2CON1bits,#7
.L22:
	.loc 1 568 0
	bset.b	_SPI1STATbits+1,#7
	.loc 1 569 0
	bset.b	_SPI2STATbits+1,#7
	.loc 1 557 0
	mov.b	#1,w11
	.loc 1 580 0
	mov	#32,w10
	bra	.L37
.L34:
	.loc 1 574 0
	cp0.b	w11
	.set ___BP___,37
	bra	nz,.L37
	btst.b	_PORTBbits,#6
	.set ___BP___,71
	bra	z,.L37
	.loc 1 575 0
	mov.b	#93,w0
	call	_user_serial_ringbuffer_append
	.loc 1 576 0
	mov.b	#1,w11
.L37:
	.loc 1 580 0
	mov	_SPI1STATbits,w1
	and	w10,w1,w0
	.set ___BP___,50
	bra	nz,.L25
	mov	_SPI2STATbits,w1
	and	w10,w1,w0
	.set ___BP___,50
	bra	nz,.L25
.LBB2:
	.loc 1 583 0
	mov	_SPI1BUF,w14
	.loc 1 585 0
	cp0.b	w11
	.set ___BP___,71
	bra	z,.L26
	.loc 1 586 0
	mov.b	#91,w0
	call	_user_serial_ringbuffer_append
	.loc 1 587 0
	clr.b	w11
.L26:
	.loc 1 590 0
	cp0.b	w13
	.set ___BP___,50
	bra	z,.L27
	.loc 1 591 0
	mov.b	w14,w0
	call	_bp_write_hex_byte_to_ringbuffer
	.loc 1 597 0
	mov	_SPI2BUF,w14
	.loc 1 600 0
	mov.b	#40,w0
	call	_user_serial_ringbuffer_append
	.loc 1 601 0
	mov.b	w14,w0
	call	_bp_write_hex_byte_to_ringbuffer
	.loc 1 602 0
	mov.b	#41,w0
	call	_user_serial_ringbuffer_append
	bra	.L25
.L27:
	.loc 1 593 0
	mov.b	#92,w0
	call	_user_serial_ringbuffer_append
	.loc 1 594 0
	mov.b	w14,w0
	call	_user_serial_ringbuffer_append
	.loc 1 597 0
	mov	_SPI2BUF,w0
	.loc 1 604 0
	call	_user_serial_ringbuffer_append
.L25:
.LBE2:
	.loc 1 609 0
	btst.b	_SPI1STATbits,#6
	.set ___BP___,2
	bra	nz,.L28
	btst.b	_SPI2STATbits,#6
	.set ___BP___,2
	bra	nz,.L28
	.loc 1 610 0
	mov	[w12],w1
	and	w1,#2,w0
	.loc 1 609 0
	.set ___BP___,97
	bra	z,.L38
	bra	.L29
.L28:
	.loc 1 613 0
	mov	[w12],w1
	and	w1,#2,w0
	.set ___BP___,56
	bra	nz,.L29
	.loc 1 614 0
	call	_user_serial_ringbuffer_flush
.L29:
	.loc 1 627 0
	clr	_SPI1STAT
	.loc 1 639 0
	clr	_SPI2STAT
	.loc 1 641 0
	cp0.b	w13
	.set ___BP___,4
	bra	z,.L31
	.loc 1 642 0
	mov.d	w8,w0
	call	_bp_message_write_line
	.loc 1 643 0
	bra	.L32
.L31:
	.loc 1 646 0
	bclr.b	_PORTAbits,#1
	.loc 1 647 0
	bra	.L33
.L38:
	.loc 1 650 0
	call	_user_serial_ringbuffer_process
	.loc 1 652 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,86
	bra	z,.L34
	.loc 1 653 0
	call	_user_serial_read_byte
	.loc 1 655 0
	cp0.b	w13
	.set ___BP___,61
	bra	z,.L33
	.loc 1 656 0
	mov	#.LC0,w0
	call	_bp_write_line
.L33:
	.loc 1 662 0
	call	_spi_slave_disable
	.loc 1 664 0
	mov	#_mode_configuration,w0
	ze	[w0],w0
	mov	#_spi_bus_speed,w1
	mov.b	[w1+w0],w0
	call	_spi_setup
	.loc 1 665 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE39:
	.size	_spi_sniffer, .-_spi_sniffer
	.align	2
	.global	_spi_run_macro	; export
	.type	_spi_run_macro,@function
_spi_run_macro:
.LFB34:
	.loc 1 386 0
	.set ___PA___,1
	.loc 1 388 0
	sub	w0,#11,[w15]
	.set ___BP___,29
	bra	z,.L45
	.set ___BP___,50
	bra	gtu,.L50
	sub	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L42
	.set ___BP___,50
	bra	ltu,.L41
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L43
	sub	w0,#10,[w15]
	.set ___BP___,71
	bra	nz,.L40
	bra	.L53
.L50:
	sub	w0,#13,[w15]
	.set ___BP___,29
	bra	z,.L47
	.set ___BP___,50
	bra	ltu,.L46
	sub	w0,#14,[w15]
	.set ___BP___,29
	bra	z,.L48
	sub	w0,#15,[w15]
	.set ___BP___,71
	bra	nz,.L40
	bra	.L54
.L41:
	.loc 1 390 0
	mov	#tbloffset(_MSG_SPI_MACRO_MENU_str),w0
	mov	#tblpage(_MSG_SPI_MACRO_MENU_str),w1
	call	_bp_message_write_line
	.loc 1 391 0
	bra	.L39
.L42:
	.loc 1 394 0
	mov	#tbloffset(_MSG_SNIFFER_MESSAGE_str),w0
	mov	#tblpage(_MSG_SNIFFER_MESSAGE_str),w1
	call	_bp_message_write_line
	.loc 1 395 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 396 0
	mov.b	#1,w1
	clr.b	w0
	call	_spi_sniffer
	.loc 1 397 0
	bra	.L39
.L43:
	.loc 1 400 0
	mov	#tbloffset(_MSG_SNIFFER_MESSAGE_str),w0
	mov	#tblpage(_MSG_SNIFFER_MESSAGE_str),w1
	call	_bp_message_write_line
	.loc 1 401 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 402 0
	mov.b	#1,w1
	mov.b	w1,w0
	call	_spi_sniffer
	.loc 1 403 0
	bra	.L39
.L53:
	.loc 1 406 0
	mov	#_spi_state,w0
	bclr.b	[w0],#0
	.loc 1 407 0
	bra	.L52
.L45:
	.loc 1 410 0
	mov	#_spi_state,w0
	bset.b	[w0],#0
	.loc 1 411 0
	bra	.L52
.L46:
	.loc 1 414 0
	mov	#_spi_state,w0
	bclr.b	[w0],#1
	.loc 1 415 0
	bra	.L52
.L47:
	.loc 1 418 0
	mov	#_spi_state,w0
	bset.b	[w0],#1
	.loc 1 419 0
	bra	.L52
.L48:
	.loc 1 422 0
	mov	#_spi_state,w0
	bclr.b	[w0],#2
	.loc 1 423 0
	bra	.L52
.L54:
	.loc 1 426 0
	mov	#_spi_state,w0
	bset.b	[w0],#2
.L52:
	.loc 1 429 0
	mov	_spi_state,w0
	and	w0,#1,w1
	sl	w1,#6,w1
	mov	_SPI1CON1bits,w2
	bclr	w2,#6
	ior	w1,w2,w2
	mov	w2,_SPI1CON1bits
	.loc 1 430 0
	sl	w0,#7,w1
	and	#256,w1
	mov	_SPI1CON1bits,w2
	bclr	w2,#8
	ior	w1,w2,w2
	mov	w2,_SPI1CON1bits
	.loc 1 431 0
	sl	w0,#7,w0
	and	#512,w0
	mov	_SPI1CON1bits,w1
	bclr	w1,#9
	ior	w0,w1,w1
	mov	w1,_SPI1CON1bits
	.loc 1 432 0
	call	_spi_print_settings
	.loc 1 433 0
	bra	.L39
.L40:
	.loc 1 436 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L39:
	.loc 1 439 0
	return	
	.set ___PA___,0
.LFE34:
	.size	_spi_run_macro, .-_spi_run_macro
	.align	2
	.global	_spi_cleanup	; export
	.type	_spi_cleanup,@function
_spi_cleanup:
.LFB33:
	.loc 1 384 0
	.set ___PA___,1
	.loc 1 384 0
	call	_spi_disable_interface
	return	
	.set ___PA___,0
.LFE33:
	.size	_spi_cleanup, .-_spi_cleanup
	.align	2
	.global	_spi_write_byte	; export
	.type	_spi_write_byte,@function
_spi_write_byte:
.LFB38:
	.loc 1 535 0
	.set ___PA___,1
	.loc 1 537 0
	ze	w0,w0
	mov	w0,_SPI1BUF
	.loc 1 540 0
	mov	#1024,w1
.L57:
	mov	_IFS0bits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	z,.L57
	.loc 1 544 0
	mov	_SPI1BUF,w0
	.loc 1 547 0
	bclr.b	_IFS0bits+1,#2
	.loc 1 550 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_spi_write_byte, .-_spi_write_byte
	.align	2
	.type	_spi_write_from_uart,@function
_spi_write_from_uart:
.LFB43:
	.loc 1 948 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	mov.d	w10,[w15++]
.LCFI10:
	mov	w0,w9
.LBB3:
	.loc 1 957 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L59
	clr	w8
	.loc 1 958 0
	mov	#_bus_pirate_configuration,w11
.L61:
	add	w8,[w11],w10
	call	_user_serial_read_byte
	mov.b	w0,[w10]
	.loc 1 957 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L61
	clr	w8
.L62:
.LBE3:
.LBB4:
	.loc 1 963 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0+w8],w0
	call	_spi_write_byte
	.loc 1 962 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L62
.L59:
.LBE4:
	.loc 1 966 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_spi_write_from_uart, .-_spi_write_from_uart
	.align	2
	.type	_spi_read_to_uart,@function
_spi_read_to_uart:
.LFB44:
	.loc 1 968 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI11:
	mov.d	w10,[w15++]
.LCFI12:
	mov	w12,[w15++]
.LCFI13:
	mov	w0,w9
.LBB5:
	.loc 1 981 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L66
	clr	w8
	.loc 1 982 0
	mov	#_bus_pirate_configuration,w11
	setm.b	w12
.L67:
	add	w8,[w11],w10
	mov.b	w12,w0
	call	_spi_write_byte
	mov.b	w0,[w10]
	.loc 1 981 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L67
.LBE5:
	.loc 1 986 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 989 0
	clr	w8
.L68:
.LBB6:
	.loc 1 991 0
	mov	_bus_pirate_configuration,w0
	.loc 1 990 0
	mov.b	[w0+w8],w0
	call	_user_serial_transmit_character
	.loc 1 989 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L68
	bra	.L65
.L66:
.LBE6:
	.loc 1 986 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.L65:
	.loc 1 994 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE44:
	.size	_spi_read_to_uart, .-_spi_read_to_uart
	.align	2
	.type	_spi_read_write_io,@function
_spi_read_write_io:
.LFB45:
	.loc 1 996 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI14:
	mov	w10,[w15++]
.LCFI15:
	mov.b	w0,w10
	.loc 1 999 0
	call	_user_serial_read_big_endian_word
	mov	w0,w8
	.loc 1 1002 0
	call	_user_serial_read_big_endian_word
	mov	w0,w9
	.loc 1 1006 0
	mov	#4096,w0
	sub	w8,w0,[w15]
	.set ___BP___,79
	bra	leu,.L73
	.loc 1 1007 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1008 0
	bra	.L72
.L73:
	.loc 1 1014 0
	mov	#4096,w0
	sub	w9,w0,[w15]
	.set ___BP___,79
	bra	leu,.L75
	.loc 1 1015 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1016 0
	bra	.L72
.L75:
	.loc 1 1020 0
	cp0	w8
	.set ___BP___,50
	bra	nz,.L76
	cp0	w9
	.set ___BP___,79
	bra	nz,.L76
	.loc 1 1021 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1022 0
	bra	.L72
.L76:
	.loc 1 1026 0
	cp0.b	w10
	.set ___BP___,50
	bra	z,.L77
	.loc 1 1027 0
	bclr.b	_PORTBbits,#6
.L77:
	.loc 1 1030 0
	cp0	w8
	.set ___BP___,71
	bra	z,.L78
	.loc 1 1031 0
	mov	w8,w0
	call	_spi_write_from_uart
	.loc 1 1034 0
	mov	#1,w0
	call	_bp_delay_us
.L78:
	.loc 1 1037 0
	cp0	w9
	.set ___BP___,71
	bra	z,.L79
	.loc 1 1038 0
	mov	w9,w0
	call	_spi_read_to_uart
.L79:
	.loc 1 1042 0
	cp0.b	w10
	.set ___BP___,39
	bra	z,.L72
	.loc 1 1043 0
	bset.b	_PORTBbits,#6
.L72:
	.loc 1 1045 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE45:
	.size	_spi_read_write_io, .-_spi_read_write_io
	.align	2
	.type	_handle_extended_avr_command,@function
_handle_extended_avr_command:
.LFB46:
	.loc 1 1049 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI16:
	mov.d	w10,[w15++]
.LCFI17:
	mov.d	w12,[w15++]
.LCFI18:
	mov	w14,[w15++]
.LCFI19:
	.loc 1 1051 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1053 0
	call	_user_serial_read_byte
	.loc 1 1054 0
	sub.b	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L83
	.set ___BP___,50
	bra	ltu,.L82
	sub.b	w0,#2,[w15]
	.set ___BP___,71
	bra	nz,.L89
	bra	.L91
.L82:
	.loc 1 1056 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1057 0
	bra	.L80
.L83:
	.loc 1 1060 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1061 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1062 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1063 0
	bra	.L80
.L91:
.LBB7:
	.loc 1 1066 0
	call	_user_serial_read_big_endian_long_word
	mov.d	w0,w10
	.loc 1 1067 0
	call	_user_serial_read_big_endian_long_word
	mov.d	w0,w8
	.loc 1 1069 0
	add	w10,#1,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,20
	bra	gtu,.L86
	add	w0,#1,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,39
	bra	gtu,.L86
	.loc 1 1070 0
	add	w10,w0,w0
	addc	w11,w1,w1
	.loc 1 1069 0
	add	w0,#1,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,38
	bra	leu,.L87
.L86:
	.loc 1 1071 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1072 0
	bra	.L80
.L87:
	.loc 1 1075 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1076 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,9
	bra	z,.L80
	.loc 1 1078 0
	mov.b	#32,w12
.L90:
	mov.b	w12,w0
	call	_spi_write_byte
	.loc 1 1079 0
	sl	w11,#8,w2
	lsr	w10,#8,w0
	ior	w2,w0,w0
	lsr	w11,#8,w1
	mov.b	w0,w13
	call	_spi_write_byte
	.loc 1 1080 0
	mov.b	w10,w0
	call	_spi_write_byte
	.loc 1 1081 0
	clr.b	w0
	call	_spi_write_byte
	call	_user_serial_transmit_character
	.loc 1 1084 0
	mov	#1,w0
	mov	#0,w1
	sub	w8,w0,[w15]
	subb	w9,w1,[w15]
	.set ___BP___,71
	bra	z,.L80
	.loc 1 1086 0
	mov.b	#40,w0
	call	_spi_write_byte
	.loc 1 1087 0
	mov.b	w13,w0
	call	_spi_write_byte
	.loc 1 1088 0
	mov.b	w10,w0
	call	_spi_write_byte
	.loc 1 1089 0
	clr.b	w0
	call	_spi_write_byte
	call	_user_serial_transmit_character
	sub	w8,#2,w8
	subb	w9,#0,w9
	.loc 1 1076 0
	.set ___BP___,0
	bra	z,.L80
	.loc 1 1093 0
	add	w10,#1,w10
	addc	w11,#0,w11
	bra	.L90
.L89:
.LBE7:
	.loc 1 1100 0
	clr.b	w0
	call	_user_serial_transmit_character
.L80:
	.loc 1 1103 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE46:
	.size	_handle_extended_avr_command, .-_handle_extended_avr_command
	.align	2
	.global	_spi_write	; export
	.type	_spi_write,@function
_spi_write:
.LFB29:
	.loc 1 293 0
	.set ___PA___,1
	.loc 1 294 0
	call	_spi_write_byte
	mov.b	w0,w2
	.loc 1 295 0
	mov	#_mode_configuration+2,w1
	mov.b	#64,w0
	and.b	w0,[w1],w1
	clr	w0
	.set ___BP___,39
	bra	z,.L93
	ze	w2,w0
.L93:
	.loc 1 296 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_spi_write, .-_spi_write
	.align	2
	.global	_spi_read	; export
	.type	_spi_read,@function
_spi_read:
.LFB28:
	.loc 1 291 0
	.set ___PA___,1
	.loc 1 291 0
	setm.b	w0
	call	_spi_write_byte
	ze	w0,w0
	return	
	.set ___PA___,0
.LFE28:
	.size	_spi_read, .-_spi_read
	.align	2
	.global	_spi_enter_binary_io	; export
	.type	_spi_enter_binary_io,@function
_spi_enter_binary_io:
.LFB42:
	.loc 1 823 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI20:
	mov.d	w10,[w15++]
.LCFI21:
	mov.d	w12,[w15++]
.LCFI22:
	mov	w14,[w15++]
.LCFI23:
	.loc 1 824 0
	mov.b	#1,w1
	mov	#_mode_configuration,w0
	mov.b	w1,[w0]
	.loc 1 825 0
	mov	#_spi_state,w0
	mov.b	[w0],w1
	bclr.b	w1,#0
	.loc 1 826 0
	bset.b	w1,#1
	.loc 1 827 0
	bclr.b	w1,#2
	mov.b	w1,[w0]
	.loc 1 828 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#4
	.loc 1 829 0
	mov.b	#24,w0
	call	_spi_setup
	.loc 1 830 0
	mov	#tbloffset(_MSG_SPI_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_SPI_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
.LBB8:
.LBB9:
	.loc 1 917 0
	mov	#_mode_configuration,w14
.LBE9:
	.loc 1 928 0
	mov	#_spi_state,w12
	.loc 1 936 0
	mov	#_mode_configuration+2,w13
	.loc 1 844 0
	mov	#tbloffset(_MSG_SPI_MODE_IDENTIFIER_str),w8
	mov	#tblpage(_MSG_SPI_MODE_IDENTIFIER_str),w9
.L121:
	.loc 1 833 0
	call	_user_serial_read_byte
	mov.b	w0,w10
	.loc 1 834 0
	ze	w10,w0
	lsr	w0,#4,w0
	.loc 1 836 0
	sub	w0,#4,[w15]
	.set ___BP___,29
	bra	z,.L101
	sub.b	w0,#4,[w15]
	.set ___BP___,50
	bra	gtu,.L104
	cp0	w0
	.set ___BP___,50
	bra	z,.L99
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L98
	bra	.L122
.L104:
	sub	w0,#6,[w15]
	.set ___BP___,29
	bra	z,.L102
	sub	w0,#8,[w15]
	.set ___BP___,71
	bra	nz,.L98
	bra	.L123
.L99:
	.loc 1 838 0
	sub.b	w10,#5,[w15]
	.set ___BP___,50
	bra	gtu,.L114
	sub.b	w10,#4,[w15]
	.set ___BP___,50
	bra	geu,.L110
	sub.b	w10,#1,[w15]
	.set ___BP___,29
	bra	z,.L107
	.set ___BP___,50
	bra	ltu,.L106
	sub.b	w10,#2,[w15]
	.set ___BP___,29
	bra	z,.L108
	sub.b	w10,#3,[w15]
	.set ___BP___,71
	bra	nz,.L105
	bra	.L124
.L114:
	sub.b	w10,#13,[w15]
	.set ___BP___,29
	bra	z,.L112
	sub.b	w10,#14,[w15]
	.set ___BP___,29
	bra	z,.L113
	sub.b	w10,#6,[w15]
	.set ___BP___,71
	bra	nz,.L105
	bra	.L125
.L106:
	.loc 1 840 0
	call	_spi_disable_interface
.LBE8:
	.loc 1 946 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.L107:
.LBB13:
	.loc 1 844 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 845 0
	bra	.L121
.L108:
	.loc 1 848 0
	bclr.b	_LATB,#6
	.loc 1 849 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 850 0
	bra	.L121
.L124:
	.loc 1 853 0
	bset.b	_LATB,#6
	.loc 1 854 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 855 0
	bra	.L121
.L112:
	.loc 1 858 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 859 0
	clr.b	w1
	mov.b	#1,w0
	call	_spi_sniffer
	.loc 1 860 0
	bra	.L121
.L113:
	.loc 1 863 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 864 0
	clr.b	w1
	mov.b	w1,w0
	call	_spi_sniffer
	.loc 1 865 0
	bra	.L121
.L110:
	.loc 1 869 0
	btg.b	w10,#2
	ze	w10,w0
	dec	w0,w0
	lsr	w0,#15,w0
	call	_spi_read_write_io
	.loc 1 871 0
	bra	.L121
.L125:
	.loc 1 876 0
	call	_handle_extended_avr_command
	.loc 1 877 0
	bra	.L121
.L105:
	.loc 1 882 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 883 0
	bra	.L121
.L122:
.LBB10:
	.loc 1 890 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 889 0
	and	w10,#15,w10
.LBB11:
	.loc 1 891 0
	inc	w10,w11
	clr	w10
.L116:
	.loc 1 892 0
	call	_user_serial_read_byte
	call	_spi_write_byte
	call	_user_serial_transmit_character
	.loc 1 891 0
	inc	w10,w10
	sub	w10,w11,[w15]
	.set ___BP___,91
	bra	ltu,.L116
	bra	.L121
.L101:
.LBE11:
.LBE10:
	.loc 1 898 0
	mov.b	w10,w0
	call	_bp_binary_io_peripherals_set
	.loc 1 899 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 900 0
	bra	.L121
.L102:
.LBB12:
	.loc 1 911 0
	and.b	w10,#15,w10
	.loc 1 912 0
	sub.b	w10,#12,[w15]
	.set ___BP___,50
	bra	leu,.L117
	.loc 1 913 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 914 0
	bra	.L121
.L117:
	.loc 1 917 0
	mov.b	w10,[w14]
	.loc 1 918 0
	ze	w10,w10
	mov	#_spi_bus_speed,w1
	mov.b	[w1+w10],w0
	call	_spi_setup
	.loc 1 919 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 920 0
	bra	.L121
.L123:
.LBE12:
	.loc 1 929 0
	ze	w10,w0
	lsr	w0,#2,w1
	.loc 1 928 0
	and.b	w1,#1,w1
	mov.b	[w12],w3
	bclr.b	w3,#0
	ior.b	w3,w1,w3
	.loc 1 932 0
	lsr	w0,w1
	.loc 1 930 0
	and.b	w1,#1,w1
	add.b	w1,w1,w2
	mov.b	w3,w1
	bclr.b	w1,#1
	ior.b	w1,w2,w1
	.loc 1 933 0
	and.b	w10,#1,w10
	sl	w10,#2,w10
	bclr.b	w1,#2
	ior.b	w1,w10,[w12]
	.loc 1 936 0
	and	w0,#8,w0
	dec	w0,w0
	lsr	w0,#15,w0
	sl	w0,#4,w0
	mov.b	[w13],w1
	bclr.b	w1,#4
	ior.b	w1,w0,[w13]
	.loc 1 937 0
	ze	[w14],w0
	mov	#_spi_bus_speed,w1
	mov.b	[w1+w0],w0
	call	_spi_setup
	.loc 1 938 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 939 0
	bra	.L121
.L98:
	.loc 1 942 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L121
.LBE13:
.LFE42:
	.size	_spi_enter_binary_io, .-_spi_enter_binary_io
	.section	.bss,bss
	.align	2
	.type	_spi_state,@object
	.size	_spi_state, 1
_spi_state:
	.skip	1
	.section	.const,psv,page
	.type	_spi_bus_speed,@object
	.size	_spi_bus_speed, 12
_spi_bus_speed:
	.byte 0
	.byte 24
	.byte 28
	.byte 29
	.byte 12
	.byte 22
	.byte 26
	.byte 11
	.byte 15
	.byte 30
	.byte 23
	.byte 27
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.sleb128 2
	.byte	0x25
	.byte	0x12
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI0-.LFB30
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI1-.LFB31
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI4-.LFB39
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -11
	.byte	0x8e
	.uleb128 0xa
	.byte	0x8c
	.uleb128 0x8
	.byte	0x8a
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI9-.LFB43
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI11-.LFB44
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI14-.LFB45
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI16-.LFB46
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x13
	.sleb128 -9
	.byte	0x8e
	.uleb128 0x8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI20-.LFB42
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x13
	.sleb128 -9
	.byte	0x8e
	.uleb128 0x8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE44:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.file 5 "../core.h"
	.section	.debug_info,info
	.4byte	0x2813
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../spi.c"
	.ascii	"C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPira"
	.asciz	"te.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.asciz	"long double"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.asciz	"uint8_t"
	.byte	0x2
	.byte	0xbb
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0x115
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x2
	.byte	0xcd
	.4byte	0x135
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x2
	.byte	0xdd
	.4byte	0x115
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0x4
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x3
	.byte	0xea
	.4byte	0x2a8
	.uleb128 0x5
	.asciz	"INT0IF"
	.byte	0x3
	.byte	0xeb
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC1IF"
	.byte	0x3
	.byte	0xec
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC1IF"
	.byte	0x3
	.byte	0xed
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T1IF"
	.byte	0x3
	.byte	0xee
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC2IF"
	.byte	0x3
	.byte	0xf0
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC2IF"
	.byte	0x3
	.byte	0xf1
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2IF"
	.byte	0x3
	.byte	0xf2
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3IF"
	.byte	0x3
	.byte	0xf3
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPF1IF"
	.byte	0x3
	.byte	0xf4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPI1IF"
	.byte	0x3
	.byte	0xf5
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1RXIF"
	.byte	0x3
	.byte	0xf6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1TXIF"
	.byte	0x3
	.byte	0xf7
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"AD1IF"
	.byte	0x3
	.byte	0xf8
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"IFS0BITS"
	.byte	0x3
	.byte	0xf9
	.4byte	0x19a
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x645
	.4byte	0x37d
	.uleb128 0x7
	.asciz	"SPIRBF"
	.byte	0x3
	.2byte	0x646
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPITBF"
	.byte	0x3
	.2byte	0x647
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL"
	.byte	0x3
	.2byte	0x648
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SRXMPT"
	.byte	0x3
	.2byte	0x649
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIROV"
	.byte	0x3
	.2byte	0x64a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SRMPT"
	.byte	0x3
	.2byte	0x64b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC"
	.byte	0x3
	.2byte	0x64c
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPISIDL"
	.byte	0x3
	.2byte	0x64e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIEN"
	.byte	0x3
	.2byte	0x650
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x652
	.4byte	0x408
	.uleb128 0x7
	.asciz	"SISEL0"
	.byte	0x3
	.2byte	0x654
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL1"
	.byte	0x3
	.2byte	0x655
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL2"
	.byte	0x3
	.2byte	0x656
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC0"
	.byte	0x3
	.2byte	0x658
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC1"
	.byte	0x3
	.2byte	0x659
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC2"
	.byte	0x3
	.2byte	0x65a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x644
	.4byte	0x41c
	.uleb128 0x9
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	0x37d
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagSPI1STATBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x643
	.4byte	0x43e
	.uleb128 0xb
	.4byte	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI1STATBITS"
	.byte	0x3
	.2byte	0x65d
	.4byte	0x41c
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x664
	.4byte	0x51f
	.uleb128 0x7
	.asciz	"PPRE"
	.byte	0x3
	.2byte	0x665
	.4byte	0x105
	.byte	0x2
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE"
	.byte	0x3
	.2byte	0x666
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"MSTEN"
	.byte	0x3
	.2byte	0x667
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"CKP"
	.byte	0x3
	.2byte	0x668
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSEN"
	.byte	0x3
	.2byte	0x669
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"CKE"
	.byte	0x3
	.2byte	0x66a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SMP"
	.byte	0x3
	.2byte	0x66b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"MODE16"
	.byte	0x3
	.2byte	0x66c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"DISSDO"
	.byte	0x3
	.2byte	0x66d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"DISSCK"
	.byte	0x3
	.2byte	0x66e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x670
	.4byte	0x58d
	.uleb128 0x7
	.asciz	"PPRE0"
	.byte	0x3
	.2byte	0x671
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PPRE1"
	.byte	0x3
	.2byte	0x672
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE0"
	.byte	0x3
	.2byte	0x673
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE1"
	.byte	0x3
	.2byte	0x674
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE2"
	.byte	0x3
	.2byte	0x675
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x663
	.4byte	0x5a1
	.uleb128 0x9
	.4byte	0x453
	.uleb128 0x9
	.4byte	0x51f
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagSPI1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x662
	.4byte	0x5c3
	.uleb128 0xb
	.4byte	0x58d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI1CON1BITS"
	.byte	0x3
	.2byte	0x678
	.4byte	0x5a1
	.uleb128 0xa
	.asciz	"tagSPI1CON2BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x67d
	.4byte	0x65a
	.uleb128 0x7
	.asciz	"SPIBEN"
	.byte	0x3
	.2byte	0x67e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFE"
	.byte	0x3
	.2byte	0x67f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFPOL"
	.byte	0x3
	.2byte	0x681
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFSD"
	.byte	0x3
	.2byte	0x682
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FRMEN"
	.byte	0x3
	.2byte	0x683
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI1CON2BITS"
	.byte	0x3
	.2byte	0x684
	.4byte	0x5d8
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x691
	.4byte	0x734
	.uleb128 0x7
	.asciz	"SPIRBF"
	.byte	0x3
	.2byte	0x692
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPITBF"
	.byte	0x3
	.2byte	0x693
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL"
	.byte	0x3
	.2byte	0x694
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SRXMPT"
	.byte	0x3
	.2byte	0x695
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIROV"
	.byte	0x3
	.2byte	0x696
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SRMPT"
	.byte	0x3
	.2byte	0x697
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC"
	.byte	0x3
	.2byte	0x698
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPISIDL"
	.byte	0x3
	.2byte	0x69a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIEN"
	.byte	0x3
	.2byte	0x69c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x69e
	.4byte	0x7bf
	.uleb128 0x7
	.asciz	"SISEL0"
	.byte	0x3
	.2byte	0x6a0
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL1"
	.byte	0x3
	.2byte	0x6a1
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SISEL2"
	.byte	0x3
	.2byte	0x6a2
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC0"
	.byte	0x3
	.2byte	0x6a4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC1"
	.byte	0x3
	.2byte	0x6a5
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIBEC2"
	.byte	0x3
	.2byte	0x6a6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x690
	.4byte	0x7d3
	.uleb128 0x9
	.4byte	0x66f
	.uleb128 0x9
	.4byte	0x734
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagSPI2STATBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x68f
	.4byte	0x7f5
	.uleb128 0xb
	.4byte	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI2STATBITS"
	.byte	0x3
	.2byte	0x6a9
	.4byte	0x7d3
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x6b0
	.4byte	0x8d6
	.uleb128 0x7
	.asciz	"PPRE"
	.byte	0x3
	.2byte	0x6b1
	.4byte	0x105
	.byte	0x2
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE"
	.byte	0x3
	.2byte	0x6b2
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"MSTEN"
	.byte	0x3
	.2byte	0x6b3
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"CKP"
	.byte	0x3
	.2byte	0x6b4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSEN"
	.byte	0x3
	.2byte	0x6b5
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"CKE"
	.byte	0x3
	.2byte	0x6b6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SMP"
	.byte	0x3
	.2byte	0x6b7
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"MODE16"
	.byte	0x3
	.2byte	0x6b8
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"DISSDO"
	.byte	0x3
	.2byte	0x6b9
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"DISSCK"
	.byte	0x3
	.2byte	0x6ba
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x6bc
	.4byte	0x944
	.uleb128 0x7
	.asciz	"PPRE0"
	.byte	0x3
	.2byte	0x6bd
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PPRE1"
	.byte	0x3
	.2byte	0x6be
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE0"
	.byte	0x3
	.2byte	0x6bf
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE1"
	.byte	0x3
	.2byte	0x6c0
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPRE2"
	.byte	0x3
	.2byte	0x6c1
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x6af
	.4byte	0x958
	.uleb128 0x9
	.4byte	0x80a
	.uleb128 0x9
	.4byte	0x8d6
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagSPI2CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6ae
	.4byte	0x97a
	.uleb128 0xb
	.4byte	0x944
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI2CON1BITS"
	.byte	0x3
	.2byte	0x6c4
	.4byte	0x958
	.uleb128 0xa
	.asciz	"tagSPI2CON2BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6c9
	.4byte	0xa11
	.uleb128 0x7
	.asciz	"SPIBEN"
	.byte	0x3
	.2byte	0x6ca
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFE"
	.byte	0x3
	.2byte	0x6cb
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFPOL"
	.byte	0x3
	.2byte	0x6cd
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPIFSD"
	.byte	0x3
	.2byte	0x6ce
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FRMEN"
	.byte	0x3
	.2byte	0x6cf
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"SPI2CON2BITS"
	.byte	0x3
	.2byte	0x6d0
	.4byte	0x98f
	.uleb128 0xa
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0xaa6
	.uleb128 0x7
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA1"
	.byte	0x3
	.2byte	0x6d9
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA2"
	.byte	0x3
	.2byte	0x6da
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA3"
	.byte	0x3
	.2byte	0x6db
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA4"
	.byte	0x3
	.2byte	0x6dc
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"TRISABITS"
	.byte	0x3
	.2byte	0x6dd
	.4byte	0xa26
	.uleb128 0xa
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0xb29
	.uleb128 0x7
	.asciz	"RA0"
	.byte	0x3
	.2byte	0x6e3
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA1"
	.byte	0x3
	.2byte	0x6e4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA2"
	.byte	0x3
	.2byte	0x6e5
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA3"
	.byte	0x3
	.2byte	0x6e6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA4"
	.byte	0x3
	.2byte	0x6e7
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"PORTABITS"
	.byte	0x3
	.2byte	0x6e8
	.4byte	0xab8
	.uleb128 0xa
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0xca8
	.uleb128 0x7
	.asciz	"TRISB0"
	.byte	0x3
	.2byte	0x704
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB1"
	.byte	0x3
	.2byte	0x705
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB2"
	.byte	0x3
	.2byte	0x706
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB3"
	.byte	0x3
	.2byte	0x707
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB4"
	.byte	0x3
	.2byte	0x708
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB5"
	.byte	0x3
	.2byte	0x709
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB6"
	.byte	0x3
	.2byte	0x70a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB7"
	.byte	0x3
	.2byte	0x70b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB8"
	.byte	0x3
	.2byte	0x70c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB9"
	.byte	0x3
	.2byte	0x70d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB10"
	.byte	0x3
	.2byte	0x70e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB11"
	.byte	0x3
	.2byte	0x70f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB12"
	.byte	0x3
	.2byte	0x710
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB13"
	.byte	0x3
	.2byte	0x711
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB14"
	.byte	0x3
	.2byte	0x712
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB15"
	.byte	0x3
	.2byte	0x713
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"TRISBBITS"
	.byte	0x3
	.2byte	0x714
	.4byte	0xb3b
	.uleb128 0xa
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0xdf7
	.uleb128 0x7
	.asciz	"RB0"
	.byte	0x3
	.2byte	0x71a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB1"
	.byte	0x3
	.2byte	0x71b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB2"
	.byte	0x3
	.2byte	0x71c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB3"
	.byte	0x3
	.2byte	0x71d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB4"
	.byte	0x3
	.2byte	0x71e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB5"
	.byte	0x3
	.2byte	0x71f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB6"
	.byte	0x3
	.2byte	0x720
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB7"
	.byte	0x3
	.2byte	0x721
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB8"
	.byte	0x3
	.2byte	0x722
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB9"
	.byte	0x3
	.2byte	0x723
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB10"
	.byte	0x3
	.2byte	0x724
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB11"
	.byte	0x3
	.2byte	0x725
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB12"
	.byte	0x3
	.2byte	0x726
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB13"
	.byte	0x3
	.2byte	0x727
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB14"
	.byte	0x3
	.2byte	0x728
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB15"
	.byte	0x3
	.2byte	0x729
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"PORTBBITS"
	.byte	0x3
	.2byte	0x72a
	.4byte	0xcba
	.uleb128 0xa
	.asciz	"tagODCBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x745
	.4byte	0xf55
	.uleb128 0x7
	.asciz	"ODB0"
	.byte	0x3
	.2byte	0x746
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB1"
	.byte	0x3
	.2byte	0x747
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB2"
	.byte	0x3
	.2byte	0x748
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB3"
	.byte	0x3
	.2byte	0x749
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB4"
	.byte	0x3
	.2byte	0x74a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB5"
	.byte	0x3
	.2byte	0x74b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB6"
	.byte	0x3
	.2byte	0x74c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB7"
	.byte	0x3
	.2byte	0x74d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB8"
	.byte	0x3
	.2byte	0x74e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB9"
	.byte	0x3
	.2byte	0x74f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB10"
	.byte	0x3
	.2byte	0x750
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB11"
	.byte	0x3
	.2byte	0x751
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB12"
	.byte	0x3
	.2byte	0x752
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB13"
	.byte	0x3
	.2byte	0x753
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB14"
	.byte	0x3
	.2byte	0x754
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ODB15"
	.byte	0x3
	.2byte	0x755
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"ODCBBITS"
	.byte	0x3
	.2byte	0x756
	.4byte	0xe09
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0xff7
	.uleb128 0x7
	.asciz	"DONE"
	.byte	0x3
	.2byte	0x78e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SAMP"
	.byte	0x3
	.2byte	0x78f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ASAM"
	.byte	0x3
	.2byte	0x790
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC"
	.byte	0x3
	.2byte	0x792
	.4byte	0x105
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM"
	.byte	0x3
	.2byte	0x793
	.4byte	0x105
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADSIDL"
	.byte	0x3
	.2byte	0x795
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADON"
	.byte	0x3
	.2byte	0x797
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x799
	.4byte	0x1065
	.uleb128 0x7
	.asciz	"SSRC0"
	.byte	0x3
	.2byte	0x79b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC1"
	.byte	0x3
	.2byte	0x79c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC2"
	.byte	0x3
	.2byte	0x79d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM0"
	.byte	0x3
	.2byte	0x79e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM1"
	.byte	0x3
	.2byte	0x79f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x78c
	.4byte	0x1079
	.uleb128 0x9
	.4byte	0xf66
	.uleb128 0x9
	.4byte	0xff7
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0x109a
	.uleb128 0xb
	.4byte	0x1065
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0x1079
	.uleb128 0xa
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0x11a7
	.uleb128 0x7
	.asciz	"PCFG0"
	.byte	0x3
	.2byte	0x7fe
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG1"
	.byte	0x3
	.2byte	0x7ff
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG2"
	.byte	0x3
	.2byte	0x800
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG3"
	.byte	0x3
	.2byte	0x801
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG4"
	.byte	0x3
	.2byte	0x802
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG5"
	.byte	0x3
	.2byte	0x803
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG9"
	.byte	0x3
	.2byte	0x805
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG10"
	.byte	0x3
	.2byte	0x806
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG11"
	.byte	0x3
	.2byte	0x807
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG12"
	.byte	0x3
	.2byte	0x808
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG15"
	.byte	0x3
	.2byte	0x80a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"AD1PCFGBITS"
	.byte	0x3
	.2byte	0x80b
	.4byte	0x10ae
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa43
	.4byte	0x11ed
	.uleb128 0x7
	.asciz	"SDI1R"
	.byte	0x3
	.2byte	0xa44
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R"
	.byte	0x3
	.2byte	0xa46
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa48
	.4byte	0x12c9
	.uleb128 0x7
	.asciz	"SDI1R0"
	.byte	0x3
	.2byte	0xa49
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI1R1"
	.byte	0x3
	.2byte	0xa4a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI1R2"
	.byte	0x3
	.2byte	0xa4b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI1R3"
	.byte	0x3
	.2byte	0xa4c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI1R4"
	.byte	0x3
	.2byte	0xa4d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R0"
	.byte	0x3
	.2byte	0xa4f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R1"
	.byte	0x3
	.2byte	0xa50
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R2"
	.byte	0x3
	.2byte	0xa51
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R3"
	.byte	0x3
	.2byte	0xa52
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK1R4"
	.byte	0x3
	.2byte	0xa53
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xa42
	.4byte	0x12dd
	.uleb128 0x9
	.4byte	0x11bb
	.uleb128 0x9
	.4byte	0x11ed
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagRPINR20BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xa41
	.4byte	0x12fe
	.uleb128 0xb
	.4byte	0x12c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"RPINR20BITS"
	.byte	0x3
	.2byte	0xa56
	.4byte	0x12dd
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa5d
	.4byte	0x132f
	.uleb128 0x7
	.asciz	"SS1R"
	.byte	0x3
	.2byte	0xa5e
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa60
	.4byte	0x139d
	.uleb128 0x7
	.asciz	"SS1R0"
	.byte	0x3
	.2byte	0xa61
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS1R1"
	.byte	0x3
	.2byte	0xa62
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS1R2"
	.byte	0x3
	.2byte	0xa63
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS1R3"
	.byte	0x3
	.2byte	0xa64
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS1R4"
	.byte	0x3
	.2byte	0xa65
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xa5c
	.4byte	0x13b1
	.uleb128 0x9
	.4byte	0x1312
	.uleb128 0x9
	.4byte	0x132f
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagRPINR21BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xa5b
	.4byte	0x13d2
	.uleb128 0xb
	.4byte	0x139d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"RPINR21BITS"
	.byte	0x3
	.2byte	0xa68
	.4byte	0x13b1
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa6f
	.4byte	0x1418
	.uleb128 0x7
	.asciz	"SDI2R"
	.byte	0x3
	.2byte	0xa70
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R"
	.byte	0x3
	.2byte	0xa72
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa74
	.4byte	0x14f4
	.uleb128 0x7
	.asciz	"SDI2R0"
	.byte	0x3
	.2byte	0xa75
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI2R1"
	.byte	0x3
	.2byte	0xa76
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI2R2"
	.byte	0x3
	.2byte	0xa77
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI2R3"
	.byte	0x3
	.2byte	0xa78
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SDI2R4"
	.byte	0x3
	.2byte	0xa79
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R0"
	.byte	0x3
	.2byte	0xa7b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R1"
	.byte	0x3
	.2byte	0xa7c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R2"
	.byte	0x3
	.2byte	0xa7d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R3"
	.byte	0x3
	.2byte	0xa7e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SCK2R4"
	.byte	0x3
	.2byte	0xa7f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xa6e
	.4byte	0x1508
	.uleb128 0x9
	.4byte	0x13e6
	.uleb128 0x9
	.4byte	0x1418
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagRPINR22BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xa6d
	.4byte	0x1529
	.uleb128 0xb
	.4byte	0x14f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"RPINR22BITS"
	.byte	0x3
	.2byte	0xa82
	.4byte	0x1508
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa89
	.4byte	0x155a
	.uleb128 0x7
	.asciz	"SS2R"
	.byte	0x3
	.2byte	0xa8a
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xa8c
	.4byte	0x15c8
	.uleb128 0x7
	.asciz	"SS2R0"
	.byte	0x3
	.2byte	0xa8d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS2R1"
	.byte	0x3
	.2byte	0xa8e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS2R2"
	.byte	0x3
	.2byte	0xa8f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS2R3"
	.byte	0x3
	.2byte	0xa90
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SS2R4"
	.byte	0x3
	.2byte	0xa91
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xa88
	.4byte	0x15dc
	.uleb128 0x9
	.4byte	0x153d
	.uleb128 0x9
	.4byte	0x155a
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagRPINR23BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xa87
	.4byte	0x15fd
	.uleb128 0xb
	.4byte	0x15c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"RPINR23BITS"
	.byte	0x3
	.2byte	0xa94
	.4byte	0x15dc
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xb03
	.4byte	0x1641
	.uleb128 0x7
	.asciz	"RP8R"
	.byte	0x3
	.2byte	0xb04
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R"
	.byte	0x3
	.2byte	0xb06
	.4byte	0x105
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0xb08
	.4byte	0x1713
	.uleb128 0x7
	.asciz	"RP8R0"
	.byte	0x3
	.2byte	0xb09
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP8R1"
	.byte	0x3
	.2byte	0xb0a
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP8R2"
	.byte	0x3
	.2byte	0xb0b
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP8R3"
	.byte	0x3
	.2byte	0xb0c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP8R4"
	.byte	0x3
	.2byte	0xb0d
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R0"
	.byte	0x3
	.2byte	0xb0f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R1"
	.byte	0x3
	.2byte	0xb10
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R2"
	.byte	0x3
	.2byte	0xb11
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R3"
	.byte	0x3
	.2byte	0xb12
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP9R4"
	.byte	0x3
	.2byte	0xb13
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xb02
	.4byte	0x1727
	.uleb128 0x9
	.4byte	0x1611
	.uleb128 0x9
	.4byte	0x1641
	.byte	0x0
	.uleb128 0xa
	.asciz	"tagRPOR4BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xb01
	.4byte	0x1746
	.uleb128 0xb
	.4byte	0x1713
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.asciz	"RPOR4BITS"
	.byte	0x3
	.2byte	0xb16
	.4byte	0x1727
	.uleb128 0xd
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0x1831
	.uleb128 0xe
	.asciz	"speed"
	.byte	0x4
	.byte	0x39
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"numbits"
	.byte	0x4
	.byte	0x3a
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.asciz	"alternate_aux"
	.byte	0x4
	.byte	0x3f
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"periodicService"
	.byte	0x4
	.byte	0x41
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"little_endian"
	.byte	0x4
	.byte	0x47
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"high_impedance"
	.byte	0x4
	.byte	0x4c
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"int16"
	.byte	0x4
	.byte	0x51
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.4byte	.LASF0
	.byte	0x4
	.byte	0x56
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"command_error"
	.byte	0x4
	.byte	0x5b
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x4
	.byte	0x5d
	.4byte	0x1758
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x10
	.byte	0x1
	.byte	0x5
	.byte	0xb4
	.4byte	0x18db
	.uleb128 0x11
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0x11
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0x11
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0x11
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0x11
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0x11
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0x11
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0x11
	.asciz	"BP_PICPROG"
	.sleb128 7
	.uleb128 0x11
	.asciz	"BP_DIO"
	.sleb128 8
	.uleb128 0x11
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x5
	.byte	0xe9
	.4byte	0x1856
	.uleb128 0x10
	.byte	0x1
	.byte	0x5
	.byte	0xee
	.4byte	0x1924
	.uleb128 0x11
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0x11
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0x11
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0x11
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x5
	.byte	0xf7
	.4byte	0x1903
	.uleb128 0xd
	.byte	0xc
	.byte	0x5
	.byte	0xf9
	.4byte	0x1a35
	.uleb128 0xe
	.asciz	"terminal_input"
	.byte	0x5
	.byte	0xfa
	.4byte	0x1a35
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"device_type"
	.byte	0x5
	.byte	0xfb
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"device_revision"
	.byte	0x5
	.byte	0xfc
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.asciz	"hardware_version"
	.byte	0x5
	.byte	0xfd
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.asciz	"terminal_speed"
	.byte	0x5
	.byte	0xfe
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.asciz	"display_mode"
	.byte	0x5
	.byte	0xff
	.4byte	0x1924
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.asciz	"bus_mode"
	.byte	0x5
	.2byte	0x100
	.4byte	0x18db
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.asciz	"quiet"
	.byte	0x5
	.2byte	0x101
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.asciz	"overflow"
	.byte	0x5
	.2byte	0x102
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.asciz	"basic"
	.byte	0x5
	.2byte	0x104
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x13
	.byte	0x2
	.4byte	0xe5
	.uleb128 0xc
	.asciz	"bus_pirate_configuration_t"
	.byte	0x5
	.2byte	0x106
	.4byte	0x1945
	.uleb128 0x10
	.byte	0x2
	.byte	0x1
	.byte	0x2e
	.4byte	0x1b04
	.uleb128 0x11
	.asciz	"SPI_COMMAND_BASE"
	.sleb128 0
	.uleb128 0x11
	.asciz	"SPI_COMMAND_READ_DATA"
	.sleb128 1
	.uleb128 0x11
	.asciz	"SPI_COMMAND_CONFIGURE_PERIPHERALS"
	.sleb128 4
	.uleb128 0x11
	.asciz	"SPI_COMMAND_SET_PULLUPS"
	.sleb128 5
	.uleb128 0x11
	.asciz	"SPI_COMMAND_SET_SPEED"
	.sleb128 6
	.uleb128 0x11
	.asciz	"SPI_COMMAND_CONFIGURE_SPI"
	.sleb128 8
	.byte	0x0
	.uleb128 0x10
	.byte	0x2
	.byte	0x1
	.byte	0x37
	.4byte	0x1c46
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_EXIT"
	.sleb128 0
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_SEND_IDENTIFIER"
	.sleb128 1
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_CS_LOW"
	.sleb128 2
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_CS_HIGH"
	.sleb128 3
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_WRITE_AND_READ_WITH_CS"
	.sleb128 4
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_WRITE_AND_READ_WITHOUT_CS"
	.sleb128 5
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_EXTENDED_AVR_COMMAND"
	.sleb128 6
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_SNIFF_ALL_TRAFFIC"
	.sleb128 13
	.uleb128 0x11
	.asciz	"SPI_BASE_COMMAND_SNIFF_WHEN_CS_LOW"
	.sleb128 14
	.byte	0x0
	.uleb128 0x10
	.byte	0x2
	.byte	0x1
	.byte	0x43
	.4byte	0x1d4c
	.uleb128 0x11
	.asciz	"SPI_MACRO_MENU"
	.sleb128 0
	.uleb128 0x11
	.asciz	"SPI_MACRO_SNIFF_ON_CS_LOW"
	.sleb128 1
	.uleb128 0x11
	.asciz	"SPI_MACRO_SNIFF_ALL_TRAFFIC"
	.sleb128 2
	.uleb128 0x11
	.asciz	"SPI_MACRO_CLOCK_IDLE_LOW"
	.sleb128 10
	.uleb128 0x11
	.asciz	"SPI_MACRO_CLOCK_IDLE_HIGH"
	.sleb128 11
	.uleb128 0x11
	.asciz	"SPI_MACRO_EDGE_IDLE_TO_ACTIVE"
	.sleb128 12
	.uleb128 0x11
	.asciz	"SPI_MACRO_EDGE_ACTIVE_TO_IDLE"
	.sleb128 13
	.uleb128 0x11
	.asciz	"SPI_MACRO_SAMPLING_ON_MIDDLE"
	.sleb128 14
	.uleb128 0x11
	.asciz	"SPI_MACRO_SAMPLING_ON_END"
	.sleb128 15
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.byte	0xd8
	.4byte	0x1dc4
	.uleb128 0x5
	.asciz	"clock_polarity"
	.byte	0x1
	.byte	0xe0
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"clock_edge"
	.byte	0x1
	.byte	0xe8
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"data_sample_timing"
	.byte	0x1
	.byte	0xf0
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"cs_line_state"
	.byte	0x1
	.byte	0xf3
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"spi_state_t"
	.byte	0x1
	.byte	0xf5
	.4byte	0x1d4c
	.uleb128 0x14
	.asciz	"spi_slave_enable"
	.byte	0x1
	.2byte	0x29b
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.asciz	"spi_slave_disable"
	.byte	0x1
	.2byte	0x324
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.uleb128 0x15
	.asciz	"engage_spi_cs"
	.byte	0x1
	.2byte	0x10e
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x1e48
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x10e
	.4byte	0x184d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_start_with_read"
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_start"
	.byte	0x1
	.2byte	0x119
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_stop"
	.byte	0x1
	.2byte	0x11b
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_print_settings"
	.byte	0x1
	.2byte	0x12a
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.byte	0x1
	.asciz	"spi_setup_prepare"
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x1f8f
	.uleb128 0x19
	.asciz	"user_prompt"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x184d
	.uleb128 0x1a
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x13c
	.4byte	0xc1
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.asciz	"spi_clock_polarity"
	.byte	0x1
	.2byte	0x13d
	.4byte	0xc1
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.asciz	"spi_clock_edge"
	.byte	0x1
	.2byte	0x13e
	.4byte	0xc1
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.asciz	"spi_data_sampling"
	.byte	0x1
	.2byte	0x13f
	.4byte	0xc1
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.asciz	"spi_enabled"
	.byte	0x1
	.2byte	0x140
	.4byte	0xc1
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.asciz	"spi_cs_line_state"
	.byte	0x1
	.2byte	0x141
	.4byte	0xc1
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_print_pins_state"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.byte	0x1
	.asciz	"spi_setup"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x1fe1
	.uleb128 0x16
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x1fe1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xe5
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_setup_execute"
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_disable_interface"
	.byte	0x1
	.2byte	0x207
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.uleb128 0x15
	.asciz	"spi_sniffer"
	.byte	0x1
	.2byte	0x228
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0x20bd
	.uleb128 0x1d
	.asciz	"trigger"
	.byte	0x1
	.2byte	0x228
	.4byte	0x184d
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x1d
	.asciz	"terminal_mode"
	.byte	0x1
	.2byte	0x228
	.4byte	0x184d
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.asciz	"last_cs_line_state"
	.byte	0x1
	.2byte	0x229
	.4byte	0x184d
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1e
	.asciz	"restart"
	.byte	0x1
	.2byte	0x22b
	.4byte	.L21
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x19
	.asciz	"data"
	.byte	0x1
	.2byte	0x245
	.4byte	0xe5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"spi_run_macro"
	.byte	0x1
	.2byte	0x182
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x2100
	.uleb128 0x1d
	.asciz	"macro"
	.byte	0x1
	.2byte	0x182
	.4byte	0x2100
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.asciz	"cleanup"
	.byte	0x1
	.2byte	0x1ac
	.4byte	.L52
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x105
	.uleb128 0x17
	.byte	0x1
	.asciz	"spi_cleanup"
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"spi_write_byte"
	.byte	0x1
	.2byte	0x217
	.byte	0x1
	.4byte	0xe5
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x2168
	.uleb128 0x1d
	.asciz	"value"
	.byte	0x1
	.2byte	0x217
	.4byte	0x1fe1
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.asciz	"result"
	.byte	0x1
	.2byte	0x220
	.4byte	0xe5
	.byte	0x0
	.uleb128 0x15
	.asciz	"spi_write_from_uart"
	.byte	0x1
	.2byte	0x3b4
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0x21d2
	.uleb128 0x16
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x21d2
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x21b9
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x3bd
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x3c2
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x17a
	.uleb128 0x15
	.asciz	"spi_read_to_uart"
	.byte	0x1
	.2byte	0x3c8
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0x223e
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x21d2
	.byte	0x1
	.byte	0x59
	.uleb128 0x21
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x2225
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x3d5
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.asciz	"spi_read_write_io"
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.4byte	0x2294
	.uleb128 0x1d
	.asciz	"engage_cs"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0x2294
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x3e7
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x3ea
	.4byte	0x105
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x184d
	.uleb128 0x15
	.asciz	"handle_extended_avr_command"
	.byte	0x1
	.2byte	0x419
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x5f
	.4byte	0x2312
	.uleb128 0x1b
	.asciz	"command"
	.byte	0x1
	.2byte	0x41d
	.4byte	0xe5
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x1b
	.asciz	"address"
	.byte	0x1
	.2byte	0x42a
	.4byte	0x125
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.asciz	"length"
	.byte	0x1
	.2byte	0x42b
	.4byte	0x125
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"spi_write"
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x2354
	.uleb128 0x1d
	.asciz	"value"
	.byte	0x1
	.2byte	0x125
	.4byte	0x2100
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.asciz	"data"
	.byte	0x1
	.2byte	0x126
	.4byte	0xe5
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"spi_read"
	.byte	0x1
	.2byte	0x123
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.byte	0x1
	.asciz	"spi_enter_binary_io"
	.byte	0x1
	.2byte	0x337
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x2417
	.uleb128 0x1f
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x1b
	.asciz	"input_byte"
	.byte	0x1
	.2byte	0x341
	.4byte	0xe5
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.asciz	"command"
	.byte	0x1
	.2byte	0x342
	.4byte	0xe5
	.uleb128 0x21
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x23e5
	.uleb128 0x1b
	.asciz	"speed"
	.byte	0x1
	.2byte	0x38f
	.4byte	0xe5
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x23
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x379
	.4byte	0xe5
	.uleb128 0x1f
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x1b
	.asciz	"count"
	.byte	0x1
	.2byte	0x37b
	.4byte	0x17a
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF5
	.byte	0x3
	.byte	0xfa
	.4byte	0x2424
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x2a8
	.uleb128 0x26
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x642
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x105
	.uleb128 0x26
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x65e
	.4byte	0x244a
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x43e
	.uleb128 0x26
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x661
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x679
	.4byte	0x246b
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x5c3
	.uleb128 0x26
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x67c
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x685
	.4byte	0x248c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x65a
	.uleb128 0x27
	.asciz	"SPI1BUF"
	.byte	0x3
	.2byte	0x688
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x68e
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x6aa
	.4byte	0x24bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x7f5
	.uleb128 0x26
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x6ad
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x6c5
	.4byte	0x24e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x97a
	.uleb128 0x26
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x6c8
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x6d1
	.4byte	0x2501
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xa11
	.uleb128 0x27
	.asciz	"SPI2BUF"
	.byte	0x3
	.2byte	0x6d4
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x6de
	.4byte	0x2526
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xaa6
	.uleb128 0x26
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x2539
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xb29
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x715
	.4byte	0x254c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xca8
	.uleb128 0x26
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x72b
	.4byte	0x255f
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xdf7
	.uleb128 0x27
	.asciz	"LATB"
	.byte	0x3
	.2byte	0x72e
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x757
	.4byte	0x2581
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0xf55
	.uleb128 0x26
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x2594
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x109a
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x80c
	.4byte	0x25a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x11a7
	.uleb128 0x26
	.4byte	.LASF25
	.byte	0x3
	.2byte	0xa57
	.4byte	0x25ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x12fe
	.uleb128 0x26
	.4byte	.LASF26
	.byte	0x3
	.2byte	0xa69
	.4byte	0x25cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x13d2
	.uleb128 0x26
	.4byte	.LASF27
	.byte	0x3
	.2byte	0xa83
	.4byte	0x25e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x1529
	.uleb128 0x26
	.4byte	.LASF28
	.byte	0x3
	.2byte	0xa95
	.4byte	0x25f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x15fd
	.uleb128 0x26
	.4byte	.LASF29
	.byte	0x3
	.2byte	0xb17
	.4byte	0x2606
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	0x1746
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2a
	.4byte	0x1831
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2c
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"spi_state"
	.byte	0x1
	.byte	0xfa
	.4byte	0x1dc4
	.byte	0x5
	.byte	0x3
	.4byte	_spi_state
	.uleb128 0x29
	.4byte	0xe5
	.4byte	0x264c
	.uleb128 0x2a
	.4byte	0x115
	.byte	0xb
	.byte	0x0
	.uleb128 0x28
	.asciz	"spi_bus_speed"
	.byte	0x1
	.byte	0xff
	.4byte	0x2667
	.byte	0x5
	.byte	0x3
	.4byte	_spi_bus_speed
	.uleb128 0x1c
	.4byte	0x263c
	.uleb128 0x24
	.4byte	.LASF5
	.byte	0x3
	.byte	0xfa
	.4byte	0x2424
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x642
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x65e
	.4byte	0x244a
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x661
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x679
	.4byte	0x246b
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x67c
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x685
	.4byte	0x248c
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.asciz	"SPI1BUF"
	.byte	0x3
	.2byte	0x688
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x68e
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x6aa
	.4byte	0x24bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x6ad
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x6c5
	.4byte	0x24e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x6c8
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x6d1
	.4byte	0x2501
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.asciz	"SPI2BUF"
	.byte	0x3
	.2byte	0x6d4
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x6de
	.4byte	0x2526
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x2539
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x715
	.4byte	0x254c
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x72b
	.4byte	0x255f
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.asciz	"LATB"
	.byte	0x3
	.2byte	0x72e
	.4byte	0x2437
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x757
	.4byte	0x2581
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x2594
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x80c
	.4byte	0x25a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF25
	.byte	0x3
	.2byte	0xa57
	.4byte	0x25ba
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF26
	.byte	0x3
	.2byte	0xa69
	.4byte	0x25cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF27
	.byte	0x3
	.2byte	0xa83
	.4byte	0x25e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF28
	.byte	0x3
	.2byte	0xa95
	.4byte	0x25f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF29
	.byte	0x3
	.2byte	0xb17
	.4byte	0x2606
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2a
	.4byte	0x1831
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2c
	.4byte	0x1a3b
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x12d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2817
	.4byte	0x1e48
	.asciz	"spi_start_with_read"
	.4byte	0x1e6c
	.asciz	"spi_start"
	.4byte	0x1e86
	.asciz	"spi_stop"
	.4byte	0x1e9f
	.asciz	"spi_print_settings"
	.4byte	0x1ec2
	.asciz	"spi_setup_prepare"
	.4byte	0x1f8f
	.asciz	"spi_print_pins_state"
	.4byte	0x1fb4
	.asciz	"spi_setup"
	.4byte	0x1fe6
	.asciz	"spi_setup_execute"
	.4byte	0x2008
	.asciz	"spi_disable_interface"
	.4byte	0x20bd
	.asciz	"spi_run_macro"
	.4byte	0x2105
	.asciz	"spi_cleanup"
	.4byte	0x2121
	.asciz	"spi_write_byte"
	.4byte	0x2312
	.asciz	"spi_write"
	.4byte	0x2354
	.asciz	"spi_read"
	.4byte	0x2371
	.asciz	"spi_enter_binary_io"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x34f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2817
	.4byte	0xe5
	.asciz	"uint8_t"
	.4byte	0x105
	.asciz	"uint16_t"
	.4byte	0x125
	.asciz	"uint32_t"
	.4byte	0x17a
	.asciz	"size_t"
	.4byte	0x19a
	.asciz	"tagIFS0BITS"
	.4byte	0x2a8
	.asciz	"IFS0BITS"
	.4byte	0x41c
	.asciz	"tagSPI1STATBITS"
	.4byte	0x43e
	.asciz	"SPI1STATBITS"
	.4byte	0x5a1
	.asciz	"tagSPI1CON1BITS"
	.4byte	0x5c3
	.asciz	"SPI1CON1BITS"
	.4byte	0x5d8
	.asciz	"tagSPI1CON2BITS"
	.4byte	0x65a
	.asciz	"SPI1CON2BITS"
	.4byte	0x7d3
	.asciz	"tagSPI2STATBITS"
	.4byte	0x7f5
	.asciz	"SPI2STATBITS"
	.4byte	0x958
	.asciz	"tagSPI2CON1BITS"
	.4byte	0x97a
	.asciz	"SPI2CON1BITS"
	.4byte	0x98f
	.asciz	"tagSPI2CON2BITS"
	.4byte	0xa11
	.asciz	"SPI2CON2BITS"
	.4byte	0xa26
	.asciz	"tagTRISABITS"
	.4byte	0xaa6
	.asciz	"TRISABITS"
	.4byte	0xab8
	.asciz	"tagPORTABITS"
	.4byte	0xb29
	.asciz	"PORTABITS"
	.4byte	0xb3b
	.asciz	"tagTRISBBITS"
	.4byte	0xca8
	.asciz	"TRISBBITS"
	.4byte	0xcba
	.asciz	"tagPORTBBITS"
	.4byte	0xdf7
	.asciz	"PORTBBITS"
	.4byte	0xe09
	.asciz	"tagODCBBITS"
	.4byte	0xf55
	.asciz	"ODCBBITS"
	.4byte	0x1079
	.asciz	"tagAD1CON1BITS"
	.4byte	0x109a
	.asciz	"AD1CON1BITS"
	.4byte	0x10ae
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x11a7
	.asciz	"AD1PCFGBITS"
	.4byte	0x12dd
	.asciz	"tagRPINR20BITS"
	.4byte	0x12fe
	.asciz	"RPINR20BITS"
	.4byte	0x13b1
	.asciz	"tagRPINR21BITS"
	.4byte	0x13d2
	.asciz	"RPINR21BITS"
	.4byte	0x1508
	.asciz	"tagRPINR22BITS"
	.4byte	0x1529
	.asciz	"RPINR22BITS"
	.4byte	0x15dc
	.asciz	"tagRPINR23BITS"
	.4byte	0x15fd
	.asciz	"RPINR23BITS"
	.4byte	0x1727
	.asciz	"tagRPOR4BITS"
	.4byte	0x1746
	.asciz	"RPOR4BITS"
	.4byte	0x1831
	.asciz	"mode_configuration_t"
	.4byte	0x18db
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0x1924
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0x1a3b
	.asciz	"bus_pirate_configuration_t"
	.4byte	0x1dc4
	.asciz	"spi_state_t"
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,info
.LASF20:
	.asciz	"TRISBbits"
.LASF19:
	.asciz	"PORTAbits"
.LASF11:
	.asciz	"SPI1CON2bits"
.LASF14:
	.asciz	"SPI2CON1"
.LASF12:
	.asciz	"SPI2STAT"
.LASF4:
	.asciz	"bytes_to_read"
.LASF26:
	.asciz	"RPINR21bits"
.LASF23:
	.asciz	"AD1CON1bits"
.LASF5:
	.asciz	"IFS0bits"
.LASF17:
	.asciz	"SPI2CON2bits"
.LASF21:
	.asciz	"PORTBbits"
.LASF3:
	.asciz	"offset"
.LASF31:
	.asciz	"bus_pirate_configuration"
.LASF8:
	.asciz	"SPI1CON1"
.LASF10:
	.asciz	"SPI1CON2"
.LASF30:
	.asciz	"mode_configuration"
.LASF22:
	.asciz	"ODCBbits"
.LASF1:
	.asciz	"spi_speed"
.LASF27:
	.asciz	"RPINR22bits"
.LASF9:
	.asciz	"SPI1CON1bits"
.LASF15:
	.asciz	"SPI2CON1bits"
.LASF29:
	.asciz	"RPOR4bits"
.LASF6:
	.asciz	"SPI1STAT"
.LASF7:
	.asciz	"SPI1STATbits"
.LASF13:
	.asciz	"SPI2STATbits"
.LASF18:
	.asciz	"TRISAbits"
.LASF2:
	.asciz	"bytes_to_write"
.LASF24:
	.asciz	"AD1PCFGbits"
.LASF16:
	.asciz	"SPI2CON2"
.LASF0:
	.asciz	"write_with_read"
.LASF25:
	.asciz	"RPINR20bits"
.LASF28:
	.asciz	"RPINR23bits"
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0007
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
