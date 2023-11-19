	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\uart.c"
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
	.type	_uart_get_closest_common_rate,@function
_uart_get_closest_common_rate:
.LFB35:
	.file 1 "../uart.c"
	.loc 1 497 0
	.set ___PA___,1
	mov.d	w0,w6
	.loc 1 501 0
	mov	#299,w0
	sub	w6,w0,[w15]
	subb	w7,#0,[w15]
	.set ___BP___,4
	bra	leu,.L6
	mov	#_UART_COMMON_BAUD_RATES+4,w4
	.loc 1 500 0
	mov	#2,w1
.L5:
	.loc 1 501 0
	mov.d	[++w4],w2
	sub	w2,w6,[w15]
	subb	w3,w7,[w15]
	.set ___BP___,95
	bra	leu,.L3
	bra	.L2
.L6:
	mov	#300,w2
	mov	#0,w3
	.loc 1 500 0
	mov	#1,w1
.L2:
.LBB2:
	.loc 1 505 0
	dec	w1,w1
	sl	w1,#2,w1
	mov	#_UART_COMMON_BAUD_RATES,w0
	add	w0,w1,w0
	mov.d	[w0],w0
	.loc 1 508 0
	sub	w2,w0,w4
	subb	w3,w1,w5
	
	lsr w5,w5
	rrc	w4,w4
	add	w0,w4,w4
	addc	w1,w5,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,61
	bra	leu,.L7
	bra	.L4
.L3:
.LBE2:
	.loc 1 500 0
	inc	w1,w1
	sub	w1,#15,[w15]
	.set ___BP___,92
	bra	nz,.L5
	.loc 1 512 0
	mul.uu	w2,#0,w2
	bra	.L4
.L7:
.LBB3:
	.loc 1 508 0
	mov.d	w0,w2
.L4:
.LBE3:
	.loc 1 513 0
	mov.d	w2,w0
	return	
	.set ___PA___,0
.LFE35:
	.size	_uart_get_closest_common_rate, .-_uart_get_closest_common_rate
	.align	2
	.type	_uart_get_baud_rate,@function
_uart_get_baud_rate:
.LFB36:
	.loc 1 515 0
	.set ___PA___,1
	lnk	#2
.LCFI0:
	mov.d	w8,[w15++]
.LCFI1:
	mov.d	w10,[w15++]
.LCFI2:
	mov.d	w12,[w15++]
.LCFI3:
	mov.b	w0,w10
	.loc 1 520 0
	bclr.b	_PORTBbits,#7
	.loc 1 521 0
	bset.b	_TRISBbits,#7
	.loc 1 524 0
	cp0.b	w10
	.set ___BP___,71
	bra	nz,.L10
	.loc 1 525 0
	mov	#tbloffset(_MSG_UART_WAITING_ACTIVITY_str),w0
	mov	#tblpage(_MSG_UART_WAITING_ACTIVITY_str),w1
	call	_bp_message_write_line
.L10:
	.loc 1 529 0
	btst.b	_PORTBbits,#7
	.set ___BP___,4
	bra	z,.L11
	btst.b	_U1STAbits,#0
	.set ___BP___,4
	bra	nz,.L11
	mov	#128,w1
.L26:
	.loc 1 530 0
	nop	
	.loc 1 529 0
	mov	_PORTBbits,w2
	and	w1,w2,w0
	.set ___BP___,4
	bra	z,.L11
	btst.b	_U1STAbits,#0
	.set ___BP___,95
	bra	z,.L26
.L11:
	.loc 1 534 0
	mov	#1,w3
	mul.uu	w12,#0,w12
	.loc 1 594 0
	mov	#128,w5
	.loc 1 627 0
	clr	w4
	.loc 1 534 0
	btst.b	_U1STAbits,#0
	.set ___BP___,50
	bra	z,.L30
.LBB4:
	.loc 1 538 0
	mov	_U1RXREG,w0
	mov	w0,[w15-14]
	.loc 1 543 0
	clr	_TMR5HLD
	.loc 1 558 0
	mov	#8,w0
	mov	w0,_T4CON
	.loc 1 561 0
	clr	_TMR4
	.loc 1 564 0
	clr	_TMR3HLD
	.loc 1 579 0
	mov	w0,_T2CON
	.loc 1 582 0
	clr	_TMR2
	.loc 1 588 0
	mul.uu	w8,#0,w8
	.loc 1 584 0
	cp0.b	w10
	.set ___BP___,71
	bra	nz,.L14
	.loc 1 585 0
	mov	#tbloffset(_MSG_UART_EARLY_EXIT_str),w0
	mov	#tblpage(_MSG_UART_EARLY_EXIT_str),w1
	call	_bp_message_write_line
	.loc 1 588 0
	mul.uu	w8,#0,w8
	bra	.L14
.L17:
	.loc 1 585 0
	inc	w3,w3
.L30:
.LBE4:
	.loc 1 594 0
	mov	_PORTBbits,w2
	and	w5,w2,w1
	.set ___BP___,86
	bra	z,.L30
	.loc 1 598 0
	bset.b	_T4CONbits+1,#7
	.loc 1 599 0
	bset.b	_T2CONbits+1,#7
.L16:
	.loc 1 602 0
	mov	_PORTBbits,w0
	and	w5,w0,w1
	.set ___BP___,86
	bra	nz,.L16
	.loc 1 606 0
	bclr.b	_T2CONbits+1,#7
	.loc 1 607 0
	bclr.b	_T4CONbits+1,#7
	.loc 1 610 0
	mov.w	#31,w0
	ior	_RPINR3bits
	.loc 1 627 0
	mov	w4,_T4CON
	.loc 1 642 0
	mov	w4,_T2CON
	.loc 1 646 0
	mov	_TMR3HLD,w8
	mov	_TMR2,w6
	clr	w9
	sl	w8,#0,w9
	mov	#0,w8
	clr	w7
	ior	w8,w6,w6
	ior	w9,w7,w7
	.loc 1 647 0
	sub	w3,#1,[w15]
	.set ___BP___,50
	bra	z,.L17
	sub	w12,#0,[w15]
	subb	w13,#0,[w15]
	.set ___BP___,50
	bra	z,.L23
	sub	w12,w6,[w15]
	subb	w13,w7,[w15]
	.set ___BP___,50
	bra	leu,.L18
	mov.d	w6,w12
	bra	.L18
.L23:
	.loc 1 648 0
	mov.d	w6,w12
.L18:
	.loc 1 591 0
	sub	w3,#24,[w15]
	.set ___BP___,92
	bra	leu,.L17
	.loc 1 653 0
	mov	#31,w0
	ior	_RPINR3bits
	.loc 1 656 0
	clr	_TMR2
	.loc 1 659 0
	clr	_TMR3HLD
	.loc 1 661 0
	mov.d	w12,w2
	mov	#9216,w0
	mov	#244,w1
	call	___udivsi3
	mov.d	w0,w8
	.loc 1 663 0
	cp0.b	w10
	.set ___BP___,39
	bra	nz,.L14
	.loc 1 664 0
	mov	#18928,w0
	mov	#2,w1
	sub	w8,w0,[w15]
	subb	w9,w1,[w15]
	.set ___BP___,61
	bra	leu,.L20
	.loc 1 665 0
	mov	#tbloffset(_MSG_UART_BAUD_OVERFLOW_str),w0
	mov	#tblpage(_MSG_UART_BAUD_OVERFLOW_str),w1
	call	_bp_message_write_line
	bra	.L14
.L20:
	.loc 1 667 0
	mov	#tbloffset(_MSG_UART_BAUD_ESTIMATED_str),w0
	mov	#tblpage(_MSG_UART_BAUD_ESTIMATED_str),w1
	call	_bp_message_write_buffer
	.loc 1 668 0
	mov.d	w8,w0
	call	_bp_write_dec_dword
	.loc 1 669 0
	mov	#tbloffset(_MSG_UART_BPS_MARKER_str),w10
	mov	#tblpage(_MSG_UART_BPS_MARKER_str),w11
	mov.d	w10,w0
	call	_bp_message_write_line
	.loc 1 670 0
	mov	#tbloffset(_MSG_UART_BAUD_CALCULATED_str),w0
	mov	#tblpage(_MSG_UART_BAUD_CALCULATED_str),w1
	call	_bp_message_write_buffer
	.loc 1 671 0
	mov.d	w8,w0
	call	_uart_get_closest_common_rate
	call	_bp_write_dec_dword
	.loc 1 672 0
	mov.d	w10,w0
	call	_bp_message_write_line
