	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\raw2wire.c"
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
	.type	_trigger_atr,@function
_trigger_atr:
.LFB33:
	.file 1 "../raw2wire.c"
	.loc 1 142 0
	.set ___PA___,1
	.loc 1 143 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_TRIGGER_INFO_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_TRIGGER_INFO_str),w1
	call	_bp_message_write_line
	.loc 1 145 0
	clr.b	w0
	call	_bitbang_set_cs
	.loc 1 146 0
	mov	#255,w0
	call	_bp_delay_us
	.loc 1 147 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 148 0
	mov	#1,w0
	call	_bitbang_advance_clock_ticks
	.loc 1 149 0
	clr.b	w0
	call	_bitbang_set_cs
	.loc 1 150 0
	return	
	.set ___PA___,0
.LFE33:
	.size	_trigger_atr, .-_trigger_atr
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_read_atr_header,@function
_read_atr_header:
.LFB34:
	.loc 1 152 0
	.set ___PA___,1
	lnk	#4
.LCFI0:
	mov.d	w8,[w15++]
.LCFI1:
	mov.d	w10,[w15++]
.LCFI2:
	mov	w12,[w15++]
.LCFI3:
	.loc 1 155 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_REPLY_HEADER_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_REPLY_HEADER_str),w1
	call	_bp_message_write_buffer
	sub	w15,#15,w8
	.loc 1 152 0
	sub	w15,#11,w10
.LBB2:
	.loc 1 158 0
	mov	#_mode_configuration+2,w11
	.loc 1 162 0
	mov.b	#32,w12
.L4:
	.loc 1 157 0
	call	_bitbang_read_value
	mov.b	w0,w2
	inc	w8,w8
	.loc 1 152 0
	mov	w8,w9
	.loc 1 157 0
	mov.b	w0,[w8]
	.loc 1 158 0
	mov.b	[w11],w0
	and.b	w0,#8,w1
	.set ___BP___,71
	bra	z,.L3
	.loc 1 159 0
	mov.b	w2,w0
	call	_bp_reverse_byte
	mov.b	w0,[w8]
.L3:
	.loc 1 161 0
	mov.b	[w9],w0
	call	_bp_write_hex_byte
	.loc 1 162 0
	mov.b	w12,w0
	call	_user_serial_transmit_character
	.loc 1 156 0
	sub	w8,w10,[w15]
	.set ___BP___,80
	bra	nz,.L4
.LBE2:
	.loc 1 164 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 166 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_PROTOCOL_HEADER_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_PROTOCOL_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 167 0
	mov.b	[w15-14],w1
	ze	w1,w0
	lsr	w0,#4,w0
	sub	w0,#9,[w15]
	.set ___BP___,29
	bra	z,.L7
	sub.b	w0,#9,[w15]
	.set ___BP___,50
	bra	gtu,.L10
	sub	w0,#8,[w15]
	.set ___BP___,71
	bra	nz,.L5
	bra	.L20
.L10:
	sub	w0,#10,[w15]
	.set ___BP___,29
	bra	z,.L8
	sub	w0,#15,[w15]
	.set ___BP___,71
	bra	nz,.L5
	bra	.L21
.L20:
	.loc 1 169 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_PROTOCOL_SERIAL_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_PROTOCOL_SERIAL_str),w1
	call	_bp_message_write_buffer
	.loc 1 170 0
	bra	.L11
.L7:
	.loc 1 173 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_PROTOCOL_3WIRE_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_PROTOCOL_3WIRE_str),w1
	call	_bp_message_write_buffer
	.loc 1 174 0
	bra	.L11
.L8:
	.loc 1 177 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_PROTOCOL_2WIRE_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_PROTOCOL_2WIRE_str),w1
	call	_bp_message_write_buffer
	.loc 1 178 0
	bra	.L11
.L21:
	.loc 1 181 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_RFU_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_RFU_str),w1
	call	_bp_message_write_buffer
	.loc 1 182 0
	bra	.L11
.L5:
	.loc 1 185 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_PROTOCOL_UNKNOWN_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_PROTOCOL_UNKNOWN_str),w1
	call	_bp_message_write_buffer
.L11:
	.loc 1 188 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 190 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_READ_TYPE_HEADER_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_READ_TYPE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 191 0
	mov.b	[w15-13],w0
	cp0.b	w0
	.set ___BP___,26
	bra	lt,.L12
	.loc 1 192 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_READ_TYPE_TO_END_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_READ_TYPE_TO_END_str),w1
	call	_bp_message_write_buffer
	bra	.L13
