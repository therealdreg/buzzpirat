	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\base.c"
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
	.type	_clear_mode_configuration,@function
_clear_mode_configuration:
.LFB24:
	.file 1 "../base.c"
	.loc 1 157 0
	.set ___PA___,1
	.loc 1 158 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w2
	bclr.b	w2,#4
	.loc 1 159 0
	mov	#_mode_configuration,w1
	clr.b	[w1]
	.loc 1 162 0
	mov.b	#-32,w1
	and.b	w2,w1,[w0]
	.loc 1 163 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_clear_mode_configuration, .-_clear_mode_configuration
	.align	2
	.type	_delay_long,@function
_delay_long:
.LFB48:
	.loc 1 585 0
	.set ___PA___,1
	.loc 1 586 0
	sub	w0,#0,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,39
	bra	z,.L2
	.loc 1 590 0
	add	w0,w0,w0
	addc	w1,w1,w1
	sub	w0,#1,w6
	subb	w1,#0,w7
	.loc 1 591 0
	mov	_TMR1,w0
.LBB18:
	.loc 1 601 0
	mov	#32766,w3
.L8:
	.loc 1 594 0
	mov	_TMR1,w2
	.loc 1 595 0
	sub	w2,w0,w1
	.loc 1 597 0
	mul.uu	w1,#1,w4
	sub	w4,w6,[w15]
	subb	w5,w7,[w15]
	.set ___BP___,4
	bra	geu,.L2
	.loc 1 601 0
	sub	w1,w3,[w15]
	.set ___BP___,86
	bra	leu,.L8
	.loc 1 602 0
	sub	w6,w4,w6
	subb	w7,w5,w7
	.loc 1 594 0
	mov	w2,w0
	bra	.L8
.L2:
.LBE18:
	.loc 1 606 0
	return	
	.set ___PA___,0
.LFE48:
	.size	_delay_long, .-_delay_long
	.align	2
	.global	_bp_reset_board_state	; export
	.type	_bp_reset_board_state,@function
_bp_reset_board_state:
.LFB25:
	.loc 1 165 0
	.set ___PA___,1
	.loc 1 166 0
	bset.b	_TRISBbits+1,#1
	.loc 1 167 0
	bset.b	_TRISBbits+1,#0
	.loc 1 168 0
	bset.b	_TRISBbits,#7
	.loc 1 169 0
	bset.b	_TRISBbits,#6
	.loc 1 170 0
	bset.b	_TRISBbits+1,#2
.LBB19:
.LBB20:
	.file 2 "../hardware.h"
	.loc 2 135 0
	bclr.b	_TRISAbits,#1
	.loc 2 136 0
	bclr.b	_PORTAbits,#1
.LBE20:
.LBE19:
	.loc 1 181 0
	mov	#-32,w0
	and	_RPOR5bits
	.loc 1 183 0
	mov	#_bus_pirate_configuration+9,w0
	clr.b	[w0]
	.loc 1 184 0
	call	_clear_mode_configuration
.LBB21:
.LBB22:
	.loc 2 78 0
	bclr.b	_PORTBbits+1,#3
	.loc 2 79 0
	bclr.b	_TRISBbits+1,#3
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.file 3 "../hardwarev3.h"
	.loc 3 153 0
	bclr.b	_AD1PCFGbits+1,#4
	.loc 3 154 0
	bclr.b	_AD1PCFGbits+1,#2
	.loc 3 155 0
	bclr.b	_AD1PCFGbits+1,#1
	.loc 3 156 0
	bclr.b	_AD1PCFGbits+1,#3
.LBE26:
.LBE25:
	.loc 1 192 0
	mov	#224,w0
	ior	_AD1CON1bits
	.loc 1 203 0
	clr	_AD1CSSL
	.loc 1 215 0
	mov	#7938,w0
	mov	w0,_AD1CON3
	.loc 1 229 0
	clr	_AD1CON2
	.loc 1 230 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_bp_reset_board_state, .-_bp_reset_board_state
	.align	2
	.global	_bp_read_adc	; export
	.type	_bp_read_adc,@function
_bp_read_adc:
.LFB26:
	.loc 1 232 0
	.set ___PA___,1
	.loc 1 235 0
	mov	w0,_AD1CHS
	.loc 1 238 0
	bset.b	_AD1CON1bits,#1
	.loc 1 241 0
	bclr.b	_AD1CON1bits,#0
.L11:
	.loc 1 244 0
	btst.b	_AD1CON1bits,#0
	.set ___BP___,86
	bra	z,.L11
	.loc 1 248 0
	mov	_ADC1BUF0,w0
	.loc 1 249 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_bp_read_adc, .-_bp_read_adc
	.align	2
	.global	_bp_reverse_integer	; export
	.type	_bp_reverse_integer,@function
_bp_reverse_integer:
.LFB32:
	.loc 1 353 0
	.set ___PA___,1
	.loc 1 353 0
	mov	#16,w4
	.loc 1 363 0
	mov	#1,w3
	.loc 1 362 0
	clr	w2
.L15:
	.loc 1 365 0
	add	w2,w2,w2
	.loc 1 366 0
	and	w3,w0,w5
	.set ___BP___,50
	bra	z,.L14
	.loc 1 367 0
	bset	w2,#0
.L14:
	.loc 1 369 0
	add	w3,w3,w3
	dec	w4,w4
	.loc 1 364 0
	.set ___BP___,94
	bra	nz,.L15
	.loc 1 372 0
	ze	w1,w0
	subr	w0,#16,w0
	lsr	w2,w0,w0
	.loc 1 374 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_bp_reverse_integer, .-_bp_reverse_integer
	.align	2
	.global	_bp_reverse_word	; export
	.type	_bp_reverse_word,@function
_bp_reverse_word:
.LFB31:
	.loc 1 344 0
	.set ___PA___,1
	.loc 1 349 0
	mov.b	#16,w1
	call	_bp_reverse_integer
	.loc 1 351 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_bp_reverse_word, .-_bp_reverse_word
	.align	2
	.global	_bp_reverse_byte	; export
	.type	_bp_reverse_byte,@function
_bp_reverse_byte:
.LFB30:
	.loc 1 336 0
	.set ___PA___,1
	.loc 1 340 0
	ze	w0,w0
	mov.b	#8,w1
	call	_bp_reverse_integer
	.loc 1 342 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_bp_reverse_byte, .-_bp_reverse_byte
	.align	2
	.global	_bp_read_from_flash	; export
	.type	_bp_read_from_flash,@function
_bp_read_from_flash:
.LFB46:
	.loc 1 543 0
	.set ___PA___,1
	.loc 1 544 0
	mov	#_TBLPAG,w2
	mov.b	[w2],w2
	.loc 1 547 0
	mov.b	WREG,_TBLPAG
	.loc 1 548 0
	tblrdh.w	[w1], w0
	tblrdl.w	[w1], w1
	.loc 1 549 0
	mov.b	w2,w4
	mov	#_TBLPAG,w3
	mov.b	w4,[w3]
	.loc 1 548 0
	sl	w0,#8,w0
	ior	w1,w0,w0
	.loc 1 552 0
	return	
	.set ___PA___,0
.LFE46:
	.size	_bp_read_from_flash, .-_bp_read_from_flash
	.align	2
	.global	_bp_initialise_delay_timer	; export
	.type	_bp_initialise_delay_timer,@function
_bp_initialise_delay_timer:
.LFB47:
	.loc 1 554 0
	.set ___PA___,1
	.loc 1 569 0
	mov	#16,w0
	mov	w0,_T1CON
	.loc 1 572 0
	clr	_TMR1
	.loc 1 575 0
	setm	_PR1
	.loc 1 578 0
	bset.b	_T1CONbits+1,#7
	.loc 1 581 0
	return	
	.set ___PA___,0
.LFE47:
	.size	_bp_initialise_delay_timer, .-_bp_initialise_delay_timer
	.align	2
	.global	_bp_delay_ms	; export
	.type	_bp_delay_ms,@function
_bp_delay_ms:
.LFB50:
	.loc 1 622 0
	.set ___PA___,1
	.loc 1 622 0
	mov	#1000,w1
	mul.ss	w0,w1,w0
	clr	w1
	call	_delay_long
	return	
	.set ___PA___,0
.LFE50:
	.size	_bp_delay_ms, .-_bp_delay_ms
	.align	2
	.global	_bp_delay_us	; export
	.type	_bp_delay_us,@function
_bp_delay_us:
.LFB51:
	.loc 1 624 0
	.set ___PA___,1
	.loc 1 625 0
	mov	#16382,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	gtu,.L23
.LBB27:
.LBB28:
	.loc 1 609 0
	cp0	w0
	.set ___BP___,39
	bra	z,.L22
	.loc 1 614 0
	add	w0,w0,w0
	dec	w0,w2
	.loc 1 615 0
	mov	_TMR1,w1
.L25:
	.loc 1 618 0
	mov	w1,w0
	sub	_TMR1,WREG
	.loc 1 619 0
	sub	w2,w0,[w15]
	.set ___BP___,86
	bra	gtu,.L25
	bra	.L22
.L23:
.LBE28:
.LBE27:
	.loc 1 630 0
	clr	w1
	call	_delay_long
.L22:
	.loc 1 631 0
	return	
	.set ___PA___,0
.LFE51:
	.size	_bp_delay_us, .-_bp_delay_us
	.align	2
	.global	_user_serial_initialise	; export
	.type	_user_serial_initialise,@function
_user_serial_initialise:
.LFB52:
	.loc 1 668 0
	.set ___PA___,1
	.loc 1 669 0
	mov	#_bus_pirate_configuration+7,w0
	mov.b	[w0],w0
	sub.b	w0,#9,[w15]
	.set ___BP___,19
	bra	z,.L28
	.loc 1 670 0
	ze	w0,w0
	add	w0,w0,w0
	mov	#_UART_BRG_SPEED,w1
	mov	[w1+w0],w1
	mov	w1,_U1BRG
.L28:
	.loc 1 692 0
	mov	#-32760,w0
	mov	w0,_U1MODE
	.loc 1 708 0
	mov	#1024,w0
	mov	w0,_U1STA
	.loc 1 710 0
	bclr.b	_IFS0bits+1,#3
	.loc 1 711 0
	return	
	.set ___PA___,0
.LFE52:
	.size	_user_serial_initialise, .-_user_serial_initialise
	.align	2
	.global	_user_serial_transmit_done	; export
	.type	_user_serial_transmit_done,@function