.L14:
	.loc 1 677 0
	mov.d	w8,w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE36:
	.size	_uart_get_baud_rate, .-_uart_get_baud_rate
	.align	2
	.global	_uart_read	; export
	.type	_uart_read,@function
_uart_read:
.LFB24:
	.loc 1 87 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	.loc 1 88 0
	call	_uart2_rx_ready
	cp0.b	w0
	.set ___BP___,29
	bra	z,.L32
.LBB5:
	.loc 1 92 0
	btst.b	_U2STAbits,#3
	.set ___BP___,71
	bra	z,.L33
	.loc 1 93 0
	mov	#tbloffset(_MSG_UART_PARITY_ERROR_str),w0
	mov	#tblpage(_MSG_UART_PARITY_ERROR_str),w1
	call	_bp_message_write_buffer
.L33:
	.loc 1 97 0
	btst.b	_U2STAbits,#2
	.set ___BP___,71
	bra	z,.L34
	.loc 1 98 0
	mov	#tbloffset(_MSG_UART_FRAMING_ERROR_str),w0
	mov	#tblpage(_MSG_UART_FRAMING_ERROR_str),w1
	call	_bp_message_write_buffer
.L34:
	.loc 1 101 0
	call	_uart2_rx
	ze	w0,w8
	.loc 1 104 0
	btst.b	_U2STAbits,#1
	.set ___BP___,71
	bra	z,.L35
	.loc 1 105 0
	mov	#tbloffset(_MSG_UART_OVERRUN_ERROR_str),w0
	mov	#tblpage(_MSG_UART_OVERRUN_ERROR_str),w1
	call	_bp_message_write_buffer
	.loc 1 108 0
	bclr.b	_U2STAbits,#1
	bra	.L35
.L32:
.LBE5:
	.loc 1 114 0
	mov	#tbloffset(_MSG_UART_FAILED_NO_DATA_str),w0
	mov	#tblpage(_MSG_UART_FAILED_NO_DATA_str),w1
	call	_bp_message_write_buffer
	.loc 1 115 0
	clr	w8
.L35:
	.loc 1 116 0
	mov	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE24:
	.size	_uart_read, .-_uart_read
	.align	2
	.global	_uart_write	; export
	.type	_uart_write,@function
_uart_write:
.LFB25:
	.loc 1 118 0
	.set ___PA___,1
	.loc 1 119 0
	call	_uart2_tx
	.loc 1 121 0
	clr	w0
	return	
	.set ___PA___,0
.LFE25:
	.size	_uart_write, .-_uart_write
	.align	2
	.global	_UARTsettings	; export
	.type	_UARTsettings,@function
_UARTsettings:
.LFB26:
	.loc 1 123 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI5:
	.loc 1 124 0
	mov	#tbloffset(_MSG_UART_MODE_HEADER_str),w0
	mov	#tblpage(_MSG_UART_MODE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 125 0
	mov	#_mode_configuration,w8
	mov.b	[w8],w0
	call	_bp_write_dec_byte
	.loc 1 126 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 127 0
	mov.b	[w8],w0
	sub.b	w0,#9,[w15]
	.set ___BP___,37
	bra	z,.L38
	.loc 1 129 0
	ze	w0,w0
	.loc 1 127 0
	add	w0,w0,w0
	mov	#_UART_BRG_SPEED,w1
	mov	[w1+w0],w0
	bra	.L39
.L38:
	mov	_U2BRG,w0
.L39:
	call	_bp_write_dec_word
	.loc 1 130 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 131 0
	mov	#_uart_settings,w8
	mov.b	[w8],w1
	and.b	w1,#3,w0
	call	_bp_write_dec_byte
	.loc 1 132 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 133 0
	mov	[w8],w0
	lsr	w0,#2,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 134 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 135 0
	mov	[w8],w0
	lsr	w0,#3,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 136 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 137 0
	mov	#_mode_configuration+2,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 138 0
	mov	#tbloffset(_MSG_MODE_HEADER_END_str),w0
	mov	#tblpage(_MSG_MODE_HEADER_END_str),w1
	call	_bp_message_write_line
	.loc 1 139 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE26:
	.size	_UARTsettings, .-_UARTsettings
	.align	2
	.global	_uart_setup_prepare	; export
	.type	_uart_setup_prepare,@function
_uart_setup_prepare:
.LFB27:
	.loc 1 141 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI6:
	mov.d	w10,[w15++]
.LCFI7:
	mov	w12,[w15++]
.LCFI8:
	.loc 1 150 0
	call	_consumewhitechars
	.loc 1 151 0
	call	_getint
	mov	w0,w8
	.loc 1 152 0
	sub	w8,#10,[w15]
	.set ___BP___,86
	bra	nz,.L41
	.loc 1 155 0
	call	_consumewhitechars
	.loc 1 156 0
	call	_getint
	mov	w0,w12
	.loc 1 158 0
	call	_consumewhitechars
	.loc 1 159 0
	call	_getint
	mov	w0,w9
	.loc 1 160 0
	call	_consumewhitechars
	.loc 1 161 0
	call	_getint
	mov	w0,w10
	.loc 1 162 0
	call	_consumewhitechars
	.loc 1 163 0
	call	_getint
	mov	w0,w11
	.loc 1 164 0
	call	_consumewhitechars
	.loc 1 165 0
	call	_getint
	bra	.L42
.L41:
	.loc 1 158 0
	call	_consumewhitechars
	.loc 1 159 0
	call	_getint
	mov	w0,w9
	.loc 1 160 0
	call	_consumewhitechars
	.loc 1 161 0
	call	_getint
	mov	w0,w10
	.loc 1 162 0
	call	_consumewhitechars
	.loc 1 163 0
	call	_getint
	mov	w0,w11
	.loc 1 164 0
	call	_consumewhitechars
	.loc 1 165 0
	call	_getint
	.loc 1 167 0
	dec	w8,w1
	sub	w1,#9,[w15]
	.set ___BP___,57
	bra	gtu,.L52
	.loc 1 142 0
	clr	w12
.L42:
	.loc 1 168 0
	mov	#_mode_configuration,w1
	dec.b	w8,[w1]
	bra	.L43
.L52:
	.loc 1 142 0
	clr	w12
	.loc 1 170 0
	mov	w12,w8
.L43:
	.loc 1 173 0
	dec	w9,w1
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L53
	.loc 1 174 0
	mov	#_uart_settings,w1
	dec.b	w9,w9
	and.b	w9,#3,w9
	mov.b	#-4,w2
	and.b	w2,[w1],w2
	ior.b	w2,w9,[w1]
	bra	.L44
.L53:
	.loc 1 176 0
	clr	w8
.L44:
	.loc 1 179 0
	dec	w10,w1
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L54
	.loc 1 180 0
	mov	#_uart_settings,w1
	dec.b	w10,w10
	and.b	w10,#1,w10
	sl	w10,#2,w10
	mov.b	[w1],w2
	bclr.b	w2,#2
	ior.b	w2,w10,[w1]
	bra	.L45
.L54:
	.loc 1 182 0
	clr	w8
.L45:
	.loc 1 185 0
	dec	w11,w1
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L55
	.loc 1 186 0
	mov	#_uart_settings,w1
	dec.b	w11,w11
	and.b	w11,#1,w11
	sl	w11,#3,w11
	mov.b	[w1],w2
	bclr.b	w2,#3
	ior.b	w2,w11,[w1]
	bra	.L46
.L55:
	.loc 1 188 0
	clr	w8
.L46:
	.loc 1 191 0
	dec	w0,w1
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L47
	.loc 1 192 0
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	[w1],w2
	bclr.b	w2,#4
	ior.b	w2,w0,[w1]
	.loc 1 197 0
	cp0	w8
	.set ___BP___,100
	bra	nz,.L48