.L12:
	.loc 1 194 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_READ_TYPE_VARIABLE_LENGTH_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_READ_TYPE_VARIABLE_LENGTH_str),w1
	call	_bp_message_write_buffer
.L13:
	.loc 1 196 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 198 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_DATA_UNITS_HEADER_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_DATA_UNITS_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 199 0
	mov.b	[w15-13],w0
	lsr	w0,#3,w0
	and	w0,#15,w0
	.loc 1 200 0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L15
	sub.b	w0,#15,[w15]
	.set ___BP___,71
	bra	nz,.L19
	bra	.L22
.L15:
	.loc 1 202 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_DATA_UNITS_NO_INDICATION_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_DATA_UNITS_NO_INDICATION_str),w1
	call	_bp_message_write_buffer
	.loc 1 203 0
	bra	.L17
.L22:
	.loc 1 206 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_RFU_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_RFU_str),w1
	call	_bp_message_write_buffer
	.loc 1 207 0
	bra	.L17
.L19:
	.loc 1 210 0
	ze	w0,w0
	sl	w0,#2,w0
	mov	#_DATA_UNIT_TABLE,w1
	add	w1,w0,w0
	mov.d	[w0],w0
	call	_bp_write_dec_dword
.L17:
	.loc 1 214 0
	mov	#tbloffset(_MSG_RAW2WIRE_ATR_DATA_UNIT_LENGTH_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_ATR_DATA_UNIT_LENGTH_str),w1
	call	_bp_message_write_buffer
	.loc 1 215 0
	mov.b	[w15-13],w0
	and	w0,#7,w0
	sl	w0,#2,w0
	mov	#_DATA_UNIT_LENGTH_TABLE,w1
	mov.b	[w1+w0],w0
	call	_bp_write_dec_byte
	.loc 1 216 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 217 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE34:
	.size	_read_atr_header, .-_read_atr_header
	.align	2
	.global	_raw2wire_read	; export
	.type	_raw2wire_read,@function
_raw2wire_read:
.LFB24:
	.loc 1 62 0
	.set ___PA___,1
	.loc 1 62 0
	call	_bitbang_read_value
	return	
	.set ___PA___,0
.LFE24:
	.size	_raw2wire_read, .-_raw2wire_read
	.align	2
	.global	_raw2wire_write	; export
	.type	_raw2wire_write,@function
_raw2wire_write:
.LFB25:
	.loc 1 64 0
	.set ___PA___,1
	.loc 1 65 0
	call	_bitbang_write_value
	.loc 1 67 0
	mov	#256,w0
	return	
	.set ___PA___,0
.LFE25:
	.size	_raw2wire_write, .-_raw2wire_write
	.align	2
	.global	_raw2wire_start	; export
	.type	_raw2wire_start,@function
_raw2wire_start:
.LFB26:
	.loc 1 69 0
	.set ___PA___,1
	.loc 1 70 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 71 0
	mov	#tbloffset(_MSG_RAW2WIRE_I2C_START_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_I2C_START_str),w1
	call	_bp_message_write_buffer
	.loc 1 72 0
	mov	#tbloffset(_MSG_I2C_START_BIT_str),w0
	mov	#tblpage(_MSG_I2C_START_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 73 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_raw2wire_start, .-_raw2wire_start
	.align	2
	.global	_raw2wire_stop	; export
	.type	_raw2wire_stop,@function
_raw2wire_stop:
.LFB27:
	.loc 1 75 0
	.set ___PA___,1
	.loc 1 76 0
	call	_bitbang_i2c_stop
	.loc 1 77 0
	mov	#tbloffset(_MSG_RAW2WIRE_I2C_STOP_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_I2C_STOP_str),w1
	call	_bp_message_write_buffer
	.loc 1 78 0
	mov	#tbloffset(_MSG_I2C_STOP_BIT_str),w0
	mov	#tblpage(_MSG_I2C_STOP_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 79 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_raw2wire_stop, .-_raw2wire_stop
	.align	2
	.global	_raw2wire_print_settings	; export
	.type	_raw2wire_print_settings,@function
_raw2wire_print_settings:
.LFB28:
	.loc 1 81 0
	.set ___PA___,1
	.loc 1 82 0
	mov	#tbloffset(_MSG_RAW2WIRE_MODE_HEADER_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_MODE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 83 0
	mov	#_mode_configuration,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 84 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 85 0
	mov	#_mode_configuration+2,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 86 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 87 0
	mov	#tbloffset(_MSG_MODE_HEADER_END_str),w0
	mov	#tblpage(_MSG_MODE_HEADER_END_str),w1
	call	_bp_message_write_line
	.loc 1 88 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_raw2wire_print_settings, .-_raw2wire_print_settings
	.align	2
	.global	_raw2wire_setup_prepare	; export
	.type	_raw2wire_setup_prepare,@function