_user_serial_transmit_done:
.LFB53:
	.loc 1 713 0
	.set ___PA___,1
	.loc 1 713 0
	mov	_U1STAbits,w0
	sl	w0,#7,w0
	lsr	w0,#15,w0
	return	
	.set ___PA___,0
.LFE53:
	.size	_user_serial_transmit_done, .-_user_serial_transmit_done
	.align	2
	.global	_user_serial_ready_to_read	; export
	.type	_user_serial_ready_to_read,@function
_user_serial_ready_to_read:
.LFB54:
	.loc 1 715 0
	.set ___PA___,1
	.loc 1 715 0
	mov	_U1STAbits,w0
	and	w0,#1,w0
	return	
	.set ___PA___,0
.LFE54:
	.size	_user_serial_ready_to_read, .-_user_serial_ready_to_read
	.align	2
	.global	_user_serial_ringbuffer_setup	; export
	.type	_user_serial_ringbuffer_setup,@function
_user_serial_ringbuffer_setup:
.LFB55:
	.loc 1 717 0
	.set ___PA___,1
	.loc 1 718 0
	clr	w0
	mov	w0,_user_serial_ringbuffer_read
	.loc 1 719 0
	mov	#1,w0
	mov	w0,_user_serial_ringbuffer_write
	.loc 1 720 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#1
	.loc 1 721 0
	return	
	.set ___PA___,0
.LFE55:
	.size	_user_serial_ringbuffer_setup, .-_user_serial_ringbuffer_setup
	.align	2
	.global	_user_serial_ringbuffer_process	; export
	.type	_user_serial_ringbuffer_process,@function
_user_serial_ringbuffer_process:
.LFB56:
	.loc 1 723 0
	.set ___PA___,1
	.loc 1 727 0
	btst.b	_U1STAbits+9/8,#9%8
	.set ___BP___,39
	bra	nz,.L32
	.loc 1 730 0
	mov	_user_serial_ringbuffer_read,w0
	inc	w0,w0
	.loc 1 733 0
	mov	#4096,w1
	sub	w0,w1,[w15]
	.set ___BP___,72
	bra	nz,.L34
	.loc 1 734 0
	clr	w0
.L34:
	.loc 1 738 0
	mov	_user_serial_ringbuffer_write,w1
	sub	w0,w1,[w15]
	.set ___BP___,19
	bra	z,.L32
	.loc 1 743 0
	mov	w0,_user_serial_ringbuffer_read
	.loc 1 745 0
	mov	_bus_pirate_configuration,w1
	.loc 1 744 0
	mov.b	[w1+w0],w0
	ze	w0,w0
	mov	w0,_U1TXREG
.L32:
	.loc 1 746 0
	return	
	.set ___PA___,0
.LFE56:
	.size	_user_serial_ringbuffer_process, .-_user_serial_ringbuffer_process
	.align	2
	.global	_user_serial_ringbuffer_flush	; export
	.type	_user_serial_ringbuffer_flush,@function
_user_serial_ringbuffer_flush:
.LFB57:
	.loc 1 748 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	.loc 1 760 0
	mov	_user_serial_ringbuffer_write,w5
	.loc 1 768 0
	mov	_bus_pirate_configuration,w8
	mov	_user_serial_ringbuffer_read,w7
	.loc 1 755 0
	mov	#4096,w4
	.loc 1 756 0
	clr	w3
	.loc 1 765 0
	mov	#512,w6
.L40:
	.loc 1 752 0
	inc	w7,w2
.L39:
	.loc 1 756 0
	mov	w3,w0
	.loc 1 755 0
	sub	w2,w4,[w15]
	.set ___BP___,28
	bra	z,.L37
	.loc 1 752 0
	mov	w2,w0
.L37:
	.loc 1 760 0
	sub	w0,w5,[w15]
	.set ___BP___,4
	bra	z,.L38
	.loc 1 765 0
	mov	_U1STAbits,w9
	and	w6,w9,w1
	.set ___BP___,86
	bra	nz,.L39
	.loc 1 767 0
	mov.b	[w8+w0],w1
	ze	w1,w1
	mov	w1,_U1TXREG
	.loc 1 766 0
	mov	w0,w7
	bra	.L40
.L38:
	.loc 1 767 0
	mov	w7,_user_serial_ringbuffer_read
	.loc 1 771 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE57:
	.size	_user_serial_ringbuffer_flush, .-_user_serial_ringbuffer_flush
	.align	2
	.global	_user_serial_ringbuffer_append	; export
	.type	_user_serial_ringbuffer_append,@function
_user_serial_ringbuffer_append:
.LFB58:
	.loc 1 773 0
	.set ___PA___,1
	.loc 1 774 0
	mov	_user_serial_ringbuffer_write,w1
	mov	_user_serial_ringbuffer_read,w2
	sub	w1,w2,[w15]
	.set ___BP___,80
	bra	nz,.L44
	.loc 1 775 0
	bclr.b	_PORTAbits,#1
	.loc 1 776 0
	mov	#_bus_pirate_configuration+10,w0
	bset	[w0],#1
	.loc 1 777 0
	bra	.L43
.L44:
	.loc 1 780 0
	mov	_bus_pirate_configuration,w2
	mov.b	w0,[w2+w1]
	.loc 1 782 0
	inc	w1,w1
	mov	w1,_user_serial_ringbuffer_write
	.loc 1 783 0
	mov	#4096,w0
	sub	w1,w0,[w15]
	.set ___BP___,62
	bra	nz,.L43
	.loc 1 784 0
	clr	w0
	mov	w0,_user_serial_ringbuffer_write
.L43:
	.loc 1 786 0
	return	
	.set ___PA___,0
.LFE58:
	.size	_user_serial_ringbuffer_append, .-_user_serial_ringbuffer_append
	.align	2
	.global	_bp_write_hex_byte_to_ringbuffer	; export
	.type	_bp_write_hex_byte_to_ringbuffer,@function
_bp_write_hex_byte_to_ringbuffer:
.LFB43:
	.loc 1 503 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	mov.b	w0,w8
	.loc 1 504 0
	mov.b	#48,w0
	call	_user_serial_ringbuffer_append
	.loc 1 505 0
	mov.b	#120,w0
	call	_user_serial_ringbuffer_append
	.loc 1 506 0
	ze	w8,w8
	lsr	w8,#4,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_ringbuffer_append
	.loc 1 507 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_ringbuffer_append
	.loc 1 508 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_bp_write_hex_byte_to_ringbuffer, .-_bp_write_hex_byte_to_ringbuffer
	.align	2
	.global	_user_serial_read_byte	; export
	.type	_user_serial_read_byte,@function
_user_serial_read_byte:
.LFB59:
	.loc 1 788 0
	.set ___PA___,1
.L48:
	.loc 1 789 0
	btst.b	_U1STAbits,#0
	.set ___BP___,86
	bra	z,.L48
	.loc 1 792 0
	mov	_U1RXREG,w0
	.loc 1 793 0
	return	
	.set ___PA___,0
.LFE59:
	.size	_user_serial_read_byte, .-_user_serial_read_byte
	.align	2
	.global	_user_serial_transmit_character	; export
	.type	_user_serial_transmit_character,@function
_user_serial_transmit_character:
.LFB60:
	.loc 1 795 0
	.set ___PA___,1
	.loc 1 797 0
	mov	#_bus_pirate_configuration+10,w1
	mov	[w1],w1
	and	w1,#1,w1
	.set ___BP___,39
	bra	nz,.L50
	.loc 1 802 0
	mov	#512,w2
.L53:
	mov	_U1STAbits,w3
	and	w2,w3,w1
	.set ___BP___,86
	bra	nz,.L53
	.loc 1 805 0
	ze	w0,w0
	mov	w0,_U1TXREG
.L50:
	.loc 1 806 0
	return	
	.set ___PA___,0
.LFE60:
	.size	_user_serial_transmit_character, .-_user_serial_transmit_character
	.align	2
	.global	_bp_write_hex_word	; export
	.type	_bp_write_hex_word,@function
_bp_write_hex_word:
.LFB44:
	.loc 1 510 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov	w0,w8
	.loc 1 511 0
	mov	#tbloffset(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	.loc 1 512 0
	lsr	w8,#12,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 513 0
	lsr	w8,#8,w0
	and	w0,#15,w0
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 514 0
	lsr	w8,#4,w0
	and	w0,#15,w0
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 515 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_transmit_character
	.loc 1 516 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE44:
	.size	_bp_write_hex_word, .-_bp_write_hex_word
	.align	2
	.global	_bp_write_hex_byte	; export
	.type	_bp_write_hex_byte,@function
_bp_write_hex_byte:
.LFB42:
	.loc 1 497 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	mov.b	w0,w8
	.loc 1 498 0
	mov	#tbloffset(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_HEXADECIMAL_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	.loc 1 499 0
	ze	w8,w8
	lsr	w8,#4,w0
	mov	#_HEX_ASCII_TABLE,w9
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 500 0
	and	w8,#15,w8
	mov.b	[w9+w8],w0
	call	_user_serial_transmit_character
	.loc 1 501 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE42:
	.size	_bp_write_hex_byte, .-_bp_write_hex_byte
	.align	2
	.type	_print_decimal,@function
_print_decimal:
.LFB38:
	.loc 1 461 0
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
	mov.b	w4,[w15-16]
	.loc 1 472 0
	sub	w0,#0,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,20
	bra	z,.L58
	.loc 1 477 0
	cp0.b	w4
	.set ___BP___,91
	bra	nz,.L63
	bra	.L57
.L58:
	.loc 1 473 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	.loc 1 474 0
	bra	.L57
.L63:
	.loc 1 477 0
	mov.d	w2,w8
	mov.d	w0,w12
	clr.b	w0
	mov.b	w0,[w15-15]
	mov.b	w0,w14
.L59:
	.loc 1 478 0
	mov.d	w8,w2
	mov.d	w12,w0
	call	___udivsi3
	mov.d	w0,w10
	.loc 1 479 0
	mov.b	[w15-15],w1
	cp0.b	w1
	.set ___BP___,29
	bra	nz,.L61
	sub	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	z,.L62
.L61:
	.loc 1 480 0
	mov.b	#48,w4
	add.b	w10,w4,w0
	call	_user_serial_transmit_character
	.loc 1 481 0
	mul.ss	w11,w8,w0
	mul.ss	w9,w10,w2
	add	w2,w0,w0
	mul.uu	w10,w8,w10
	add	w0,w11,w11
	sub	w12,w10,w12
	subb	w13,w11,w13
	.loc 1 482 0
	mov.b	#1,w0
	mov.b	w0,[w15-15]