.L47:
	.loc 1 198 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 200 0
	mov	#tbloffset(_MSG_UART_SET_PORT_SPEED_str),w0
	mov	#tblpage(_MSG_UART_SET_PORT_SPEED_str),w1
	call	_bp_message_write_line
	.loc 1 226 0
	clr	w3
	mov	#10,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	dec.b	w0,w0
	mov	#_mode_configuration,w1
	mov.b	w0,[w1]
	.loc 1 228 0
	sub.b	w0,#9,[w15]
	.set ___BP___,80
	bra	nz,.L49
	.loc 1 229 0
	mov	#tbloffset(_MSG_UART_RAW_BRG_PROMPT_str),w0
	mov	#tblpage(_MSG_UART_RAW_BRG_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 230 0
	clr	w3
	mov	#32767,w2
	mov	#1,w1
	mov	#34,w0
	call	_getnumber
	.loc 1 232 0
	mov	w0,_U2BRG
.L49:
	.loc 1 237 0
	mov	#tbloffset(_MSG_UART_BITS_PARITY_PROMPT_str),w0
	mov	#tblpage(_MSG_UART_BITS_PARITY_PROMPT_str),w1
	call	_bp_message_write_buffer
	.loc 1 238 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_uart_settings,w8
	dec.b	w0,w0
	and.b	w0,#3,w0
	mov.b	#-4,w1
	and.b	w1,[w8],w1
	ior.b	w1,w0,[w8]
	.loc 1 240 0
	mov	#tbloffset(_MSG_UART_BITS_STOP_PROMPT_str),w0
	mov	#tblpage(_MSG_UART_BITS_STOP_PROMPT_str),w1
	call	_bp_message_write_buffer
	.loc 1 241 0
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
	.loc 1 243 0
	mov	#tbloffset(_MSG_UART_POLARITY_PROMPT_str),w0
	mov	#tblpage(_MSG_UART_POLARITY_PROMPT_str),w1
	call	_bp_message_write_buffer
	.loc 1 244 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	dec.b	w0,w0
	and.b	w0,#1,w0
	sl	w0,#3,w0
	mov.b	[w8],w1
	bclr.b	w1,#3
	ior.b	w1,w0,[w8]
	.loc 1 246 0
	mov	#tbloffset(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w0
	mov	#tblpage(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 247 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	[w1],w2
	bclr.b	w2,#4
	ior.b	w2,w0,[w1]
	bra	.L40
.L48:
	.loc 1 249 0
	mov	#_mode_configuration,w0
	mov.b	#9,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,72
	bra	nz,.L51
	.loc 1 250 0
	mul.su	w12,#1,w2
	.loc 1 251 0
	mov	#2304,w0
	mov	#61,w1
	call	___udivsi3
	sub	w0,#1,w0
	subb	w1,#0,w1
	.loc 1 255 0
	mov	w0,_U2BRG
.L51:
	.loc 1 258 0
	call	_UARTsettings
.L40:
	.loc 1 260 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_uart_setup_prepare, .-_uart_setup_prepare
	.align	2
	.global	_uart_setup_execute	; export
	.type	_uart_setup_execute,@function
_uart_setup_execute:
.LFB28:
	.loc 1 262 0
	.set ___PA___,1
	.loc 1 267 0
	mov	_uart_settings,w2
	.loc 1 263 0
	sl	w2,#13,w4
	lsr	w4,#15,w4
	.loc 1 267 0
	and.b	w2,#3,w3
	.loc 1 263 0
	sl	w2,#12,w2
	lsr	w2,#15,w2
	.loc 1 266 0
	mov	#_mode_configuration+2,w0
	ze	[w0],w1
	.loc 1 263 0
	sl	w1,#11,w1
	lsr	w1,#15,w1
	mov	#_mode_configuration,w0
	mov.b	[w0],w0
	sub.b	w0,#9,[w15]
	.set ___BP___,28
	bra	z,.L57
	.loc 1 265 0
	ze	w0,w0
	.loc 1 263 0
	add	w0,w0,w0
	mov	#_UART_BRG_SPEED,w5
	mov	[w5+w0],w0
	bra	.L58
.L57:
	mov	_U2BRG,w0
.L58:
	call	_uart2_setup
	.loc 1 269 0
	mov	#_uart_settings,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	sub.b	w0,#3,[w15]
	.set ___BP___,72
	bra	nz,.L59
	.loc 1 270 0
	mov.b	#9,w1
	mov	#_mode_configuration+1,w0
	mov.b	w1,[w0]
.L59:
	.loc 1 273 0
	call	_uart2_enable
	.loc 1 299 0
	mov	_U2BRG,w0
	cp	_U1BRG
	.set ___BP___,61
	bra	leu,.L56
	.loc 1 300 0
	mov	#tbloffset(_MSG_UART_POSSIBLE_OVERFLOW_str),w0
	mov	#tblpage(_MSG_UART_POSSIBLE_OVERFLOW_str),w1
	call	_bp_message_write_line
.L56:
	.loc 1 303 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_uart_setup_execute, .-_uart_setup_execute
	.align	2
	.global	_uart_cleanup	; export
	.type	_uart_cleanup,@function
_uart_cleanup:
.LFB29:
	.loc 1 305 0
	.set ___PA___,1
	.loc 1 305 0
	call	_uart2_disable
	return	
	.set ___PA___,0
.LFE29:
	.size	_uart_cleanup, .-_uart_cleanup
	.align	2
	.global	_uart_run_macro	; export
	.type	_uart_run_macro,@function
_uart_run_macro:
.LFB30:
	.loc 1 307 0
	.set ___PA___,1
	lnk	#2
.LCFI9:
	mov.d	w8,[w15++]
.LCFI10:
	mov	w0,w8
	.loc 1 308 0
	sub	w8,#2,[w15]
	.set ___BP___,29
	bra	z,.L66
	.set ___BP___,50
	bra	gtu,.L69
	cp0	w8
	.set ___BP___,50
	bra	z,.L64
	sub	w8,#1,[w15]
	.set ___BP___,71
	bra	nz,.L63
	bra	.L65
.L69:
	sub	w8,#3,[w15]
	.set ___BP___,29
	bra	z,.L67
	sub	w8,#4,[w15]
	.set ___BP___,71
	bra	nz,.L63
	bra	.L83
.L64:
	.loc 1 310 0
	mov	#tbloffset(_MSG_UART_MACRO_MENU_str),w0
	mov	#tblpage(_MSG_UART_MACRO_MENU_str),w1
	call	_bp_message_write_buffer
	.loc 1 311 0
	bra	.L62
.L67:
	.loc 1 316 0
	bclr.b	_TRISAbits,#3
	.loc 1 317 0
	bset.b	_TRISAbits,#4
	.loc 1 320 0
	bset.b	_TRISBbits,#6
	.loc 1 321 0
	bclr.b	_TRISBbits+1,#0
.L65:
	.loc 1 329 0
	mov	#tbloffset(_MSG_UART_BRIDGE_str),w0
	mov	#tblpage(_MSG_UART_BRIDGE_str),w1
	call	_bp_message_write_line
	.loc 1 330 0
	mov	#tbloffset(_MSG_UART_BRIDGE_EXIT_str),w0
	mov	#tblpage(_MSG_UART_BRIDGE_EXIT_str),w1
	call	_bp_message_write_line
	.loc 1 332 0
	call	_agree
	cp0.b	w0
	.set ___BP___,39
	bra	z,.L62
	.loc 1 339 0
	bclr.b	_U2STAbits,#1
	.loc 1 351 0
	mov	#512,w9
.L82:
	btst.b	_U2STAbits,#0
	.set ___BP___,50
	bra	z,.L71
	mov	_U1STAbits,w1
	and	w9,w1,w0
	.set ___BP___,50
	bra	nz,.L71
	.loc 1 352 0
	mov	_U2RXREG,w0
	mov	w0,_U1TXREG
.L71:
	.loc 1 356 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L72
	mov	_U2STAbits,w1
	and	w9,w1,w0
	.set ___BP___,71
	bra	nz,.L72
	.loc 1 357 0
	call	_user_serial_read_byte
	ze	w0,w0
	mov	w0,_U2TXREG
.L72:
	.loc 1 361 0
	btst.b	_U2STAbits,#1
	.set ___BP___,50
	bra	nz,.L73
	btst.b	_U1STAbits,#1
	.set ___BP___,50
	bra	z,.L74
.L73:
	.loc 1 362 0
	bclr.b	_U2STAbits,#1
	.loc 1 363 0
	bclr.b	_U1STAbits,#1
	.loc 1 364 0
	bclr.b	_PORTAbits,#1