_raw2wire_setup_prepare:
.LFB29:
	.loc 1 90 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	.loc 1 91 0
	call	_consumewhitechars
	.loc 1 92 0
	call	_getint
	mov	w0,w8
	.loc 1 93 0
	call	_consumewhitechars
	.loc 1 94 0
	call	_getint
	.loc 1 97 0
	dec	w8,w1
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L29
	dec	w0,w1
	.loc 1 99 0
	sub	w1,#1,[w15]
	.set ___BP___,100
	bra	leu,.L30
.L29:
	.loc 1 100 0
	mov	#tbloffset(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 101 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	.loc 1 102 0
	mov	#tbloffset(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w0
	mov	#tblpage(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 103 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	#111,w3
	and.b	w3,[w1],w2
	.loc 1 104 0
	ior.b	w2,w0,[w1]
	bra	.L28
.L30:
	.loc 1 106 0
	mov	#_mode_configuration,w1
	dec.b	w8,[w1]
	.loc 1 107 0
	btg	w0,#0
	btsc	w0,#15
	neg	w0,w0
	dec	w0,w0
	mov	#_mode_configuration+2,w1
	lsr	w0,#15,w0
	sl	w0,#4,w0
	mov.b	[w1],w2
	bclr.b	w2,#4
	ior.b	w2,w0,[w1]
	.loc 1 108 0
	call	_raw2wire_print_settings
.L28:
	.loc 1 110 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_raw2wire_setup_prepare, .-_raw2wire_setup_prepare
	.align	2
	.global	_raw2wire_setup_execute	; export
	.type	_raw2wire_setup_execute,@function
_raw2wire_setup_execute:
.LFB30:
	.loc 1 112 0
	.set ___PA___,1
	.loc 1 113 0
	bclr.b	_PORTBbits+1,#0
	.loc 1 114 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 115 0
	bset.b	_TRISBbits+1,#1
	.loc 1 116 0
	bclr.b	_TRISBbits+1,#0
	.loc 1 117 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 118 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_raw2wire_setup_execute, .-_raw2wire_setup_execute
	.align	2
	.global	_raw2wire_run_macro	; export
	.type	_raw2wire_run_macro,@function
_raw2wire_run_macro:
.LFB31:
	.loc 1 120 0
	.set ___PA___,1
	.loc 1 121 0
	sub	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L36
	.set ___BP___,50
	bra	ltu,.L35
	sub	w0,#2,[w15]
	.set ___BP___,71
	bra	nz,.L39
	bra	.L37
.L35:
	.loc 1 123 0
	mov	#tbloffset(_MSG_RAW2WIRE_MACRO_MENU_str),w0
	mov	#tblpage(_MSG_RAW2WIRE_MACRO_MENU_str),w1
	call	_bp_message_write_buffer
	.loc 1 124 0
	bra	.L33
.L36:
	.loc 1 127 0
	call	_trigger_atr
.L37:
	.loc 1 131 0
	call	_read_atr_header
	.loc 1 132 0
	bra	.L33
.L39:
	.loc 1 135 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L33:
	.loc 1 138 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_raw2wire_run_macro, .-_raw2wire_run_macro
	.align	2
	.global	_raw2wire_print_pins_state	; export
	.type	_raw2wire_print_pins_state,@function
_raw2wire_print_pins_state:
.LFB32:
	.loc 1 140 0
	.set ___PA___,1
	.loc 1 140 0
	mov	#tbloffset(_MSG_I2C_PINS_STATE_str),w0
	mov	#tblpage(_MSG_I2C_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE32:
	.size	_raw2wire_print_pins_state, .-_raw2wire_print_pins_state
	.section	.const,psv,page
	.align	2
	.type	_DATA_UNIT_TABLE,@object
	.size	_DATA_UNIT_TABLE, 32
_DATA_UNIT_TABLE:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	32
	.long	64
	.long	128
	.align	2
	.type	_DATA_UNIT_LENGTH_TABLE,@object
	.size	_DATA_UNIT_LENGTH_TABLE, 56