.L62:
	.loc 1 477 0
	inc.b	w14,w14
	mov.b	[w15-16],w1
	sub.b	w1,w14,[w15]
	.set ___BP___,9
	bra	leu,.L57
	.loc 1 485 0
	mov	#10,w2
	mov	#0,w3
	mov.d	w8,w0
	call	___udivsi3
	mov.d	w0,w8
	bra	.L59
.L57:
	.loc 1 487 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE38:
	.size	_print_decimal, .-_print_decimal
	.align	2
	.global	_bp_write_dec_byte	; export
	.type	_bp_write_dec_byte,@function
_bp_write_dec_byte:
.LFB41:
	.loc 1 495 0
	.set ___PA___,1
	.loc 1 495 0
	ze	w0,w0
	clr	w1
	mov.b	#3,w4
	mov	#100,w2
	mov	#0,w3
	call	_print_decimal
	return	
	.set ___PA___,0
.LFE41:
	.size	_bp_write_dec_byte, .-_bp_write_dec_byte
	.align	2
	.global	_bp_write_dec_word	; export
	.type	_bp_write_dec_word,@function
_bp_write_dec_word:
.LFB40:
	.loc 1 493 0
	.set ___PA___,1
	.loc 1 493 0
	clr	w1
	mov.b	#5,w4
	mov	#10000,w2
	mov	#0,w3
	call	_print_decimal
	return	
	.set ___PA___,0
.LFE40:
	.size	_bp_write_dec_word, .-_bp_write_dec_word
	.align	2
	.global	_bp_write_dec_dword	; export
	.type	_bp_write_dec_dword,@function
_bp_write_dec_dword:
.LFB39:
	.loc 1 489 0
	.set ___PA___,1
	.loc 1 490 0
	mov.b	#8,w4
	mov	#38528,w2
	mov	#152,w3
	call	_print_decimal
	.loc 1 491 0
	return	
	.set ___PA___,0
.LFE39:
	.size	_bp_write_dec_dword, .-_bp_write_dec_dword
	.align	2
	.global	_bp_write_voltage	; export
	.type	_bp_write_voltage,@function
_bp_write_voltage:
.LFB45:
	.loc 1 518 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	mov	w0,w2
	.loc 1 530 0
	mul.su	w2,#29,w2
	mov	#11651,w1
	mul.uu	w2,w1,w0
	lsr	w1,#3,w9
	.loc 1 534 0
	lsr	w1,#5,w1
	mov	#5243,w0
	mul.uu	w1,w0,w0
	lsr	w1,w8
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 535 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 536 0
	mov	#100,w0
	mul.ss	w8,w0,w0
	sub.b	w9,w0,w8
	.loc 1 537 0
	sub.b	w8,#9,[w15]
	.set ___BP___,61
	bra	gtu,.L68
	.loc 1 538 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L68:
	.loc 1 540 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 541 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE45:
	.size	_bp_write_voltage, .-_bp_write_voltage
	.align	2
	.global	_bp_adc_probe	; export
	.type	_bp_adc_probe,@function
_bp_adc_probe:
.LFB27:
	.loc 1 251 0
	.set ___PA___,1
.LBB29:
.LBB30:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE30:
.LBE29:
	.loc 1 256 0
	mov	#12,w0
	call	_bp_read_adc
	call	_bp_write_voltage
.LBB31:
.LBB32:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.LBE32:
.LBE31:
	.loc 1 260 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_bp_adc_probe, .-_bp_adc_probe
	.align	2
	.global	_bp_write_bin_byte	; export
	.type	_bp_write_bin_byte,@function
_bp_write_bin_byte:
.LFB36:
	.loc 1 398 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	mov	w12,[w15++]
.LCFI12:
	mov.b	w0,w10
	.loc 1 402 0
	mov	#tbloffset(_MSG_BINARY_NUMBER_PREFIX_str),w0
	mov	#tblpage(_MSG_BINARY_NUMBER_PREFIX_str),w1
	call	_bp_message_write_buffer
	mov	#8,w8
	.loc 1 399 0
	mov.b	#-128,w9
	.loc 1 405 0
	mov.b	#48,w11
	mov.b	#49,w12
.L73:
	and.b	w9,w10,w1
	mov.b	w11,w0
	.set ___BP___,50
	bra	z,.L71
	mov.b	w12,w0
.L71:
	call	_user_serial_transmit_character
	dec	w8,w8
	.loc 1 404 0
	.set ___BP___,11
	bra	z,.L70
	.loc 1 406 0
	ze	w9,w9
	lsr	w9,w9
	bra	.L73
.L70:
	.loc 1 408 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE36:
	.size	_bp_write_bin_byte, .-_bp_write_bin_byte
	.align	2
	.global	_bp_write_string	; export
	.type	_bp_write_string,@function
_bp_write_string:
.LFB34:
	.loc 1 384 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI13:
	mov	w0,w8
	.loc 1 386 0
	mov.b	[w8],w0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L75
	inc	w8,w8
.L77:
	.loc 1 387 0
	call	_user_serial_transmit_character
	.loc 1 386 0
	mov.b	[w8++],w0
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L77
.L75:
	.loc 1 389 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE34:
	.size	_bp_write_string, .-_bp_write_string
	.section	.const,psv,page
.LC0:
	.asciz	"000,"
.LC1:
	.asciz	"00"
	.section	.text,code
	.align	2
	.global	_bp_write_dec_dword_friendly	; export
	.type	_bp_write_dec_dword_friendly,@function
_bp_write_dec_dword_friendly:
.LFB37:
	.loc 1 410 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI14:
	mov.d	w10,[w15++]
.LCFI15:
	mov	w12,[w15++]
.LCFI16:
	mov.d	w0,w10
	.loc 1 420 0
	mov	#16959,w0
	mov	#15,w1
	sub	w10,w0,[w15]
	subb	w11,w1,[w15]
	.set ___BP___,71
	bra	leu,.L80
	.loc 1 421 0
	mov	#16960,w2
	mov	#15,w3
	mov.d	w10,w0
	call	___udivsi3
	.loc 1 422 0
	call	_bp_write_dec_word
	.loc 1 423 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 424 0
	mov	#16960,w2
	mov	#15,w3
	mov.d	w10,w0
	call	___umodsi3
	mov.d	w0,w10
	.loc 1 427 0
	mov	#1,w12
	.loc 1 425 0
	mov	#999,w0
	sub	w10,w0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,71
	bra	gtu,.L81
	.loc 1 426 0
	mov	#.LC0,w0
	call	_bp_write_string
	.loc 1 427 0
	mov	w12,w0
	bra	.L82
.L80:
	.loc 1 416 0
	clr	w0
	.loc 1 430 0
	mov	#999,w1
	sub	w10,w1,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,58
	bra	leu,.L82
	.loc 1 416 0
	clr	w12
.L81:
	.loc 1 431 0
	mov	#1000,w2
	mov	#0,w3
	mov.d	w10,w0
	call	___udivsi3
	mov.d	w0,w8
	.loc 1 432 0
	mov	#99,w0
	sub	w8,w0,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,71
	bra	leu,.L83
	.loc 1 433 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L84
.L83:
	.loc 1 434 0
	cp0	w12
	.set ___BP___,29
	bra	z,.L85
	.loc 1 435 0
	sub	w8,#9,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	leu,.L86
	.loc 1 436 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	bra	.L87
.L86:
	.loc 1 438 0
	mov	#.LC1,w0
	call	_bp_write_string
.L87:
	.loc 1 440 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L84
.L85:
	.loc 1 442 0
	mov	w8,w0
	call	_bp_write_dec_word
.L84:
	.loc 1 443 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 444 0
	mov	#1000,w2
	mov	#0,w3
	mov.d	w10,w0
	call	___umodsi3
	mov.d	w0,w10
	.loc 1 445 0
	mov	#1,w0
.L82:
	.loc 1 447 0
	mov	#99,w1
	sub	w10,w1,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,79
	bra	leu,.L88
	.loc 1 448 0
	mov	w10,w0
	call	_bp_write_dec_word
	bra	.L79
.L88:
	.loc 1 449 0
	cp0	w0
	.set ___BP___,29
	bra	z,.L90
	.loc 1 450 0
	sub	w10,#9,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	leu,.L91
	.loc 1 451 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
	bra	.L92
.L91:
	.loc 1 453 0
	mov	#.LC1,w0
	call	_bp_write_string
.L92:
	.loc 1 455 0
	mov	w10,w0
	call	_bp_write_dec_word
	bra	.L79
.L90:
	.loc 1 457 0
	mov	w10,w0
	call	_bp_write_dec_word
.L79:
	.loc 1 458 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE37:
	.size	_bp_write_dec_dword_friendly, .-_bp_write_dec_dword_friendly
	.align	2
	.global	_bp_write_line	; export
	.type	_bp_write_line,@function
_bp_write_line:
.LFB35:
	.loc 1 391 0
	.set ___PA___,1
	.loc 1 392 0
	call	_bp_write_string
	.loc 1 394 0
	mov.b	#13,w0
	call	_user_serial_transmit_character
	.loc 1 395 0
	mov.b	#10,w0
	call	_user_serial_transmit_character
	.loc 1 396 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_bp_write_line, .-_bp_write_line
	.section	.const,psv,page
.LC2:
	.asciz	"\010\010\010\010\010"
.LC3:
	.byte	0
	.section	.text,code
	.align	2
	.global	_bp_adc_continuous_probe	; export
	.type	_bp_adc_continuous_probe,@function
_bp_adc_continuous_probe:
.LFB28:
	.loc 1 262 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI17:
	mov.d	w10,[w15++]
.LCFI18:
	.loc 1 265 0
	mov	#tbloffset(_MSG_ADC_VOLTMETER_MODE_str),w0
	mov	#tblpage(_MSG_ADC_VOLTMETER_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 266 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 267 0
	mov	#tbloffset(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w0
	mov	#tblpage(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 268 0
	clr	w0
	call	_bp_write_voltage
	.loc 1 269 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w0
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w1
	call	_bp_message_write_buffer
	.loc 1 283 0
	mov	#.LC2,w9
	.loc 1 287 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w10
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w11
	.loc 1 272 0
	bra	.L97
.L98:
	.loc 1 274 0
	bset.b	_AD1CON1bits+1,#7
	.loc 1 277 0
	mov	#12,w0
	call	_bp_read_adc
	mov	w0,w8
	.loc 1 280 0
	bclr.b	_AD1CON1bits+1,#7
	.loc 1 283 0
	mov	w9,w0
	call	_bp_write_string
	.loc 1 286 0
	mov	w8,w0
	call	_bp_write_voltage
	.loc 1 287 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