.L74:
	.loc 1 374 0
	sub	w8,#3,[w15]
	.set ___BP___,86
	bra	nz,.L82
	.loc 1 376 0
	mov	_PORTAbits,w0
	sl	w0,#4,w0
	and	#256,w0
	mov	_PORTBbits,w1
	bclr	w1,#8
	ior	w0,w1,w1
	mov	w1,_PORTBbits
	.loc 1 377 0
	mov	_PORTBbits,w0
	lsr	w0,#3,w0
	and	w0,#8,w0
	mov	_PORTAbits,w1
	bclr	w1,#3
	ior	w0,w1,w1
	mov	w1,_PORTAbits
	bra	.L82
.L66:
	.loc 1 384 0
	mov	#tbloffset(_MSG_UART_RAW_UART_INPUT_str),w0
	mov	#tblpage(_MSG_UART_RAW_UART_INPUT_str),w1
	call	_bp_message_write_line
	.loc 1 385 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 387 0
	bclr.b	_U2STAbits,#1
	.loc 1 398 0
	mov	#512,w8
.L78:
	btst.b	_U2STAbits,#0
	.set ___BP___,50
	bra	z,.L77
	mov	_U1STAbits,w1
	and	w8,w1,w0
	.set ___BP___,50
	bra	nz,.L77
	.loc 1 399 0
	mov	_U2RXREG,w0
	mov	w0,_U1TXREG
.L77:
	.loc 1 403 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,86
	bra	z,.L78
.LBB6:
	.loc 1 406 0
	call	_user_serial_read_byte
	ze	w0,w0
	mov	w0,[w15-6]
.LBE6:
	.loc 1 410 0
	bra	.L62
.L83:
	.loc 1 413 0
	call	_uart2_disable
	.loc 1 414 0
	clr.b	w0
	call	_uart_get_baud_rate
	.loc 1 415 0
	call	_uart2_enable
	.loc 1 417 0
	mov	_U2BRG,w0
	cp	_U1BRG
	.set ___BP___,71
	bra	leu,.L62
	.loc 1 418 0
	mov	#tbloffset(_MSG_UART_POSSIBLE_OVERFLOW_str),w0
	mov	#tblpage(_MSG_UART_POSSIBLE_OVERFLOW_str),w1
	call	_bp_message_write_line
	bra	.L62
.L63:
	.loc 1 424 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L62:
	.loc 1 427 0
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE30:
	.size	_uart_run_macro, .-_uart_run_macro
	.align	2
	.global	_uart_start	; export
	.type	_uart_start,@function
_uart_start:
.LFB31:
	.loc 1 429 0
	.set ___PA___,1
	.loc 1 431 0
	bclr.b	_U2STAbits,#1
	.loc 1 434 0
	mov	#_uart_settings,w0
	bset.b	[w0],#4
	.loc 1 437 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#2
	.loc 1 439 0
	mov	#tbloffset(_MSG_UART_LIVE_DISPLAY_START_str),w0
	mov	#tblpage(_MSG_UART_LIVE_DISPLAY_START_str),w1
	call	_bp_message_write_line
	.loc 1 440 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_uart_start, .-_uart_start
	.align	2
	.global	_uart_stop	; export
	.type	_uart_stop,@function
_uart_stop:
.LFB32:
	.loc 1 442 0
	.set ___PA___,1
	.loc 1 444 0
	mov	#_uart_settings,w0
	bclr.b	[w0],#4
	.loc 1 447 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#2
	.loc 1 449 0
	mov	#tbloffset(_MSG_UART_LIVE_DISPLAY_STOP_str),w0
	mov	#tblpage(_MSG_UART_LIVE_DISPLAY_STOP_str),w1
	call	_bp_message_write_line
	.loc 1 450 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_uart_stop, .-_uart_stop
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.global	_uart_periodic_callback	; export
	.type	_uart_periodic_callback,@function
_uart_periodic_callback:
.LFB33:
	.loc 1 452 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI11:
	mov.d	w8,[w15++]
.LCFI12:
	mov.d	w10,[w15++]
.LCFI13:
	mov.d	w12,[w15++]
.LCFI14:
	mov	w14,[w15++]
.LCFI15:
	.loc 1 455 0
	clr.b	w14
	.loc 1 466 0
	mov	#tbloffset(_MSG_READ_HEADER_str),w8
	mov	#tblpage(_MSG_READ_HEADER_str),w9
	.loc 1 486 0
	mov	#tbloffset(_MSG_UART_OVERRUN_ERROR_str),w10
	mov	#tblpage(_MSG_UART_OVERRUN_ERROR_str),w11
	.loc 1 475 0
	mov	#tbloffset(_MSG_UART_FRAMING_ERROR_str),w12
	mov	#tblpage(_MSG_UART_FRAMING_ERROR_str),w13
	.loc 1 470 0
	mov	#tbloffset(_MSG_UART_PARITY_ERROR_str),w0
	mov	#tblpage(_MSG_UART_PARITY_ERROR_str),w1
	mov	w0,[w15-18]
	mov	w1,[w15-16]
	.loc 1 456 0
	bra	.L87
.L93:
	.loc 1 459 0
	mov	#_uart_settings,w1
	mov.b	[w1],w1
	and.b	w1,#16,w0
	.set ___BP___,50
	bra	nz,.L88
	.loc 1 461 0
	call	_uart2_rx
	.loc 1 462 0
	bra	.L89
.L88:
	.loc 1 465 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 466 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 469 0
	btst.b	_U2STAbits,#3
	.set ___BP___,71
	bra	z,.L90
	.loc 1 470 0
	mov	[w15-18],w0
	mov	[w15-16],w1
	call	_bp_message_write_buffer
.L90:
	.loc 1 474 0
	btst.b	_U2STAbits,#2
	.set ___BP___,71
	bra	z,.L91
	.loc 1 475 0
	mov.d	w12,w0
	call	_bp_message_write_buffer
.L91:
	.loc 1 478 0
	call	_uart2_rx
	ze	w0,w0
	call	_bp_write_formatted_integer
	.loc 1 481 0
	btst.b	_U2STAbits,#1
	.set ___BP___,71
	bra	z,.L92
	.loc 1 484 0
	bclr.b	_U2STAbits,#1
	.loc 1 486 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
.L92:
	.loc 1 489 0
	mov	#.LC0,w0
	call	_bp_write_line
.L89:
	mov.b	#1,w14
.L87:
	.loc 1 456 0
	call	_uart2_rx_ready
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L93
	.loc 1 493 0
	mov.b	w14,w0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE33:
	.size	_uart_periodic_callback, .-_uart_periodic_callback
	.align	2
	.global	_uart_pins_state	; export
	.type	_uart_pins_state,@function
_uart_pins_state:
.LFB34:
	.loc 1 495 0
	.set ___PA___,1
	.loc 1 495 0
	mov	#tbloffset(_MSG_UART_PINS_STATE_str),w0
	mov	#tblpage(_MSG_UART_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE34:
	.size	_uart_pins_state, .-_uart_pins_state
	.align	2
	.global	_binUART	; export
	.type	_binUART,@function
_binUART:
.LFB37:
	.loc 1 704 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI16:
	mov.d	w8,[w15++]
.LCFI17:
	mov.d	w10,[w15++]
.LCFI18:
	mov.d	w12,[w15++]
.LCFI19:
	mov	w14,[w15++]
.LCFI20:
	.loc 1 707 0
	mov	#_uart_settings,w0
	.loc 1 708 0
	mov.b	#-16,w2
	.loc 1 709 0
	and.b	w2,[w0],w2
	.loc 1 710 0
	mov	#_mode_configuration+2,w1
	bset.b	[w1],#4
	.loc 1 712 0
	mov.b	w2,w1
	bclr.b	w1,#4
	mov.b	w1,[w0]
	.loc 1 713 0
	clr.b	w4
	mov.b	w4,w3
	mov.b	w4,w2
	mov.b	#1,w1
	mov	#13332,w0
	call	_uart2_setup
	.loc 1 716 0
	call	_uart2_enable
	.loc 1 717 0
	mov	#tbloffset(_MSG_UART_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_UART_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	.loc 1 711 0
	mov	#13332,w0
	mov	w0,[w15-16]
.LBB7:
	.loc 1 723 0
	mov	#_uart_settings,w9
	.loc 1 844 0
	mov	#_mode_configuration+2,w14
	.loc 1 746 0
	mov	#tbloffset(_MSG_UART_MODE_IDENTIFIER_str),w10
	mov	#tblpage(_MSG_UART_MODE_IDENTIFIER_str),w11