_DATA_UNIT_LENGTH_TABLE:
	.long	128
	.long	256
	.long	512
	.long	1024
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.long	32768
	.long	65536
	.long	131072
	.long	262144
	.long	524288
	.long	1048576
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI0
	.byte	0x8c
	.uleb128 0x9
	.byte	0x8a
	.uleb128 0x7
	.byte	0x88
	.uleb128 0x5
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
	.byte	0x4
	.4byte	.LCFI4-.LFB29
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
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
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.file 5 "../bitbang.h"
	.section	.debug_info,info
	.4byte	0xd15
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../raw2wire.c"
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
	.4byte	0xf9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x2
	.byte	0xcd
	.4byte	0x13a
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
	.4byte	0x11a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0x4
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0x21f
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISABITS"
	.byte	0x3
	.2byte	0x6dd
	.4byte	0x19f
	.uleb128 0x4
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x2a2
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x3
	.2byte	0x6e3
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTABITS"
	.byte	0x3
	.2byte	0x6e8
	.4byte	0x231
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0x421
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x3
	.2byte	0x704
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISBBITS"
	.byte	0x3
	.2byte	0x714
	.4byte	0x2b4
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0x570
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x3
	.2byte	0x71a
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTBBITS"
	.byte	0x3
	.2byte	0x72a
	.4byte	0x433
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0x613
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x3
	.2byte	0x78e
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.2byte	0x799
	.4byte	0x681
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x3
	.2byte	0x79b
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x695
	.uleb128 0x9
	.4byte	0x582
	.uleb128 0x9
	.4byte	0x613
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0x6b6
	.uleb128 0xa
	.4byte	0x681
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0x695
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0x7c3
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x3
	.2byte	0x7fe
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
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
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1PCFGBITS"
	.byte	0x3
	.2byte	0x80b
	.4byte	0x6ca
	.uleb128 0xb
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0x8bc
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x4
	.byte	0x39
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x4
	.byte	0x3a
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x4
	.byte	0x3f
	.4byte	0xea
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"periodicService"
	.byte	0x4
	.byte	0x41
	.4byte	0xea
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"little_endian"
	.byte	0x4
	.byte	0x47
	.4byte	0xea
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"high_impedance"
	.byte	0x4
	.byte	0x4c
	.4byte	0xea
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"int16"
	.byte	0x4
	.byte	0x51
	.4byte	0xea
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"write_with_read"
	.byte	0x4
	.byte	0x56
	.4byte	0xea
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"command_error"
	.byte	0x4
	.byte	0x5b
	.4byte	0xea
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
	.4byte	0x7d7
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.byte	0x34
	.4byte	0x914
	.uleb128 0xf
	.asciz	"BITBANG_I2C_START_ONE_SHOT"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_I2C_RESTART"
	.sleb128 1
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x23
	.4byte	0x979
	.uleb128 0xf
	.asciz	"RAW2WIRE_MACRO_MENU"
	.sleb128 0
	.uleb128 0xf
	.asciz	"RAW2WIRE_MACRO_ISO_7816_3_ATR"
	.sleb128 1
	.uleb128 0xf
	.asciz	"RAW2WIRE_MACRO_ISO_7816_3_ATR_PARSE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.asciz	"raw2wire_macro_identifier_t"
	.byte	0x1
	.byte	0x27
	.4byte	0x914
	.uleb128 0x10
	.asciz	"trigger_atr"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x11
	.asciz	"read_atr_header"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0xa11
	.uleb128 0x12
	.asciz	"buffer"
	.byte	0x1
	.byte	0x99
	.4byte	0xa11
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x12
	.asciz	"length"
	.byte	0x1
	.byte	0xc7
	.4byte	0xea
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x14
	.asciz	"index"
	.byte	0x1
	.byte	0x9c
	.4byte	0x17f
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.4byte	0xea
	.4byte	0xa21
	.uleb128 0x16
	.4byte	0x11a
	.byte	0x3
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"raw2wire_read"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x10a
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.byte	0x1
	.asciz	"raw2wire_write"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0x10a
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0xa78
	.uleb128 0x19
	.asciz	"value"
	.byte	0x1
	.byte	0x40
	.4byte	0xa78
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x10a
	.uleb128 0x1b
	.byte	0x1
	.asciz	"raw2wire_start"
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.byte	0x1
	.asciz	"raw2wire_stop"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.byte	0x1
	.asciz	"raw2wire_print_settings"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.byte	0x1
	.asciz	"raw2wire_setup_prepare"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0xb3c
	.uleb128 0x12
	.asciz	"speed"
	.byte	0x1
	.byte	0x5c
	.4byte	0xc6
	.byte	0x1
	.byte	0x58
	.uleb128 0x12
	.asciz	"output"
	.byte	0x1
	.byte	0x5e
	.4byte	0xc6
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.asciz	"user_prompt"
	.byte	0x1
	.byte	0x60
	.4byte	0xb3c
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x1b
	.byte	0x1
	.asciz	"raw2wire_setup_execute"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.byte	0x1
	.asciz	"raw2wire_run_macro"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0xba4
	.uleb128 0x19
	.asciz	"macro_id"
	.byte	0x1
	.byte	0x78
	.4byte	0xa78
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"raw2wire_print_pins_state"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x6de
	.4byte	0xbdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x21f
	.uleb128 0x1d
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6e9
	.4byte	0xbee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x2a2
	.uleb128 0x1d
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x715
	.4byte	0xc01
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x421
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x72b
	.4byte	0xc14
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x570
	.uleb128 0x1d
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x7a3
	.4byte	0xc27
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x6b6
	.uleb128 0x1d
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x80c
	.4byte	0xc3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x7c3
	.uleb128 0x1f
	.4byte	.LASF6
	.byte	0x1
	.byte	0x29
	.4byte	0x8bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x12a
	.4byte	0xc5c
	.uleb128 0x16
	.4byte	0x11a
	.byte	0xd
	.byte	0x0
	.uleb128 0x12
	.asciz	"DATA_UNIT_LENGTH_TABLE"
	.byte	0x1
	.byte	0x2c
	.4byte	0xc80
	.byte	0x5
	.byte	0x3
	.4byte	_DATA_UNIT_LENGTH_TABLE
	.uleb128 0x1a
	.4byte	0xc4c
	.uleb128 0x15
	.4byte	0x12a
	.4byte	0xc95
	.uleb128 0x16
	.4byte	0x11a
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.asciz	"DATA_UNIT_TABLE"
	.byte	0x1
	.byte	0x30
	.4byte	0xcb2
	.byte	0x5
	.byte	0x3
	.4byte	_DATA_UNIT_TABLE
	.uleb128 0x1a
	.4byte	0xc85
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x6de
	.4byte	0xbdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6e9
	.4byte	0xbee
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x715
	.4byte	0xc01
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x72b
	.4byte	0xc14
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x7a3
	.4byte	0xc27
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x80c
	.4byte	0xc3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF6
	.byte	0x1
	.byte	0x29
	.4byte	0x8bc
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
	.uleb128 0x7
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
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xdf
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd19
	.4byte	0xa21
	.asciz	"raw2wire_read"
	.4byte	0xa42
	.asciz	"raw2wire_write"
	.4byte	0xa7d
	.asciz	"raw2wire_start"
	.4byte	0xa9b
	.asciz	"raw2wire_stop"
	.4byte	0xab8
	.asciz	"raw2wire_print_settings"
	.4byte	0xadf
	.asciz	"raw2wire_setup_prepare"
	.4byte	0xb45
	.asciz	"raw2wire_setup_execute"
	.4byte	0xb6b
	.asciz	"raw2wire_run_macro"
	.4byte	0xba4
	.asciz	"raw2wire_print_pins_state"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x13a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd19
	.4byte	0xea
	.asciz	"uint8_t"
	.4byte	0x10a
	.asciz	"uint16_t"
	.4byte	0x12a
	.asciz	"uint32_t"
	.4byte	0x17f
	.asciz	"size_t"
	.4byte	0x19f
	.asciz	"tagTRISABITS"
	.4byte	0x21f
	.asciz	"TRISABITS"
	.4byte	0x231
	.asciz	"tagPORTABITS"
	.4byte	0x2a2
	.asciz	"PORTABITS"
	.4byte	0x2b4
	.asciz	"tagTRISBBITS"
	.4byte	0x421
	.asciz	"TRISBBITS"
	.4byte	0x433
	.asciz	"tagPORTBBITS"
	.4byte	0x570
	.asciz	"PORTBBITS"
	.4byte	0x695
	.asciz	"tagAD1CON1BITS"
	.4byte	0x6b6
	.asciz	"AD1CON1BITS"
	.4byte	0x6ca
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x7c3
	.asciz	"AD1PCFGBITS"
	.4byte	0x8bc
	.asciz	"mode_configuration_t"
	.4byte	0x979
	.asciz	"raw2wire_macro_identifier_t"
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
	.asciz	"AD1CON1bits"
.LASF6:
	.asciz	"mode_configuration"
.LASF1:
	.asciz	"PORTAbits"
.LASF3:
	.asciz	"PORTBbits"
.LASF5:
	.asciz	"AD1PCFGbits"
.LASF0:
	.asciz	"TRISAbits"
.LASF2:
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