.L97:
	.loc 1 272 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,91
	bra	z,.L98
	.loc 1 291 0
	call	_user_serial_read_byte
	.loc 1 292 0
	mov	#.LC3,w0
	call	_bp_write_line
	.loc 1 293 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_bp_adc_continuous_probe, .-_bp_adc_continuous_probe
	.align	2
	.global	_bp_write_buffer	; export
	.type	_bp_write_buffer,@function
_bp_write_buffer:
.LFB33:
	.loc 1 376 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI19:
	mov	w10,[w15++]
.LCFI20:
	mov	w1,w10
	.loc 1 379 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L99
	mov	w0,w9
	clr	w8
.L101:
	.loc 1 380 0
	mov.b	[w9++],w0
	call	_user_serial_transmit_character
	.loc 1 379 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L101
.L99:
	.loc 1 382 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_bp_write_buffer, .-_bp_write_buffer
	.align	2
	.global	_bp_write_formatted_integer	; export
	.type	_bp_write_formatted_integer,@function
_bp_write_formatted_integer:
.LFB29:
	.loc 1 295 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI21:
	mov	w0,w8
	.loc 1 302 0
	mov	#_bus_pirate_configuration+8,w0
	mov.b	[w0],w0
	sub.b	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L106
	.set ___BP___,50
	bra	ltu,.L105
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L107
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L103
	bra	.L113
.L105:
	.loc 1 304 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,50
	bra	z,.L109
	.loc 1 305 0
	mov	w8,w0
	call	_bp_write_hex_word
	bra	.L103
.L109:
	.loc 1 307 0
	mov.b	w8,w0
	call	_bp_write_hex_byte
	bra	.L103
.L106:
	.loc 1 312 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,50
	bra	z,.L110
	.loc 1 313 0
	mov	w8,w0
	call	_bp_write_dec_word
	bra	.L103
.L110:
	.loc 1 315 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	bra	.L103
.L107:
	.loc 1 320 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,61
	bra	z,.L111
	.loc 1 321 0
	lsr	w8,#8,w0
	call	_bp_write_bin_byte
	.loc 1 322 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
.L111:
	.loc 1 324 0
	mov.b	w8,w0
	call	_bp_write_bin_byte
	.loc 1 325 0
	bra	.L103
.L113:
	.loc 1 328 0
	mov	#_mode_configuration+2,w0
	mov.b	#32,w1
	and.b	w1,[w0],w0
	.set ___BP___,71
	bra	z,.L112
	.loc 1 329 0
	lsr	w8,#8,w0
	call	_user_serial_transmit_character
.L112:
	.loc 1 331 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
.L103:
	.loc 1 334 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_bp_write_formatted_integer, .-_bp_write_formatted_integer
	.align	2
	.global	_user_serial_wait_transmission_done	; export
	.type	_user_serial_wait_transmission_done,@function
_user_serial_wait_transmission_done:
.LFB61:
	.loc 1 808 0
	.set ___PA___,1
	.loc 1 809 0
	mov	#256,w1
.L115:
	mov	_U1STAbits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	z,.L115
	.loc 1 811 0
	return	
	.set ___PA___,0
.LFE61:
	.size	_user_serial_wait_transmission_done, .-_user_serial_wait_transmission_done
	.align	2
	.global	_user_serial_set_baud_rate	; export
	.type	_user_serial_set_baud_rate,@function
_user_serial_set_baud_rate:
.LFB62:
	.loc 1 813 0
	.set ___PA___,1
	.loc 1 813 0
	mov	w0,_U1BRG
	return	
	.set ___PA___,0
.LFE62:
	.size	_user_serial_set_baud_rate, .-_user_serial_set_baud_rate
	.align	2
	.global	_user_serial_check_overflow	; export
	.type	_user_serial_check_overflow,@function
_user_serial_check_overflow:
.LFB63:
	.loc 1 815 0
	.set ___PA___,1
	.loc 1 815 0
	lsr	_U1STAbits,WREG
	and	w0,#1,w0
	return	
	.set ___PA___,0
.LFE63:
	.size	_user_serial_check_overflow, .-_user_serial_check_overflow
	.align	2
	.global	_user_serial_clear_overflow	; export
	.type	_user_serial_clear_overflow,@function
_user_serial_clear_overflow:
.LFB64:
	.loc 1 817 0
	.set ___PA___,1
	.loc 1 817 0
	bclr.b	_U1STAbits,#1
	return	
	.set ___PA___,0
.LFE64:
	.size	_user_serial_clear_overflow, .-_user_serial_clear_overflow
	.align	2
	.global	_user_serial_process_transmission_interrupt	; export
	.type	_user_serial_process_transmission_interrupt,@function
_user_serial_process_transmission_interrupt:
.LFB65:
	.loc 1 827 0
	.set ___PA___,1
	.loc 1 829 0
	btst.b	_IEC0bits+12/8,#12%8
	.set ___BP___,39
	bra	nz,.L120
	mov	_UART1TXSent,w2
	mov	_UART1TXAvailable,w0
	sub	w0,w2,[w15]
	.set ___BP___,19
	bra	z,.L120
	.loc 1 834 0
	mov	#512,w1
.L123:
	mov	_U1STAbits,w3
	and	w1,w3,w0
	.set ___BP___,86
	bra	nz,.L123
	.loc 1 838 0
	bclr.b	_IFS0bits+1,#4
	.loc 1 841 0
	bset.b	_IEC0bits+1,#4
	.loc 1 844 0
	mov	_UART1TXBuf,w0
	mov.b	[w0+w2],w0
	ze	w0,w0
	mov	w0,_U1TXREG
.L120:
	.loc 1 845 0
	return	
	.set ___PA___,0
.LFE65:
	.size	_user_serial_process_transmission_interrupt, .-_user_serial_process_transmission_interrupt
	.section	.isr.text,code,keep
	.align	2
	.global	__U1RXInterrupt	; export
	.type	__U1RXInterrupt,@function
__U1RXInterrupt:
	.section	.isr.text,code,keep
.LFB66:
	.section	.isr.text,code,keep
	.loc 1 847 0
	.set ___PA___,1
	mov.d	w0,[w15++]
.LCFI22:
	mov	w2,[w15++]
.LCFI23:
	.section	.isr.text,code,keep
	.loc 1 848 0
	mov	_U1RXREG,w2
	mov	_UART1RXRecvd,w0
	mov	_UART1RXBuf,w1
	mov.b	w2,[w1+w0]
	.section	.isr.text,code,keep
	.loc 1 849 0
	mov	_UART1RXRecvd,w0
	inc	w0,w0
	mov	w0,_UART1RXRecvd
	.section	.isr.text,code,keep
	.loc 1 851 0
	mov	_UART1RXToRecv,w1
	sub	w0,w1,[w15]
	.set ___BP___,62
	bra	nz,.L126
	.section	.isr.text,code,keep
	.loc 1 852 0
	bclr.b	_IEC0bits+1,#3
.L126:
	.section	.isr.text,code,keep
	.loc 1 855 0
	bclr.b	_IFS0bits+1,#3
	.section	.isr.text,code,keep
	.loc 1 856 0
	mov	[--w15],w2
	mov.d	[--w15],w0
	retfie	
	.set ___PA___,0
.LFE66:
	.size	__U1RXInterrupt, .-__U1RXInterrupt
	.section	.isr.text,code,keep
	.align	2
	.global	__U1TXInterrupt	; export
	.type	__U1TXInterrupt,@function
__U1TXInterrupt:
	.section	.isr.text,code,keep
.LFB67:
	.section	.isr.text,code,keep
	.loc 1 858 0
	.set ___PA___,1
	mov.d	w0,[w15++]
.LCFI24:
	.section	.isr.text,code,keep
	.loc 1 859 0
	mov	_UART1TXSent,w0
	inc	w0,w0
	mov	w0,_UART1TXSent
	.section	.isr.text,code,keep
	.loc 1 860 0
	mov	_UART1TXAvailable,w1
	sub	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L128
	.section	.isr.text,code,keep
	.loc 1 861 0
	bclr.b	_IEC0bits+1,#4
	bra	.L129
.L128:
	.section	.isr.text,code,keep
	.loc 1 863 0
	mov	_UART1TXBuf,w1
	mov.b	[w1+w0],w0
	ze	w0,w0
	mov	w0,_U1TXREG
.L129:
	.section	.isr.text,code,keep
	.loc 1 866 0
	bclr.b	_IFS0bits+1,#4
	.section	.isr.text,code,keep
	.loc 1 867 0
	mov.d	[--w15],w0
	retfie	
	.set ___PA___,0
.LFE67:
	.size	__U1TXInterrupt, .-__U1TXInterrupt
	.section	.text,code
	.align	2
	.global	_user_serial_read_big_endian_word	; export
	.type	_user_serial_read_big_endian_word,@function
_user_serial_read_big_endian_word:
.LFB68:
	.loc 1 911 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI25:
	.loc 1 912 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 914 0
	call	_user_serial_read_byte
	.loc 1 912 0
	sl	w8,#8,w8
	.loc 1 914 0
	ze	w0,w0
	ior	w0,w8,w0
	.loc 1 915 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE68:
	.size	_user_serial_read_big_endian_word, .-_user_serial_read_big_endian_word
	.align	2
	.global	_user_serial_read_big_endian_long_word	; export
	.type	_user_serial_read_big_endian_long_word,@function
_user_serial_read_big_endian_long_word:
.LFB69:
	.loc 1 917 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI26:
	.loc 1 918 0
	call	_user_serial_read_big_endian_word
	mov	w0,w8
	.loc 1 920 0
	call	_user_serial_read_big_endian_word
	mov	w0,w2
	.loc 1 918 0
	mul.uu	w8,#1,w0
	sl	w0,#0,w1
	mov	#0,w0
	.loc 1 920 0
	clr	w3
	ior	w0,w2,w0
	ior	w1,w3,w1
	.loc 1 921 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE69:
	.size	_user_serial_read_big_endian_long_word, .-_user_serial_read_big_endian_long_word
	.global	_UART1RXBuf	; export
	.section	.bss.filereg,bss
	.align	2
	.type	_UART1RXBuf,@object
	.size	_UART1RXBuf, 2
_UART1RXBuf:
	.skip	2
	.global	_UART1RXToRecv	; export
	.align	2
	.type	_UART1RXToRecv,@object
	.size	_UART1RXToRecv, 2
_UART1RXToRecv:
	.skip	2
	.global	_UART1RXRecvd	; export
	.align	2
	.type	_UART1RXRecvd,@object
	.size	_UART1RXRecvd, 2