.L131:
	.loc 1 722 0
	call	_uart2_rx_ready
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L97
	.loc 1 723 0
	mov.b	[w9],w1
	and.b	w1,#16,w0
	.set ___BP___,50
	bra	z,.L98
	.loc 1 724 0
	call	_uart2_rx
	call	_user_serial_transmit_character
	bra	.L97
.L98:
	.loc 1 726 0
	call	_uart2_rx
.L97:
	.loc 1 730 0
	bclr.b	_U2STAbits,#1
	.loc 1 732 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L131
	.loc 1 736 0
	call	_user_serial_read_byte
	.loc 1 738 0
	ze	w0,w2
	mov	#240,w3
	and	w2,w3,w1
	mov	#64,w3
	sub	w1,w3,[w15]
	.set ___BP___,29
	bra	z,.L103
	.set ___BP___,50
	bra	gt,.L106
	cp0	w1
	.set ___BP___,50
	bra	z,.L101
	sub	w1,#16,[w15]
	.set ___BP___,71
	bra	nz,.L100
	bra	.L133
.L106:
	mov	#128,w3
	sub	w1,w3,[w15]
	.set ___BP___,29
	bra	z,.L105
	mov	#144,w3
	sub	w1,w3,[w15]
	.set ___BP___,29
	bra	z,.L105
	mov	#96,w2
	sub	w1,w2,[w15]
	.set ___BP___,71
	bra	nz,.L100
	bra	.L134
.L101:
	.loc 1 740 0
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L110
	.set ___BP___,50
	bra	gtu,.L114
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L108
	sub.b	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L107
	bra	.L135
.L114:
	sub.b	w0,#7,[w15]
	.set ___BP___,29
	bra	z,.L112
	sub.b	w0,#15,[w15]
	.set ___BP___,29
	bra	z,.L113
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L107
	bra	.L136
.L108:
	.loc 1 742 0
	call	_uart2_disable
.LBE7:
	.loc 1 873 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.L135:
.LBB9:
	.loc 1 746 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	.loc 1 747 0
	bra	.L131
.L110:
	.loc 1 750 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 751 0
	bclr.b	_U2STAbits,#1
	.loc 1 752 0
	bset.b	[w9],#4
	.loc 1 753 0
	bra	.L131
.L136:
	.loc 1 756 0
	bclr.b	[w9],#4
	.loc 1 757 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 758 0
	bra	.L131
.L112:
	.loc 1 761 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 762 0
	call	_uart2_disable
	.loc 1 763 0
	call	_user_serial_read_byte
	sl	w0,#8,w8
	.loc 1 764 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 765 0
	call	_user_serial_read_byte
	ze	w0,w0
	ior	w0,w8,w0
	mov	w0,[w15-16]
	.loc 1 768 0
	mov	[w9],w3
	.loc 1 766 0
	sl	w3,#13,w4
	sl	w3,#12,w2
	lsr	w2,#15,w2
	ze	[w14],w1
	sl	w1,#11,w1
	lsr	w1,#15,w1
	lsr	w4,#15,w4
	and.b	w3,#3,w3
	call	_uart2_setup
	.loc 1 769 0
	call	_uart2_enable
	.loc 1 770 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 771 0
	bra	.L131
.L113:
	.loc 1 774 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 775 0
	bclr.b	_U2STAbits,#1
	.loc 1 783 0
	mov	#512,w8
.L132:
	btst.b	_U2STAbits,#0
	.set ___BP___,50
	bra	z,.L117
	mov	_U1STAbits,w1
	and	w8,w1,w0
	.set ___BP___,50
	bra	nz,.L117
	.loc 1 784 0
	mov	_U2RXREG,w3
	mov	w3,_U1TXREG
.L117:
	.loc 1 788 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L132
	mov	_U2STAbits,w1
	and	w8,w1,w0
	.set ___BP___,50
	bra	nz,.L132
	.loc 1 789 0
	call	_user_serial_read_byte
	ze	w0,w0
	mov	w0,_U2TXREG
	bra	.L132
.L107:
	.loc 1 795 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 796 0
	bra	.L131
.L133:
.LBB8:
	.loc 1 803 0
	and.b	w0,#15,w8
	.loc 1 805 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 804 0
	inc.b	w8,w8
	.loc 1 807 0
	ze	w8,w12
	.set ___BP___,9
	bra	z,.L131
	clr	w8
	.loc 1 809 0
	mov.b	#1,w13
.L119:
	.loc 1 808 0
	call	_user_serial_read_byte
	call	_uart2_tx
	.loc 1 809 0
	mov.b	w13,w0
	call	_user_serial_transmit_character
	.loc 1 807 0
	inc	w8,w8
	sub	w8,w12,[w15]
	.set ___BP___,91
	bra	ltu,.L119
	bra	.L131
.L103:
.LBE8:
	.loc 1 815 0
	call	_bp_binary_io_peripherals_set
	.loc 1 816 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 817 0
	bra	.L131
.L134:
	.loc 1 826 0
	and.b	w0,#15,w0
	.loc 1 830 0
	sub.b	w0,#10,[w15]
	.set ___BP___,50
	bra	leu,.L120
	mov.b	#10,w0
.L120:
	ze	w0,w0
	add	w0,w0,w0
	mov	#_UART_BRG_SPEED,w3
	mov	[w3+w0],w0
	mov	w0,[w15-16]
	.loc 1 831 0
	call	_uart2_disable
	.loc 1 834 0
	mov	[w9],w3
	.loc 1 832 0
	sl	w3,#13,w4
	sl	w3,#12,w2
	lsr	w2,#15,w2
	ze	[w14],w1
	sl	w1,#11,w1
	lsr	w1,#15,w1
	lsr	w4,#15,w4
	and.b	w3,#3,w3
	mov	[w15-16],w0
	call	_uart2_setup
	.loc 1 835 0
	call	_uart2_enable
	.loc 1 836 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 837 0
	bra	.L131
.L105:
	.loc 1 843 0
	mov.b	#-16,w0
	and.b	w0,[w9],[w9]
	.loc 1 844 0
	bclr.b	[w14],#4
	.loc 1 845 0
	btst	w2,#3
	.set ___BP___,50
	bra	z,.L121
	.loc 1 846 0
	mov.b	#-4,w0
	and.b	w0,[w9],w0
	bset.b	w0,#1
	mov.b	w0,[w9]
.L121:
	.loc 1 848 0
	btst	w2,#2
	.set ___BP___,50
	bra	z,.L122
	.loc 1 849 0
	mov.b	[w9],w1
	and.b	w1,#3,w0
	bset.b	w0,#0
	mov.b	#-4,w1
	and.b	w1,[w9],w1
	ior.b	w1,w0,[w9]
.L122:
	.loc 1 851 0
	btst	w2,#1
	.set ___BP___,50
	bra	z,.L123
	.loc 1 852 0
	bset.b	[w9],#2
.L123:
	.loc 1 854 0
	btst	w2,#0
	.set ___BP___,50
	bra	z,.L124
	.loc 1 855 0
	bset.b	[w9],#3
.L124:
	.loc 1 857 0
	btst	w2,#4
	.set ___BP___,50
	bra	nz,.L125
	.loc 1 858 0
	bset.b	[w14],#4
.L125:
	.loc 1 860 0
	call	_uart2_disable
	.loc 1 863 0
	mov	[w9],w3
	.loc 1 861 0
	sl	w3,#13,w4
	sl	w3,#12,w2
	lsr	w2,#15,w2
	ze	[w14],w1
	sl	w1,#11,w1
	lsr	w1,#15,w1
	lsr	w4,#15,w4
	and.b	w3,#3,w3
	mov	[w15-16],w0
	call	_uart2_setup
	.loc 1 864 0
	call	_uart2_enable
	.loc 1 865 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 866 0
	bra	.L131
.L100:
	.loc 1 869 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L131
.LBE9:
.LFE37:
	.size	_binUART, .-_binUART
	.global	_UART_BRG_SPEED	; export
	.section	.const,psv,page
	.align	2
	.type	_UART_BRG_SPEED,@object
	.size	_UART_BRG_SPEED, 20
_UART_BRG_SPEED:
	.word	13332
	.word	3332
	.word	1666
	.word	832
	.word	416
	.word	207
	.word	103
	.word	68
	.word	34
	.word	127
	.section	.bss,bss
	.align	2
	.type	_uart_settings,@object
	.size	_uart_settings, 1