_UART1RXRecvd:
	.skip	2
	.global	_UART1TXBuf	; export
	.align	2
	.type	_UART1TXBuf,@object
	.size	_UART1TXBuf, 2
_UART1TXBuf:
	.skip	2
	.global	_UART1TXSent	; export
	.align	2
	.type	_UART1TXSent,@object
	.size	_UART1TXSent, 2
_UART1TXSent:
	.skip	2
	.global	_UART1TXAvailable	; export
	.align	2
	.type	_UART1TXAvailable,@object
	.size	_UART1TXAvailable, 2
_UART1TXAvailable:
	.skip	2
	.section	.bss,bss
	.align	2
	.type	_user_serial_ringbuffer_write,@object
	.size	_user_serial_ringbuffer_write, 2
_user_serial_ringbuffer_write:
	.skip	2
	.align	2
	.type	_user_serial_ringbuffer_read,@object
	.size	_user_serial_ringbuffer_read, 2
_user_serial_ringbuffer_read:
	.skip	2
	.section	.const,psv,page
	.type	_HEX_ASCII_TABLE,@object
	.size	_HEX_ASCII_TABLE, 16
_HEX_ASCII_TABLE:
	.byte 48
	.byte 49
	.byte 50
	.byte 51
	.byte 52
	.byte 53
	.byte 54
	.byte 55
	.byte 56
	.byte 57
	.byte 65
	.byte 66
	.byte 67
	.byte 68
	.byte 69
	.byte 70
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI0-.LFB57
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI1-.LFB43
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI2-.LFB44
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI4-.LFB38
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
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI14-.LFB37
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI17-.LFB28
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI19-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI21-.LFB29
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI22-.LFB66
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x13
	.sleb128 -5
	.byte	0x82
	.uleb128 0x4
	.byte	0x80
	.uleb128 0x2
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI24-.LFB67
	.byte	0x13
	.sleb128 -4
	.byte	0x80
	.uleb128 0x2
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI25-.LFB68
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI26-.LFB69
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE88:
	.section	.text,code