_uart_settings:
	.skip	1
	.section	.const,psv,page
	.align	2
	.type	_UART_COMMON_BAUD_RATES,@object
	.size	_UART_COMMON_BAUD_RATES, 64
_UART_COMMON_BAUD_RATES:
	.long	0
	.long	300
	.long	600
	.long	1200
	.long	2400
	.long	4800
	.long	9600
	.long	14400
	.long	19200
	.long	28800
	.long	38400
	.long	56000
	.long	57600
	.long	115200
	.long	128000
	.long	256000
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI0-.LFB36
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI0
	.byte	0x8c
	.uleb128 0x8
	.byte	0x8a
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
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
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -7
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x88
	.uleb128 0x4
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI11-.LFB33
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -12
	.byte	0x8e
	.uleb128 0xb
	.byte	0x8c
	.uleb128 0x9
	.byte	0x8a
	.uleb128 0x7
	.byte	0x88
	.uleb128 0x5
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI16-.LFB37
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
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
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
.LEFDE26:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.section	.debug_info,info
	.4byte	0x173b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../uart.c"
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
	.4byte	0xf5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0x116
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x2
	.byte	0xcd
	.4byte	0x136
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
	.4byte	0x116
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x386
	.4byte	0x217
	.uleb128 0x5
	.asciz	"TCS"
	.byte	0x3
	.2byte	0x388
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T32"
	.byte	0x3
	.2byte	0x38a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS"
	.byte	0x3
	.2byte	0x38b
	.4byte	0x106
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TGATE"
	.byte	0x3
	.2byte	0x38c
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSIDL"
	.byte	0x3
	.2byte	0x38e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TON"
	.byte	0x3
	.2byte	0x390
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x392
	.4byte	0x24b
	.uleb128 0x5
	.asciz	"TCKPS0"
	.byte	0x3
	.2byte	0x394
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS1"
	.byte	0x3
	.2byte	0x395
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x385
	.4byte	0x25f
	.uleb128 0x7
	.4byte	0x19b
	.uleb128 0x7
	.4byte	0x217
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagT2CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x384
	.4byte	0x27e
	.uleb128 0x9
	.4byte	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"T2CONBITS"
	.byte	0x3
	.2byte	0x398
	.4byte	0x25f
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x3c1
	.4byte	0x30c
	.uleb128 0x5
	.asciz	"TCS"
	.byte	0x3
	.2byte	0x3c3
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T32"
	.byte	0x3
	.2byte	0x3c5
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS"
	.byte	0x3
	.2byte	0x3c6
	.4byte	0x106
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TGATE"
	.byte	0x3
	.2byte	0x3c7
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSIDL"
	.byte	0x3
	.2byte	0x3c9
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TON"
	.byte	0x3
	.2byte	0x3cb
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x3cd
	.4byte	0x340
	.uleb128 0x5
	.asciz	"TCKPS0"
	.byte	0x3
	.2byte	0x3cf
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS1"
	.byte	0x3
	.2byte	0x3d0
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x3c0
	.4byte	0x354
	.uleb128 0x7
	.4byte	0x290
	.uleb128 0x7
	.4byte	0x30c
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagT4CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x3bf
	.4byte	0x373
	.uleb128 0x9
	.4byte	0x340
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"T4CONBITS"
	.byte	0x3
	.2byte	0x3d3
	.4byte	0x354
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x5c9
	.4byte	0x4a3
	.uleb128 0x5
	.asciz	"URXDA"
	.byte	0x3
	.2byte	0x5ca
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OERR"
	.byte	0x3
	.2byte	0x5cb
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FERR"
	.byte	0x3
	.2byte	0x5cc
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PERR"
	.byte	0x3
	.2byte	0x5cd
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RIDLE"
	.byte	0x3
	.2byte	0x5ce
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADDEN"
	.byte	0x3
	.2byte	0x5cf
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"URXISEL"
	.byte	0x3
	.2byte	0x5d0
	.4byte	0x106
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRMT"
	.byte	0x3
	.2byte	0x5d1
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBF"
	.byte	0x3
	.2byte	0x5d2
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXEN"
	.byte	0x3
	.2byte	0x5d3
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBRK"
	.byte	0x3
	.2byte	0x5d4
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x5d6
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXINV"
	.byte	0x3
	.2byte	0x5d7
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x5d8
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x5da
	.4byte	0x4d1
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x5dc
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x5dd
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x5c8
	.4byte	0x4e5
	.uleb128 0x7
	.4byte	0x385
	.uleb128 0x7
	.4byte	0x4a3
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x5c7
	.4byte	0x504
	.uleb128 0x9
	.4byte	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U1STABITS"
	.byte	0x3
	.2byte	0x5e0
	.4byte	0x4e5
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x611
	.4byte	0x634
	.uleb128 0x5
	.asciz	"URXDA"
	.byte	0x3
	.2byte	0x612
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OERR"
	.byte	0x3
	.2byte	0x613
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FERR"
	.byte	0x3
	.2byte	0x614
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PERR"
	.byte	0x3
	.2byte	0x615
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RIDLE"
	.byte	0x3
	.2byte	0x616
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADDEN"
	.byte	0x3
	.2byte	0x617
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"URXISEL"
	.byte	0x3
	.2byte	0x618
	.4byte	0x106
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRMT"
	.byte	0x3
	.2byte	0x619
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBF"
	.byte	0x3
	.2byte	0x61a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXEN"
	.byte	0x3
	.2byte	0x61b
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXBRK"
	.byte	0x3
	.2byte	0x61c
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x61e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"UTXINV"
	.byte	0x3
	.2byte	0x61f
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x620
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x622
	.4byte	0x662
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x624
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x625
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x610
	.4byte	0x676
	.uleb128 0x7
	.4byte	0x516
	.uleb128 0x7
	.4byte	0x634
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagU2STABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x60f
	.4byte	0x695
	.uleb128 0x9
	.4byte	0x662
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"U2STABITS"
	.byte	0x3
	.2byte	0x628
	.4byte	0x676
	.uleb128 0x8
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0x727
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA1"
	.byte	0x3
	.2byte	0x6d9
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA2"
	.byte	0x3
	.2byte	0x6da
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA3"
	.byte	0x3
	.2byte	0x6db
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA4"
	.byte	0x3
	.2byte	0x6dc
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISABITS"
	.byte	0x3
	.2byte	0x6dd
	.4byte	0x6a7
	.uleb128 0x8
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x7aa
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x3
	.2byte	0x6e3
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA1"
	.byte	0x3
	.2byte	0x6e4
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA2"
	.byte	0x3
	.2byte	0x6e5
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA3"
	.byte	0x3
	.2byte	0x6e6
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA4"
	.byte	0x3
	.2byte	0x6e7
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTABITS"
	.byte	0x3
	.2byte	0x6e8
	.4byte	0x739
	.uleb128 0x8
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0x929
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x3
	.2byte	0x704
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB1"
	.byte	0x3
	.2byte	0x705
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB2"
	.byte	0x3
	.2byte	0x706
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB3"
	.byte	0x3
	.2byte	0x707
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB4"
	.byte	0x3
	.2byte	0x708
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB5"
	.byte	0x3
	.2byte	0x709
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB6"
	.byte	0x3
	.2byte	0x70a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB7"
	.byte	0x3
	.2byte	0x70b
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB8"
	.byte	0x3
	.2byte	0x70c
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB9"
	.byte	0x3
	.2byte	0x70d
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB10"
	.byte	0x3
	.2byte	0x70e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB11"
	.byte	0x3
	.2byte	0x70f
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB12"
	.byte	0x3
	.2byte	0x710
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB13"
	.byte	0x3
	.2byte	0x711
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB14"
	.byte	0x3
	.2byte	0x712
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB15"
	.byte	0x3
	.2byte	0x713
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISBBITS"
	.byte	0x3
	.2byte	0x714
	.4byte	0x7bc
	.uleb128 0x8
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0xa78
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x3
	.2byte	0x71a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB1"
	.byte	0x3
	.2byte	0x71b
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB2"
	.byte	0x3
	.2byte	0x71c
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB3"
	.byte	0x3
	.2byte	0x71d
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB4"
	.byte	0x3
	.2byte	0x71e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB5"
	.byte	0x3
	.2byte	0x71f
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB6"
	.byte	0x3
	.2byte	0x720
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB7"
	.byte	0x3
	.2byte	0x721
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB8"
	.byte	0x3
	.2byte	0x722
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB9"
	.byte	0x3
	.2byte	0x723
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB10"
	.byte	0x3
	.2byte	0x724
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB11"
	.byte	0x3
	.2byte	0x725
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB12"
	.byte	0x3
	.2byte	0x726
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB13"
	.byte	0x3
	.2byte	0x727
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB14"
	.byte	0x3
	.2byte	0x728
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB15"
	.byte	0x3
	.2byte	0x729
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTBBITS"
	.byte	0x3
	.2byte	0x72a
	.4byte	0x93b
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0xb1b
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x3
	.2byte	0x78e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SAMP"
	.byte	0x3
	.2byte	0x78f
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ASAM"
	.byte	0x3
	.2byte	0x790
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC"
	.byte	0x3
	.2byte	0x792
	.4byte	0x106
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM"
	.byte	0x3
	.2byte	0x793
	.4byte	0x106
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADSIDL"
	.byte	0x3
	.2byte	0x795
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADON"
	.byte	0x3
	.2byte	0x797
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x799
	.4byte	0xb89
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x3
	.2byte	0x79b
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC1"
	.byte	0x3
	.2byte	0x79c
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC2"
	.byte	0x3
	.2byte	0x79d
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM0"
	.byte	0x3
	.2byte	0x79e
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM1"
	.byte	0x3
	.2byte	0x79f
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x78c
	.4byte	0xb9d
	.uleb128 0x7
	.4byte	0xa8a
	.uleb128 0x7
	.4byte	0xb1b
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0xbbe
	.uleb128 0x9
	.4byte	0xb89
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0xb9d
	.uleb128 0x8
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0xccb
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x3
	.2byte	0x7fe
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG1"
	.byte	0x3
	.2byte	0x7ff
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG2"
	.byte	0x3
	.2byte	0x800
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG3"
	.byte	0x3
	.2byte	0x801
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG4"
	.byte	0x3
	.2byte	0x802
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG5"
	.byte	0x3
	.2byte	0x803
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG9"
	.byte	0x3
	.2byte	0x805
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG10"
	.byte	0x3
	.2byte	0x806
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG11"
	.byte	0x3
	.2byte	0x807
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG12"
	.byte	0x3
	.2byte	0x808
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG15"
	.byte	0x3
	.2byte	0x80a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1PCFGBITS"
	.byte	0x3
	.2byte	0x80b
	.4byte	0xbd2
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x97b
	.4byte	0xd11
	.uleb128 0x5
	.asciz	"T2CKR"
	.byte	0x3
	.2byte	0x97c
	.4byte	0x106
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR"
	.byte	0x3
	.2byte	0x97e
	.4byte	0x106
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x980
	.4byte	0xded
	.uleb128 0x5
	.asciz	"T2CKR0"
	.byte	0x3
	.2byte	0x981
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2CKR1"
	.byte	0x3
	.2byte	0x982
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2CKR2"
	.byte	0x3
	.2byte	0x983
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2CKR3"
	.byte	0x3
	.2byte	0x984
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2CKR4"
	.byte	0x3
	.2byte	0x985
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR0"
	.byte	0x3
	.2byte	0x987
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR1"
	.byte	0x3
	.2byte	0x988
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR2"
	.byte	0x3
	.2byte	0x989
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR3"
	.byte	0x3
	.2byte	0x98a
	.4byte	0x106
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3CKR4"
	.byte	0x3
	.2byte	0x98b
	.4byte	0x106
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
	.2byte	0x97a
	.4byte	0xe01
	.uleb128 0x7
	.4byte	0xcdf
	.uleb128 0x7
	.4byte	0xd11
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagRPINR3BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x979
	.4byte	0xe21
	.uleb128 0x9
	.4byte	0xded
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"RPINR3BITS"
	.byte	0x3
	.2byte	0x98e
	.4byte	0xe01
	.uleb128 0xc
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0xf19
	.uleb128 0xd
	.asciz	"speed"
	.byte	0x4
	.byte	0x39
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"numbits"
	.byte	0x4
	.byte	0x3a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.asciz	"alternate_aux"
	.byte	0x4
	.byte	0x3f
	.4byte	0xe6
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"periodicService"
	.byte	0x4
	.byte	0x41
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"little_endian"
	.byte	0x4
	.byte	0x47
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"high_impedance"
	.byte	0x4
	.byte	0x4c
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"int16"
	.byte	0x4
	.byte	0x51
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"write_with_read"
	.byte	0x4
	.byte	0x56
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"command_error"
	.byte	0x4
	.byte	0x5b
	.4byte	0xe6
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
	.4byte	0xe34
	.uleb128 0xc
	.byte	0x1
	.byte	0x1
	.byte	0x26
	.4byte	0xfa7
	.uleb128 0xe
	.asciz	"databits_parity"
	.byte	0x1
	.byte	0x27
	.4byte	0xe6
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"stop_bits"
	.byte	0x1
	.byte	0x28
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"receive_polarity"
	.byte	0x1
	.byte	0x29
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"echo_uart"
	.byte	0x1
	.byte	0x2a
	.4byte	0xe6
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"UARTSettings"
	.byte	0x1
	.byte	0x2e
	.4byte	0xf35
	.uleb128 0xf
	.asciz	"uart_get_closest_common_rate"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.4byte	0x126
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0x104f
	.uleb128 0x10
	.asciz	"baud_rate"
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x104f
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x11
	.asciz	"counter"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x17b
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.asciz	"lower"
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x126
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x11
	.asciz	"upper"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x126
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x126
	.uleb128 0xf
	.asciz	"uart_get_baud_rate"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	0x126
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x10eb
	.uleb128 0x10
	.asciz	"quiet"
	.byte	0x1
	.2byte	0x203
	.4byte	0x10eb
	.byte	0x1
	.byte	0x5a
	.uleb128 0x14
	.asciz	"samples"
	.byte	0x1
	.2byte	0x204
	.4byte	0x17b
	.uleb128 0x11
	.asciz	"current_sample"
	.byte	0x1
	.2byte	0x205
	.4byte	0x126
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x14
	.asciz	"bit_sample"
	.byte	0x1
	.2byte	0x206
	.4byte	0x126
	.uleb128 0x12
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x11
	.asciz	"dummy"
	.byte	0x1
	.2byte	0x217
	.4byte	0x10f9
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x10f0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x15
	.4byte	0x106
	.uleb128 0x16
	.byte	0x1
	.asciz	"uart_read"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x1137
	.uleb128 0x12
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.byte	0x59
	.4byte	0x106
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"uart_write"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1167
	.uleb128 0x18
	.4byte	.LASF4
	.byte	0x1
	.byte	0x76
	.4byte	0x1167
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x13
	.4byte	0x106
	.uleb128 0x19
	.byte	0x1
	.asciz	"UARTsettings"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.byte	0x1
	.asciz	"uart_setup_prepare"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x120a
	.uleb128 0x1b
	.asciz	"speed"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.byte	0x1
	.byte	0x58
	.uleb128 0x1b
	.asciz	"dbp"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.byte	0x1
	.byte	0x59
	.uleb128 0x1b
	.asciz	"sb"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1b
	.asciz	"rxp"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1b
	.asciz	"output"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.asciz	"brg"
	.byte	0x1
	.byte	0x8e
	.4byte	0xc2
	.uleb128 0x1c
	.asciz	"abd"
	.byte	0x1
	.byte	0x90
	.4byte	0x136
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"uart_setup_execute"
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.byte	0x1
	.asciz	"uart_cleanup"
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"uart_run_macro"
	.byte	0x1
	.2byte	0x133
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x1299
	.uleb128 0x10
	.asciz	"macro"
	.byte	0x1
	.2byte	0x133
	.4byte	0x1167
	.byte	0x1
	.byte	0x58
	.uleb128 0x12
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x11
	.asciz	"dummy"
	.byte	0x1
	.2byte	0x194
	.4byte	0x10f9
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"uart_start"
	.byte	0x1
	.2byte	0x1ad
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.byte	0x1
	.asciz	"uart_stop"
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"uart_periodic_callback"
	.byte	0x1
	.2byte	0x1c4
	.byte	0x1
	.4byte	0x10f0
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x1310
	.uleb128 0x11
	.asciz	"handled"
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x10f0
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"uart_pins_state"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"binUART"
	.byte	0x1
	.2byte	0x2c0
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1398
	.uleb128 0x14
	.asciz	"brg_value"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x106
	.uleb128 0x12
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x14
	.asciz	"input_byte"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xe6
	.uleb128 0x12
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x11
	.asciz	"counter"
	.byte	0x1
	.2byte	0x321
	.4byte	0x17b
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"TMR2"
	.byte	0x3
	.2byte	0x379
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TMR3HLD"
	.byte	0x3
	.2byte	0x37b
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"T2CON"
	.byte	0x3
	.2byte	0x383
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x399
	.4byte	0x13d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x27e
	.uleb128 0x20
	.asciz	"TMR4"
	.byte	0x3
	.2byte	0x3b4
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TMR5HLD"
	.byte	0x3
	.2byte	0x3b6
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"T4CON"
	.byte	0x3
	.2byte	0x3be
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x3d4
	.4byte	0x141b
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x373
	.uleb128 0x21
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x5e1
	.4byte	0x142e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x504
	.uleb128 0x20
	.asciz	"U1TXREG"
	.byte	0x3
	.2byte	0x5e4
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1RXREG"
	.byte	0x3
	.2byte	0x5e6
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1BRG"
	.byte	0x3
	.2byte	0x5e8
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x629
	.4byte	0x1475
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x695
	.uleb128 0x20
	.asciz	"U2TXREG"
	.byte	0x3
	.2byte	0x62c
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U2RXREG"
	.byte	0x3
	.2byte	0x62e
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U2BRG"
	.byte	0x3
	.2byte	0x630
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x6de
	.4byte	0x14bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x727
	.uleb128 0x21
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x7aa
	.uleb128 0x21
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x715
	.4byte	0x14e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x929
	.uleb128 0x21
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x72b
	.4byte	0x14f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0xa78
	.uleb128 0x21
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x1508
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0xbbe
	.uleb128 0x21
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x80c
	.4byte	0x151b
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0xccb
	.uleb128 0x21
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x98f
	.4byte	0x152e
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0xe21
	.uleb128 0x22
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0xf19
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.asciz	"uart_settings"
	.byte	0x1
	.byte	0x30
	.4byte	0xfa7
	.byte	0x5
	.byte	0x3
	.4byte	_uart_settings
	.uleb128 0x23
	.4byte	0x126
	.4byte	0x156b
	.uleb128 0x24
	.4byte	0x116
	.byte	0xf
	.byte	0x0
	.uleb128 0x1b
	.asciz	"UART_COMMON_BAUD_RATES"
	.byte	0x1
	.byte	0x32
	.4byte	0x158f
	.byte	0x5
	.byte	0x3
	.4byte	_UART_COMMON_BAUD_RATES
	.uleb128 0x13
	.4byte	0x155b
	.uleb128 0x23
	.4byte	0x106
	.4byte	0x15a4
	.uleb128 0x24
	.4byte	0x116
	.byte	0x9
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF17
	.byte	0x1
	.byte	0x36
	.4byte	0x15b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1594
	.uleb128 0x20
	.asciz	"TMR2"
	.byte	0x3
	.2byte	0x379
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TMR3HLD"
	.byte	0x3
	.2byte	0x37b
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"T2CON"
	.byte	0x3
	.2byte	0x383
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x399
	.4byte	0x13d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TMR4"
	.byte	0x3
	.2byte	0x3b4
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"TMR5HLD"
	.byte	0x3
	.2byte	0x3b6
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"T4CON"
	.byte	0x3
	.2byte	0x3be
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x3d4
	.4byte	0x141b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x5e1
	.4byte	0x142e
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1TXREG"
	.byte	0x3
	.2byte	0x5e4
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1RXREG"
	.byte	0x3
	.2byte	0x5e6
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U1BRG"
	.byte	0x3
	.2byte	0x5e8
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x629
	.4byte	0x1475
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U2TXREG"
	.byte	0x3
	.2byte	0x62c
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U2RXREG"
	.byte	0x3
	.2byte	0x62e
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.asciz	"U2BRG"
	.byte	0x3
	.2byte	0x630
	.4byte	0x10f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x6de
	.4byte	0x14bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x715
	.4byte	0x14e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x72b
	.4byte	0x14f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x1508
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x80c
	.4byte	0x151b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x98f
	.4byte	0x152e
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0xf19
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF17
	.byte	0x1
	.byte	0x36
	.4byte	0x1739
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_UART_BRG_SPEED
	.uleb128 0x13
	.4byte	0x1594
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xf9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x173f
	.4byte	0x10fe
	.asciz	"uart_read"
	.4byte	0x1137
	.asciz	"uart_write"
	.4byte	0x116c
	.asciz	"UARTsettings"
	.4byte	0x1188
	.asciz	"uart_setup_prepare"
	.4byte	0x120a
	.asciz	"uart_setup_execute"
	.4byte	0x122d
	.asciz	"uart_cleanup"
	.4byte	0x124a
	.asciz	"uart_run_macro"
	.4byte	0x1299
	.asciz	"uart_start"
	.4byte	0x12b4
	.asciz	"uart_stop"
	.4byte	0x12ce
	.asciz	"uart_periodic_callback"
	.4byte	0x1310
	.asciz	"uart_pins_state"
	.4byte	0x1330
	.asciz	"binUART"
	.4byte	0x1727
	.asciz	"UART_BRG_SPEED"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x1c8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x173f
	.4byte	0xe6
	.asciz	"uint8_t"
	.4byte	0x106
	.asciz	"uint16_t"
	.4byte	0x126
	.asciz	"uint32_t"
	.4byte	0x17b
	.asciz	"size_t"
	.4byte	0x25f
	.asciz	"tagT2CONBITS"
	.4byte	0x27e
	.asciz	"T2CONBITS"
	.4byte	0x354
	.asciz	"tagT4CONBITS"
	.4byte	0x373
	.asciz	"T4CONBITS"
	.4byte	0x4e5
	.asciz	"tagU1STABITS"
	.4byte	0x504
	.asciz	"U1STABITS"
	.4byte	0x676
	.asciz	"tagU2STABITS"
	.4byte	0x695
	.asciz	"U2STABITS"
	.4byte	0x6a7
	.asciz	"tagTRISABITS"
	.4byte	0x727
	.asciz	"TRISABITS"
	.4byte	0x739
	.asciz	"tagPORTABITS"
	.4byte	0x7aa
	.asciz	"PORTABITS"
	.4byte	0x7bc
	.asciz	"tagTRISBBITS"
	.4byte	0x929
	.asciz	"TRISBBITS"
	.4byte	0x93b
	.asciz	"tagPORTBBITS"
	.4byte	0xa78
	.asciz	"PORTBBITS"
	.4byte	0xb9d
	.asciz	"tagAD1CON1BITS"
	.4byte	0xbbe
	.asciz	"AD1CON1BITS"
	.4byte	0xbd2
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xccb
	.asciz	"AD1PCFGBITS"
	.4byte	0xe01
	.asciz	"tagRPINR3BITS"
	.4byte	0xe21
	.asciz	"RPINR3BITS"
	.4byte	0xf19
	.asciz	"mode_configuration_t"
	.4byte	0xfa7
	.asciz	"UARTSettings"
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
.LASF4:
	.asciz	"character"
.LASF12:
	.asciz	"PORTBbits"
.LASF5:
	.asciz	"T2CONbits"
.LASF17:
	.asciz	"UART_BRG_SPEED"
.LASF8:
	.asciz	"U2STAbits"
.LASF2:
	.asciz	"URXISEL0"
.LASF3:
	.asciz	"URXISEL1"
.LASF14:
	.asciz	"AD1PCFGbits"
.LASF7:
	.asciz	"U1STAbits"
.LASF16:
	.asciz	"mode_configuration"
.LASF0:
	.asciz	"UTXISEL0"
.LASF1:
	.asciz	"UTXISEL1"
.LASF13:
	.asciz	"AD1CON1bits"
.LASF9:
	.asciz	"TRISAbits"
.LASF6:
	.asciz	"T4CONbits"
.LASF10:
	.asciz	"PORTAbits"
.LASF15:
	.asciz	"RPINR3bits"
.LASF11:
	.asciz	"TRISBbits"
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