.Letext0:
	.file 4 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 5 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 6 "../base.h"
	.file 7 "../core.h"
	.section	.debug_info,info
	.4byte	0x232b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../base.c"
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
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x4
	.byte	0xdd
	.4byte	0xd7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
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
	.byte	0x4
	.byte	0xbb
	.4byte	0x13e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x4
	.byte	0xc1
	.4byte	0xd7
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x4
	.byte	0xcd
	.4byte	0xee
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
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
	.byte	0x5
	.byte	0xea
	.4byte	0x2a9
	.uleb128 0x5
	.asciz	"INT0IF"
	.byte	0x5
	.byte	0xeb
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC1IF"
	.byte	0x5
	.byte	0xec
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC1IF"
	.byte	0x5
	.byte	0xed
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T1IF"
	.byte	0x5
	.byte	0xee
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC2IF"
	.byte	0x5
	.byte	0xf0
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC2IF"
	.byte	0x5
	.byte	0xf1
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2IF"
	.byte	0x5
	.byte	0xf2
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3IF"
	.byte	0x5
	.byte	0xf3
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPF1IF"
	.byte	0x5
	.byte	0xf4
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPI1IF"
	.byte	0x5
	.byte	0xf5
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1RXIF"
	.byte	0x5
	.byte	0xf6
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1TXIF"
	.byte	0x5
	.byte	0xf7
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"AD1IF"
	.byte	0x5
	.byte	0xf8
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"IFS0BITS"
	.byte	0x5
	.byte	0xf9
	.4byte	0x19b
	.uleb128 0x6
	.asciz	"tagIEC0BITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x138
	.4byte	0x3d5
	.uleb128 0x7
	.asciz	"INT0IE"
	.byte	0x5
	.2byte	0x139
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"IC1IE"
	.byte	0x5
	.2byte	0x13a
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"OC1IE"
	.byte	0x5
	.2byte	0x13b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"T1IE"
	.byte	0x5
	.2byte	0x13c
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"IC2IE"
	.byte	0x5
	.2byte	0x13e
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"OC2IE"
	.byte	0x5
	.2byte	0x13f
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"T2IE"
	.byte	0x5
	.2byte	0x140
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"T3IE"
	.byte	0x5
	.2byte	0x141
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPF1IE"
	.byte	0x5
	.2byte	0x142
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SPI1IE"
	.byte	0x5
	.2byte	0x143
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"U1RXIE"
	.byte	0x5
	.2byte	0x144
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"U1TXIE"
	.byte	0x5
	.2byte	0x145
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"AD1IE"
	.byte	0x5
	.2byte	0x146
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"IEC0BITS"
	.byte	0x5
	.2byte	0x147
	.4byte	0x2b9
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x363
	.4byte	0x464
	.uleb128 0x7
	.asciz	"TCS"
	.byte	0x5
	.2byte	0x365
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TSYNC"
	.byte	0x5
	.2byte	0x366
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TCKPS"
	.byte	0x5
	.2byte	0x368
	.4byte	0x14f
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TGATE"
	.byte	0x5
	.2byte	0x369
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TSIDL"
	.byte	0x5
	.2byte	0x36b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TON"
	.byte	0x5
	.2byte	0x36d
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x36f
	.4byte	0x498
	.uleb128 0x7
	.asciz	"TCKPS0"
	.byte	0x5
	.2byte	0x371
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TCKPS1"
	.byte	0x5
	.2byte	0x372
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.2byte	0x362
	.4byte	0x4ac
	.uleb128 0xb
	.4byte	0x3e6
	.uleb128 0xb
	.4byte	0x464
	.byte	0x0
	.uleb128 0x6
	.asciz	"tagT1CONBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x361
	.4byte	0x4cb
	.uleb128 0xc
	.4byte	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"T1CONBITS"
	.byte	0x5
	.2byte	0x375
	.4byte	0x4ac
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x5c9
	.4byte	0x605
	.uleb128 0x7
	.asciz	"URXDA"
	.byte	0x5
	.2byte	0x5ca
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"OERR"
	.byte	0x5
	.2byte	0x5cb
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FERR"
	.byte	0x5
	.2byte	0x5cc
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PERR"
	.byte	0x5
	.2byte	0x5cd
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RIDLE"
	.byte	0x5
	.2byte	0x5ce
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADDEN"
	.byte	0x5
	.2byte	0x5cf
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"URXISEL"
	.byte	0x5
	.2byte	0x5d0
	.4byte	0x14f
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRMT"
	.byte	0x5
	.2byte	0x5d1
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXBF"
	.byte	0x5
	.2byte	0x5d2
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXEN"
	.byte	0x5
	.2byte	0x5d3
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXBRK"
	.byte	0x5
	.2byte	0x5d4
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXISEL0"
	.byte	0x5
	.2byte	0x5d6
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXINV"
	.byte	0x5
	.2byte	0x5d7
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"UTXISEL1"
	.byte	0x5
	.2byte	0x5d8
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x5da
	.4byte	0x63d
	.uleb128 0x7
	.asciz	"URXISEL0"
	.byte	0x5
	.2byte	0x5dc
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"URXISEL1"
	.byte	0x5
	.2byte	0x5dd
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.2byte	0x5c8
	.4byte	0x651
	.uleb128 0xb
	.4byte	0x4dd
	.uleb128 0xb
	.4byte	0x605
	.byte	0x0
	.uleb128 0x6
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x5c7
	.4byte	0x670
	.uleb128 0xc
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"U1STABITS"
	.byte	0x5
	.2byte	0x5e0
	.4byte	0x651
	.uleb128 0x6
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x6d7
	.4byte	0x702
	.uleb128 0x7
	.asciz	"TRISA0"
	.byte	0x5
	.2byte	0x6d8
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA1"
	.byte	0x5
	.2byte	0x6d9
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA2"
	.byte	0x5
	.2byte	0x6da
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA3"
	.byte	0x5
	.2byte	0x6db
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA4"
	.byte	0x5
	.2byte	0x6dc
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"TRISABITS"
	.byte	0x5
	.2byte	0x6dd
	.4byte	0x682
	.uleb128 0x6
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x6e2
	.4byte	0x785
	.uleb128 0x7
	.asciz	"RA0"
	.byte	0x5
	.2byte	0x6e3
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA1"
	.byte	0x5
	.2byte	0x6e4
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA2"
	.byte	0x5
	.2byte	0x6e5
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA3"
	.byte	0x5
	.2byte	0x6e6
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA4"
	.byte	0x5
	.2byte	0x6e7
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"PORTABITS"
	.byte	0x5
	.2byte	0x6e8
	.4byte	0x714
	.uleb128 0x6
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x703
	.4byte	0x904
	.uleb128 0x7
	.asciz	"TRISB0"
	.byte	0x5
	.2byte	0x704
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB1"
	.byte	0x5
	.2byte	0x705
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB2"
	.byte	0x5
	.2byte	0x706
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB3"
	.byte	0x5
	.2byte	0x707
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB4"
	.byte	0x5
	.2byte	0x708
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB5"
	.byte	0x5
	.2byte	0x709
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB6"
	.byte	0x5
	.2byte	0x70a
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB7"
	.byte	0x5
	.2byte	0x70b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB8"
	.byte	0x5
	.2byte	0x70c
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB9"
	.byte	0x5
	.2byte	0x70d
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB10"
	.byte	0x5
	.2byte	0x70e
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB11"
	.byte	0x5
	.2byte	0x70f
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB12"
	.byte	0x5
	.2byte	0x710
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB13"
	.byte	0x5
	.2byte	0x711
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB14"
	.byte	0x5
	.2byte	0x712
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB15"
	.byte	0x5
	.2byte	0x713
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"TRISBBITS"
	.byte	0x5
	.2byte	0x714
	.4byte	0x797
	.uleb128 0x6
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x719
	.4byte	0xa53
	.uleb128 0x7
	.asciz	"RB0"
	.byte	0x5
	.2byte	0x71a
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB1"
	.byte	0x5
	.2byte	0x71b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB2"
	.byte	0x5
	.2byte	0x71c
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB3"
	.byte	0x5
	.2byte	0x71d
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB4"
	.byte	0x5
	.2byte	0x71e
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB5"
	.byte	0x5
	.2byte	0x71f
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB6"
	.byte	0x5
	.2byte	0x720
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB7"
	.byte	0x5
	.2byte	0x721
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB8"
	.byte	0x5
	.2byte	0x722
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB9"
	.byte	0x5
	.2byte	0x723
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB10"
	.byte	0x5
	.2byte	0x724
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB11"
	.byte	0x5
	.2byte	0x725
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB12"
	.byte	0x5
	.2byte	0x726
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB13"
	.byte	0x5
	.2byte	0x727
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB14"
	.byte	0x5
	.2byte	0x728
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB15"
	.byte	0x5
	.2byte	0x729
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"PORTBBITS"
	.byte	0x5
	.2byte	0x72a
	.4byte	0x916
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x78d
	.4byte	0xaf6
	.uleb128 0x7
	.asciz	"DONE"
	.byte	0x5
	.2byte	0x78e
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SAMP"
	.byte	0x5
	.2byte	0x78f
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ASAM"
	.byte	0x5
	.2byte	0x790
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC"
	.byte	0x5
	.2byte	0x792
	.4byte	0x14f
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM"
	.byte	0x5
	.2byte	0x793
	.4byte	0x14f
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADSIDL"
	.byte	0x5
	.2byte	0x795
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADON"
	.byte	0x5
	.2byte	0x797
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0x799
	.4byte	0xb64
	.uleb128 0x7
	.asciz	"SSRC0"
	.byte	0x5
	.2byte	0x79b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC1"
	.byte	0x5
	.2byte	0x79c
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC2"
	.byte	0x5
	.2byte	0x79d
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM0"
	.byte	0x5
	.2byte	0x79e
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM1"
	.byte	0x5
	.2byte	0x79f
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.2byte	0x78c
	.4byte	0xb78
	.uleb128 0xb
	.4byte	0xa65
	.uleb128 0xb
	.4byte	0xaf6
	.byte	0x0
	.uleb128 0x6
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x78b
	.4byte	0xb99
	.uleb128 0xc
	.4byte	0xb64
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"AD1CON1BITS"
	.byte	0x5
	.2byte	0x7a2
	.4byte	0xb78
	.uleb128 0x6
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x5
	.2byte	0x7fd
	.4byte	0xca6
	.uleb128 0x7
	.asciz	"PCFG0"
	.byte	0x5
	.2byte	0x7fe
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG1"
	.byte	0x5
	.2byte	0x7ff
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG2"
	.byte	0x5
	.2byte	0x800
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG3"
	.byte	0x5
	.2byte	0x801
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG4"
	.byte	0x5
	.2byte	0x802
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG5"
	.byte	0x5
	.2byte	0x803
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG9"
	.byte	0x5
	.2byte	0x805
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG10"
	.byte	0x5
	.2byte	0x806
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG11"
	.byte	0x5
	.2byte	0x807
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG12"
	.byte	0x5
	.2byte	0x808
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG15"
	.byte	0x5
	.2byte	0x80a
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"AD1PCFGBITS"
	.byte	0x5
	.2byte	0x80b
	.4byte	0xbad
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0xb1d
	.4byte	0xcec
	.uleb128 0x7
	.asciz	"RP10R"
	.byte	0x5
	.2byte	0xb1e
	.4byte	0x14f
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R"
	.byte	0x5
	.2byte	0xb20
	.4byte	0x14f
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.2byte	0xb22
	.4byte	0xdc8
	.uleb128 0x7
	.asciz	"RP10R0"
	.byte	0x5
	.2byte	0xb23
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP10R1"
	.byte	0x5
	.2byte	0xb24
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP10R2"
	.byte	0x5
	.2byte	0xb25
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP10R3"
	.byte	0x5
	.2byte	0xb26
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP10R4"
	.byte	0x5
	.2byte	0xb27
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R0"
	.byte	0x5
	.2byte	0xb29
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R1"
	.byte	0x5
	.2byte	0xb2a
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R2"
	.byte	0x5
	.2byte	0xb2b
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R3"
	.byte	0x5
	.2byte	0xb2c
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RP11R4"
	.byte	0x5
	.2byte	0xb2d
	.4byte	0x14f
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.2byte	0xb1c
	.4byte	0xddc
	.uleb128 0xb
	.4byte	0xcba
	.uleb128 0xb
	.4byte	0xcec
	.byte	0x0
	.uleb128 0x6
	.asciz	"tagRPOR5BITS"
	.byte	0x2
	.byte	0x5
	.2byte	0xb1b
	.4byte	0xdfb
	.uleb128 0xc
	.4byte	0xdc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"RPOR5BITS"
	.byte	0x5
	.2byte	0xb30
	.4byte	0xddc
	.uleb128 0xd
	.byte	0x3
	.byte	0x6
	.byte	0x38
	.4byte	0xef2
	.uleb128 0xe
	.asciz	"speed"
	.byte	0x6
	.byte	0x39
	.4byte	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"numbits"
	.byte	0x6
	.byte	0x3a
	.4byte	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.asciz	"alternate_aux"
	.byte	0x6
	.byte	0x3f
	.4byte	0x12f
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"periodicService"
	.byte	0x6
	.byte	0x41
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"little_endian"
	.byte	0x6
	.byte	0x47
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"high_impedance"
	.byte	0x6
	.byte	0x4c
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"int16"
	.byte	0x6
	.byte	0x51
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"write_with_read"
	.byte	0x6
	.byte	0x56
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"command_error"
	.byte	0x6
	.byte	0x5b
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x6
	.byte	0x5d
	.4byte	0xe0d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.byte	0xb4
	.4byte	0xf9c
	.uleb128 0x10
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0x10
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0x10
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0x10
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0x10
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0x10
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0x10
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0x10
	.asciz	"BP_PICPROG"
	.sleb128 7
	.uleb128 0x10
	.asciz	"BP_DIO"
	.sleb128 8
	.uleb128 0x10
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x7
	.byte	0xe9
	.4byte	0xf17
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.byte	0xee
	.4byte	0xfe5
	.uleb128 0x10
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0x10
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0x10
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0x10
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x7
	.byte	0xf7
	.4byte	0xfc4
	.uleb128 0xd
	.byte	0xc
	.byte	0x7
	.byte	0xf9
	.4byte	0x10f6
	.uleb128 0xe
	.asciz	"terminal_input"
	.byte	0x7
	.byte	0xfa
	.4byte	0x10f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"device_type"
	.byte	0x7
	.byte	0xfb
	.4byte	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"device_revision"
	.byte	0x7
	.byte	0xfc
	.4byte	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.asciz	"hardware_version"
	.byte	0x7
	.byte	0xfd
	.4byte	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.asciz	"terminal_speed"
	.byte	0x7
	.byte	0xfe
	.4byte	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.asciz	"display_mode"
	.byte	0x7
	.byte	0xff
	.4byte	0xfe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.asciz	"bus_mode"
	.byte	0x7
	.2byte	0x100
	.4byte	0xf9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.asciz	"quiet"
	.byte	0x7
	.2byte	0x101
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.asciz	"overflow"
	.byte	0x7
	.2byte	0x102
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.asciz	"basic"
	.byte	0x7
	.2byte	0x104
	.4byte	0x12f
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x12
	.byte	0x2
	.4byte	0x12f
	.uleb128 0x8
	.asciz	"bus_pirate_configuration_t"
	.byte	0x7
	.2byte	0x106
	.4byte	0x1006
	.uleb128 0x13
	.asciz	"bp_disable_mode_led"
	.byte	0x2
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_enable_usb_led"
	.byte	0x3
	.byte	0x92
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_adc_pin_setup"
	.byte	0x3
	.byte	0x98
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"delay_short"
	.byte	0x1
	.2byte	0x260
	.byte	0x1
	.byte	0x3
	.4byte	0x11e7
	.uleb128 0x15
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x260
	.4byte	0x14f
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x265
	.4byte	0x14f
	.uleb128 0x17
	.asciz	"ticks"
	.byte	0x1
	.2byte	0x266
	.4byte	0x14f
	.uleb128 0x16
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x267
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x13
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.asciz	"clear_mode_configuration"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.asciz	"delay_long"
	.byte	0x1
	.2byte	0x249
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x1
	.byte	0x5f
	.4byte	0x12b8
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x249
	.4byte	0x15f
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.asciz	"ticks"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x15f
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1c
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x24f
	.4byte	0x14f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x1b
	.asciz	"timer_value"
	.byte	0x1
	.2byte	0x252
	.4byte	0x14f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x253
	.4byte	0x14f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"bp_reset_board_state"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1315
	.uleb128 0x1f
	.4byte	0x111f
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x1f
	.4byte	0x114f
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x1f
	.4byte	0x1166
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x1f
	.4byte	0x1188
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"bp_read_adc"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0x14f
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0x134a
	.uleb128 0x21
	.asciz	"channel"
	.byte	0x1
	.byte	0xe8
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.4byte	0x14f
	.uleb128 0x23
	.byte	0x1
	.asciz	"bp_reverse_integer"
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	0x14f
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x13bd
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x161
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.asciz	"bits"
	.byte	0x1
	.2byte	0x161
	.4byte	0x13bd
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.asciz	"reversed"
	.byte	0x1
	.2byte	0x167
	.4byte	0x14f
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.asciz	"bitmask"
	.byte	0x1
	.2byte	0x168
	.4byte	0x14f
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.4byte	0x12f
	.uleb128 0x23
	.byte	0x1
	.asciz	"bp_reverse_word"
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	0x14f
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x13f9
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x158
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"bp_reverse_byte"
	.byte	0x1
	.2byte	0x150
	.byte	0x1
	.4byte	0x12f
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x1430
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x150
	.4byte	0x13bd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"bp_read_from_flash"
	.byte	0x1
	.2byte	0x21f
	.byte	0x1
	.4byte	0x14f
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x5f
	.4byte	0x149b
	.uleb128 0x24
	.asciz	"page"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.asciz	"address"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x134a
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.asciz	"old_page"
	.byte	0x1
	.2byte	0x220
	.4byte	0x134a
	.uleb128 0x17
	.asciz	"word"
	.byte	0x1
	.2byte	0x221
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_initialise_delay_timer"
	.byte	0x1
	.2byte	0x22a
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_delay_ms"
	.byte	0x1
	.2byte	0x26e
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x1
	.byte	0x5f
	.4byte	0x14fd
	.uleb128 0x24
	.asciz	"milliseconds"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x14f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_delay_us"
	.byte	0x1
	.2byte	0x270
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x5f
	.4byte	0x155c
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x270
	.4byte	0x14f
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	0x119e
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x28
	.4byte	0x11b4
	.uleb128 0x1d
	.4byte	.LBB28
	.4byte	.LBE28
	.uleb128 0x29
	.4byte	0x11c0
	.uleb128 0x2a
	.4byte	0x11cc
	.byte	0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	0x11da
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_initialise"
	.byte	0x1
	.2byte	0x29c
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.byte	0x1
	.asciz	"user_serial_transmit_done"
	.byte	0x1
	.2byte	0x2c9
	.byte	0x1
	.4byte	0xf0e
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2b
	.byte	0x1
	.asciz	"user_serial_ready_to_read"
	.byte	0x1
	.2byte	0x2cb
	.byte	0x1
	.4byte	0xf0e
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_ringbuffer_setup"
	.byte	0x1
	.2byte	0x2cd
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.byte	0x1
	.asciz	"user_serial_ringbuffer_process"
	.byte	0x1
	.2byte	0x2d3
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x1
	.byte	0x5f
	.4byte	0x1650
	.uleb128 0x1b
	.asciz	"index"
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x14f
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"user_serial_ringbuffer_flush"
	.byte	0x1
	.2byte	0x2ec
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x5f
	.4byte	0x1690
	.uleb128 0x17
	.asciz	"index"
	.byte	0x1
	.2byte	0x2ed
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"user_serial_ringbuffer_append"
	.byte	0x1
	.2byte	0x305
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.byte	0x1
	.byte	0x5f
	.4byte	0x16d1
	.uleb128 0x1a
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x305
	.4byte	0x16d1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.4byte	0x189
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_hex_byte_to_ringbuffer"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0x1719
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x13bd
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.asciz	"user_serial_read_byte"
	.byte	0x1
	.2byte	0x314
	.byte	0x1
	.4byte	0x12f
	.4byte	.LFB59
	.4byte	.LFE59
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.byte	0x1
	.asciz	"user_serial_transmit_character"
	.byte	0x1
	.2byte	0x31b
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x1
	.byte	0x5f
	.4byte	0x1785
	.uleb128 0x1a
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x31b
	.4byte	0x16d1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_hex_word"
	.byte	0x1
	.2byte	0x1fe
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0x17ba
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x134a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_hex_byte"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x17ef
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x13bd
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x19
	.asciz	"print_decimal"
	.byte	0x1
	.2byte	0x1cc
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x18b6
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x18b6
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x24
	.asciz	"denominator"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x18b6
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x24
	.asciz	"digits"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x13bd
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x1b
	.asciz	"number"
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x15f
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.asciz	"divisor"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x15f
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.asciz	"current"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x15f
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1b
	.asciz	"digit"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x12f
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1b
	.asciz	"first"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xf0e
	.byte	0x2
	.byte	0x7f
	.sleb128 -15
	.byte	0x0
	.uleb128 0x22
	.4byte	0x15f
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_dec_byte"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x18f0
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x13bd
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_dec_word"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0x1925
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_dec_dword"
	.byte	0x1
	.2byte	0x1e9
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0x1960
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x18b6
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_voltage"
	.byte	0x1
	.2byte	0x206
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.4byte	0x19b7
	.uleb128 0x24
	.asciz	"adc"
	.byte	0x1
	.2byte	0x206
	.4byte	0x134a
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.asciz	"centivolts"
	.byte	0x1
	.2byte	0x212
	.4byte	0x134a
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x214
	.4byte	0x12f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"bp_adc_probe"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x19f2
	.uleb128 0x1f
	.4byte	0x11e7
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x1f
	.4byte	0x11fa
	.4byte	.LBB31
	.4byte	.LBE31
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_bin_byte"
	.byte	0x1
	.2byte	0x18e
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x1a44
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x18e
	.4byte	0x13bd
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.asciz	"mask"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x12f
	.byte	0x1
	.byte	0x59
	.uleb128 0x17
	.asciz	"index"
	.byte	0x1
	.2byte	0x190
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_string"
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x1a88
	.uleb128 0x24
	.asciz	"string"
	.byte	0x1
	.2byte	0x180
	.4byte	0x1a88
	.byte	0x1
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x181
	.4byte	0x189
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x12
	.byte	0x2
	.4byte	0x16d1
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_dec_dword_friendly"
	.byte	0x1
	.2byte	0x19a
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b11
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x19a
	.4byte	0x18b6
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x17
	.asciz	"temp"
	.byte	0x1
	.2byte	0x19b
	.4byte	0xee
	.uleb128 0x1b
	.asciz	"mld"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xe7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1b
	.asciz	"mil"
	.byte	0x1
	.2byte	0x19c
	.4byte	0xe7
	.byte	0x1
	.byte	0x50
	.uleb128 0x1b
	.asciz	"number"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x15f
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_line"
	.byte	0x1
	.2byte	0x187
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b45
	.uleb128 0x24
	.asciz	"string"
	.byte	0x1
	.2byte	0x187
	.4byte	0x1a88
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_adc_continuous_probe"
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x1b88
	.uleb128 0x1b
	.asciz	"measurement"
	.byte	0x1
	.2byte	0x107
	.4byte	0x14f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_buffer"
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x1be0
	.uleb128 0x24
	.asciz	"buffer"
	.byte	0x1
	.2byte	0x178
	.4byte	0x1be0
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.asciz	"length"
	.byte	0x1
	.2byte	0x178
	.4byte	0x1be6
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.asciz	"offset"
	.byte	0x1
	.2byte	0x179
	.4byte	0xc9
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x12
	.byte	0x2
	.4byte	0x13bd
	.uleb128 0x22
	.4byte	0xc9
	.uleb128 0x26
	.byte	0x1
	.asciz	"bp_write_formatted_integer"
	.byte	0x1
	.2byte	0x127
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c39
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x127
	.4byte	0x134a
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.asciz	"integer"
	.byte	0x1
	.2byte	0x128
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_wait_transmission_done"
	.byte	0x1
	.2byte	0x328
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.byte	0x1
	.asciz	"user_serial_set_baud_rate"
	.byte	0x1
	.2byte	0x32d
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.byte	0x1
	.byte	0x5f
	.4byte	0x1caa
	.uleb128 0x24
	.asciz	"rate"
	.byte	0x1
	.2byte	0x32d
	.4byte	0x134a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.asciz	"user_serial_check_overflow"
	.byte	0x1
	.2byte	0x32f
	.byte	0x1
	.4byte	0xf0e
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_clear_overflow"
	.byte	0x1
	.2byte	0x331
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"user_serial_process_transmission_interrupt"
	.byte	0x1
	.2byte	0x33b
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"_U1RXInterrupt"
	.byte	0x1
	.2byte	0x34f
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"_U1TXInterrupt"
	.byte	0x1
	.2byte	0x35a
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.byte	0x1
	.asciz	"user_serial_read_big_endian_word"
	.byte	0x1
	.2byte	0x38f
	.byte	0x1
	.4byte	0x14f
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x5f
	.4byte	0x1dc3
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x390
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"user_serial_read_big_endian_long_word"
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	0x15f
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x5f
	.4byte	0x1e0e
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x396
	.4byte	0x15f
	.byte	0x0
	.uleb128 0x2c
	.asciz	"TBLPAG"
	.byte	0x5
	.byte	0x5e
	.4byte	0x1e1e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x12f
	.uleb128 0x2e
	.4byte	.LASF5
	.byte	0x5
	.byte	0xfa
	.4byte	0x1e30
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x2a9
	.uleb128 0x2f
	.4byte	.LASF6
	.byte	0x5
	.2byte	0x148
	.4byte	0x1e43
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x3d5
	.uleb128 0x30
	.asciz	"TMR1"
	.byte	0x5
	.2byte	0x35c
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x14f
	.uleb128 0x30
	.asciz	"PR1"
	.byte	0x5
	.2byte	0x35e
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"T1CON"
	.byte	0x5
	.2byte	0x360
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF7
	.byte	0x5
	.2byte	0x376
	.4byte	0x1e88
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x4cb
	.uleb128 0x30
	.asciz	"U1MODE"
	.byte	0x5
	.2byte	0x5a6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1STA"
	.byte	0x5
	.2byte	0x5c6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF8
	.byte	0x5
	.2byte	0x5e1
	.4byte	0x1ebc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x670
	.uleb128 0x30
	.asciz	"U1TXREG"
	.byte	0x5
	.2byte	0x5e4
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1RXREG"
	.byte	0x5
	.2byte	0x5e6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1BRG"
	.byte	0x5
	.2byte	0x5e8
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF9
	.byte	0x5
	.2byte	0x6de
	.4byte	0x1f03
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x702
	.uleb128 0x2f
	.4byte	.LASF10
	.byte	0x5
	.2byte	0x6e9
	.4byte	0x1f16
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x785
	.uleb128 0x2f
	.4byte	.LASF11
	.byte	0x5
	.2byte	0x715
	.4byte	0x1f29
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0x904
	.uleb128 0x2f
	.4byte	.LASF12
	.byte	0x5
	.2byte	0x72b
	.4byte	0x1f3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xa53
	.uleb128 0x2f
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x76a
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x7a3
	.4byte	0x1f5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xb99
	.uleb128 0x30
	.asciz	"AD1CON2"
	.byte	0x5
	.2byte	0x7a6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CON3"
	.byte	0x5
	.2byte	0x7c4
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CHS"
	.byte	0x5
	.2byte	0x7e1
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x80c
	.4byte	0x1fa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xca6
	.uleb128 0x30
	.asciz	"AD1CSSL"
	.byte	0x5
	.2byte	0x80f
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF16
	.byte	0x5
	.2byte	0xb31
	.4byte	0x1fca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xdfb
	.uleb128 0x2f
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x143
	.4byte	0x10f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x144
	.4byte	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x145
	.4byte	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x146
	.4byte	0x10f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x147
	.4byte	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x148
	.4byte	0x14f
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	0x12f
	.4byte	0x2033
	.uleb128 0x32
	.4byte	0xd7
	.byte	0x1
	.byte	0x0
	.uleb128 0x33
	.asciz	"HEX_PREFIX"
	.byte	0x1
	.byte	0x1e
	.4byte	0x2045
	.uleb128 0x22
	.4byte	0x2023
	.uleb128 0x31
	.4byte	0x13e
	.4byte	0x205a
	.uleb128 0x32
	.4byte	0xd7
	.byte	0xf
	.byte	0x0
	.uleb128 0x34
	.asciz	"HEX_ASCII_TABLE"
	.byte	0x1
	.byte	0x23
	.4byte	0x2077
	.byte	0x5
	.byte	0x3
	.4byte	_HEX_ASCII_TABLE
	.uleb128 0x22
	.4byte	0x204a
	.uleb128 0x2e
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2c
	.4byte	0x10fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2d
	.4byte	0xef2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.asciz	"user_serial_ringbuffer_write"
	.byte	0x1
	.2byte	0x280
	.4byte	0x14f
	.byte	0x5
	.byte	0x3
	.4byte	_user_serial_ringbuffer_write
	.uleb128 0x1b
	.asciz	"user_serial_ringbuffer_read"
	.byte	0x1
	.2byte	0x285
	.4byte	0x14f
	.byte	0x5
	.byte	0x3
	.4byte	_user_serial_ringbuffer_read
	.uleb128 0x31
	.4byte	0x14f
	.4byte	0x20f6
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x299
	.4byte	0x2104
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x20eb
	.uleb128 0x2c
	.asciz	"TBLPAG"
	.byte	0x5
	.byte	0x5e
	.4byte	0x1e1e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF5
	.byte	0x5
	.byte	0xfa
	.4byte	0x1e30
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF6
	.byte	0x5
	.2byte	0x148
	.4byte	0x1e43
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"TMR1"
	.byte	0x5
	.2byte	0x35c
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"PR1"
	.byte	0x5
	.2byte	0x35e
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"T1CON"
	.byte	0x5
	.2byte	0x360
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF7
	.byte	0x5
	.2byte	0x376
	.4byte	0x1e88
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1MODE"
	.byte	0x5
	.2byte	0x5a6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1STA"
	.byte	0x5
	.2byte	0x5c6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF8
	.byte	0x5
	.2byte	0x5e1
	.4byte	0x1ebc
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1TXREG"
	.byte	0x5
	.2byte	0x5e4
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1RXREG"
	.byte	0x5
	.2byte	0x5e6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"U1BRG"
	.byte	0x5
	.2byte	0x5e8
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF9
	.byte	0x5
	.2byte	0x6de
	.4byte	0x1f03
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF10
	.byte	0x5
	.2byte	0x6e9
	.4byte	0x1f16
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF11
	.byte	0x5
	.2byte	0x715
	.4byte	0x1f29
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF12
	.byte	0x5
	.2byte	0x72b
	.4byte	0x1f3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x76a
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x7a3
	.4byte	0x1f5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CON2"
	.byte	0x5
	.2byte	0x7a6
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CON3"
	.byte	0x5
	.2byte	0x7c4
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CHS"
	.byte	0x5
	.2byte	0x7e1
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x80c
	.4byte	0x1fa5
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"AD1CSSL"
	.byte	0x5
	.2byte	0x80f
	.4byte	0x1e57
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF16
	.byte	0x5
	.2byte	0xb31
	.4byte	0x1fca
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x334
	.4byte	0x229c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1RXBuf
	.uleb128 0x12
	.byte	0x2
	.4byte	0x13e
	.uleb128 0x36
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x335
	.4byte	0xd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1RXToRecv
	.uleb128 0x36
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x336
	.4byte	0xd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1RXRecvd
	.uleb128 0x36
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x337
	.4byte	0x229c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1TXBuf
	.uleb128 0x36
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x338
	.4byte	0xd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1TXSent
	.uleb128 0x36
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x339
	.4byte	0xd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART1TXAvailable
	.uleb128 0x2e
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2c
	.4byte	0x10fc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2d
	.4byte	0xef2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x299
	.4byte	0x2329
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x20eb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x4d7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x232f
	.4byte	0x12b8
	.asciz	"bp_reset_board_state"
	.4byte	0x1315
	.asciz	"bp_read_adc"
	.4byte	0x134f
	.asciz	"bp_reverse_integer"
	.4byte	0x13c2
	.asciz	"bp_reverse_word"
	.4byte	0x13f9
	.asciz	"bp_reverse_byte"
	.4byte	0x1430
	.asciz	"bp_read_from_flash"
	.4byte	0x149b
	.asciz	"bp_initialise_delay_timer"
	.4byte	0x14c5
	.asciz	"bp_delay_ms"
	.4byte	0x14fd
	.asciz	"bp_delay_us"
	.4byte	0x155c
	.asciz	"user_serial_initialise"
	.4byte	0x1583
	.asciz	"user_serial_transmit_done"
	.4byte	0x15b1
	.asciz	"user_serial_ready_to_read"
	.4byte	0x15df
	.asciz	"user_serial_ringbuffer_setup"
	.4byte	0x160c
	.asciz	"user_serial_ringbuffer_process"
	.4byte	0x1650
	.asciz	"user_serial_ringbuffer_flush"
	.4byte	0x1690
	.asciz	"user_serial_ringbuffer_append"
	.4byte	0x16d6
	.asciz	"bp_write_hex_byte_to_ringbuffer"
	.4byte	0x1719
	.asciz	"user_serial_read_byte"
	.4byte	0x1743
	.asciz	"user_serial_transmit_character"
	.4byte	0x1785
	.asciz	"bp_write_hex_word"
	.4byte	0x17ba
	.asciz	"bp_write_hex_byte"
	.4byte	0x18bb
	.asciz	"bp_write_dec_byte"
	.4byte	0x18f0
	.asciz	"bp_write_dec_word"
	.4byte	0x1925
	.asciz	"bp_write_dec_dword"
	.4byte	0x1960
	.asciz	"bp_write_voltage"
	.4byte	0x19b7
	.asciz	"bp_adc_probe"
	.4byte	0x19f2
	.asciz	"bp_write_bin_byte"
	.4byte	0x1a44
	.asciz	"bp_write_string"
	.4byte	0x1a8e
	.asciz	"bp_write_dec_dword_friendly"
	.4byte	0x1b11
	.asciz	"bp_write_line"
	.4byte	0x1b45
	.asciz	"bp_adc_continuous_probe"
	.4byte	0x1b88
	.asciz	"bp_write_buffer"
	.4byte	0x1beb
	.asciz	"bp_write_formatted_integer"
	.4byte	0x1c39
	.asciz	"user_serial_wait_transmission_done"
	.4byte	0x1c6c
	.asciz	"user_serial_set_baud_rate"
	.4byte	0x1caa
	.asciz	"user_serial_check_overflow"
	.4byte	0x1cd9
	.asciz	"user_serial_clear_overflow"
	.4byte	0x1d04
	.asciz	"user_serial_process_transmission_interrupt"
	.4byte	0x1d3f
	.asciz	"_U1RXInterrupt"
	.4byte	0x1d5e
	.asciz	"_U1TXInterrupt"
	.4byte	0x1d7d
	.asciz	"user_serial_read_big_endian_word"
	.4byte	0x1dc3
	.asciz	"user_serial_read_big_endian_long_word"
	.4byte	0x2289
	.asciz	"UART1RXBuf"
	.4byte	0x22a2
	.asciz	"UART1RXToRecv"
	.4byte	0x22b5
	.asciz	"UART1RXRecvd"
	.4byte	0x22c8
	.asciz	"UART1TXBuf"
	.4byte	0x22db
	.asciz	"UART1TXSent"
	.4byte	0x22ee
	.asciz	"UART1TXAvailable"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x213
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x232f
	.4byte	0xc9
	.asciz	"size_t"
	.4byte	0x12f
	.asciz	"uint8_t"
	.4byte	0x14f
	.asciz	"uint16_t"
	.4byte	0x15f
	.asciz	"uint32_t"
	.4byte	0x19b
	.asciz	"tagIFS0BITS"
	.4byte	0x2a9
	.asciz	"IFS0BITS"
	.4byte	0x2b9
	.asciz	"tagIEC0BITS"
	.4byte	0x3d5
	.asciz	"IEC0BITS"
	.4byte	0x4ac
	.asciz	"tagT1CONBITS"
	.4byte	0x4cb
	.asciz	"T1CONBITS"
	.4byte	0x651
	.asciz	"tagU1STABITS"
	.4byte	0x670
	.asciz	"U1STABITS"
	.4byte	0x682
	.asciz	"tagTRISABITS"
	.4byte	0x702
	.asciz	"TRISABITS"
	.4byte	0x714
	.asciz	"tagPORTABITS"
	.4byte	0x785
	.asciz	"PORTABITS"
	.4byte	0x797
	.asciz	"tagTRISBBITS"
	.4byte	0x904
	.asciz	"TRISBBITS"
	.4byte	0x916
	.asciz	"tagPORTBBITS"
	.4byte	0xa53
	.asciz	"PORTBBITS"
	.4byte	0xb78
	.asciz	"tagAD1CON1BITS"
	.4byte	0xb99
	.asciz	"AD1CON1BITS"
	.4byte	0xbad
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xca6
	.asciz	"AD1PCFGBITS"
	.4byte	0xddc
	.asciz	"tagRPOR5BITS"
	.4byte	0xdfb
	.asciz	"RPOR5BITS"
	.4byte	0xef2
	.asciz	"mode_configuration_t"
	.4byte	0xf9c
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0xfe5
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0x10fc
	.asciz	"bus_pirate_configuration_t"
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
.LASF14:
	.asciz	"AD1CON1bits"
.LASF4:
	.asciz	"character"
.LASF3:
	.asciz	"value"
.LASF22:
	.asciz	"UART1TXAvailable"
.LASF21:
	.asciz	"UART1TXSent"
.LASF12:
	.asciz	"PORTBbits"
.LASF6:
	.asciz	"IEC0bits"
.LASF5:
	.asciz	"IFS0bits"
.LASF25:
	.asciz	"UART_BRG_SPEED"
.LASF7:
	.asciz	"T1CONbits"
.LASF15:
	.asciz	"AD1PCFGbits"
.LASF0:
	.asciz	"ticks_delta"
.LASF8:
	.asciz	"U1STAbits"
.LASF17:
	.asciz	"UART1RXBuf"
.LASF1:
	.asciz	"timer_start"
.LASF18:
	.asciz	"UART1RXToRecv"
.LASF2:
	.asciz	"microseconds"
.LASF13:
	.asciz	"ADC1BUF0"
.LASF19:
	.asciz	"UART1RXRecvd"
.LASF23:
	.asciz	"bus_pirate_configuration"
.LASF16:
	.asciz	"RPOR5bits"
.LASF9:
	.asciz	"TRISAbits"
.LASF10:
	.asciz	"PORTAbits"
.LASF24:
	.asciz	"mode_configuration"
.LASF11:
	.asciz	"TRISBbits"
.LASF20:
	.asciz	"UART1TXBuf"
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0007
	.word 0x0000

; MCHP configuration words
; Configuration word @ 0x0000abfe
	.section	.config_JTAGEN, code, address(0xabfe), keep
__config_JTAGEN:
	.pword	16255
; Configuration word @ 0x0000abfc
	.section	.config_IESO, code, address(0xabfc), keep
__config_IESO:
	.pword	63967

	.set ___PA___,0
	.end
