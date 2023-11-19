	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\raw3wire.c"
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
	.type	_setup_raw3wire,@function
_setup_raw3wire:
.LFB33:
	.file 1 "../raw3wire.c"
	.loc 1 129 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI0:
	mov.b	w1,w8
	.loc 1 130 0
	mov	#_mode_configuration+2,w1
	and.b	w0,#1,w0
	sl	w0,#6,w0
	mov.b	[w1],w2
	bclr.b	w2,#6
	ior.b	w2,w0,[w1]
	.loc 1 131 0
	ze	w8,w0
	dec	w0,w0
	lsr	w0,#15,w0
	call	_bitbang_set_cs
	.loc 1 132 0
	cp0.b	w8
	.set ___BP___,61
	bra	z,.L1
	.loc 1 133 0
	mov.b	#47,w0
	call	_user_serial_transmit_character
.L1:
	.loc 1 135 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_setup_raw3wire, .-_setup_raw3wire
	.align	2
	.global	_raw3wire_read	; export
	.type	_raw3wire_read,@function
_raw3wire_read:
.LFB24:
	.loc 1 50 0
	.set ___PA___,1
	.loc 1 50 0
	mov	#255,w0
	call	_bitbang_read_with_write
	return	
	.set ___PA___,0
.LFE24:
	.size	_raw3wire_read, .-_raw3wire_read
	.align	2
	.global	_raw3wire_write	; export
	.type	_raw3wire_write,@function
_raw3wire_write:
.LFB25:
	.loc 1 52 0
	.set ___PA___,1
	.loc 1 55 0
	call	_bitbang_read_with_write
	.loc 1 56 0
	mov	#_mode_configuration+2,w1
	mov.b	#64,w2
	and.b	w2,[w1],w1
	.set ___BP___,61
	bra	nz,.L5
	clr	w0
.L5:
	.loc 1 57 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_raw3wire_write, .-_raw3wire_write
	.align	2
	.global	_raw3wire_start_with_read	; export
	.type	_raw3wire_start_with_read,@function
_raw3wire_start_with_read:
.LFB26:
	.loc 1 59 0
	.set ___PA___,1
	.loc 1 60 0
	mov	#_cs_line,w0
	mov.b	[w0],w1
	btg.b	w1,#0
	mov.b	#1,w0
	call	_setup_raw3wire
	.loc 1 61 0
	mov	#tbloffset(_MSG_SPI_CS_ENABLED_str),w0
	mov	#tblpage(_MSG_SPI_CS_ENABLED_str),w1
	call	_bp_message_write_line
	.loc 1 62 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_raw3wire_start_with_read, .-_raw3wire_start_with_read
	.align	2
	.global	_raw3wire_start	; export
	.type	_raw3wire_start,@function
_raw3wire_start:
.LFB27:
	.loc 1 63 0
	.set ___PA___,1
	.loc 1 64 0
	mov	#_cs_line,w0
	mov.b	[w0],w1
	btg.b	w1,#0
	clr.b	w0
	call	_setup_raw3wire
	.loc 1 65 0
	mov	#tbloffset(_MSG_SPI_CS_ENABLED_str),w0
	mov	#tblpage(_MSG_SPI_CS_ENABLED_str),w1
	call	_bp_message_write_line
	.loc 1 66 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_raw3wire_start, .-_raw3wire_start
	.align	2
	.global	_raw3wire_stop	; export
	.type	_raw3wire_stop,@function
_raw3wire_stop:
.LFB28:
	.loc 1 68 0
	.set ___PA___,1
	.loc 1 69 0
	mov	#_cs_line,w0
	mov.b	[w0],w1
	clr.b	w0
	call	_setup_raw3wire
	.loc 1 70 0
	mov	#tbloffset(_MSG_SPI_CS_DISABLED_str),w0
	mov	#tblpage(_MSG_SPI_CS_DISABLED_str),w1
	call	_bp_message_write_line
	.loc 1 71 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_raw3wire_stop, .-_raw3wire_stop
	.align	2
	.global	_raw3wire_print_settings	; export
	.type	_raw3wire_print_settings,@function
_raw3wire_print_settings:
.LFB29:
	.loc 1 73 0
	.set ___PA___,1
	.loc 1 74 0
	mov	#tbloffset(_MSG_RAW3WIRE_MODE_HEADER_str),w0
	mov	#tblpage(_MSG_RAW3WIRE_MODE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 75 0
	mov	#_mode_configuration,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 76 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 77 0
	mov	#_cs_line,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 78 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 79 0
	mov	#_mode_configuration+2,w0
	ze	[w0],w0
	lsr	w0,#4,w0
	and.b	w0,#1,w0
	call	_bp_write_dec_byte
	.loc 1 80 0
	mov	#tbloffset(_MSG_MODE_HEADER_END_str),w0
	mov	#tblpage(_MSG_MODE_HEADER_END_str),w1
	call	_bp_message_write_line
	.loc 1 81 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_raw3wire_print_settings, .-_raw3wire_print_settings
	.align	2
	.global	_raw3wire_setup_prepare	; export
	.type	_raw3wire_setup_prepare,@function
_raw3wire_setup_prepare:
.LFB30:
	.loc 1 83 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	.loc 1 89 0
	call	_consumewhitechars
	.loc 1 90 0
	call	_getint
	mov	w0,w8
	.loc 1 91 0
	call	_consumewhitechars
	.loc 1 92 0
	call	_getint
	mov	w0,w9
	.loc 1 93 0
	call	_consumewhitechars
	.loc 1 94 0
	call	_getint
	.loc 1 96 0
	dec	w8,w1
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L11
	.loc 1 97 0
	dec	w9,w1
	.loc 1 96 0
	sub	w1,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L11
	.loc 1 98 0
	dec	w0,w1
	.loc 1 100 0
	sub	w1,#1,[w15]
	.set ___BP___,100
	bra	leu,.L12
.L11:
	.loc 1 101 0
	mov	#tbloffset(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 102 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	.loc 1 103 0
	mov	#tbloffset(_MSG_SPI_CS_MODE_PROMPT_str),w0
	mov	#tblpage(_MSG_SPI_CS_MODE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 104 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w2,w0
	call	_getnumber
	dec	w0,w1
	btsc	w1,#15
	neg	w1,w1
	neg	w1,w1
	lsr	w1,#15,w1
	mov	#_cs_line,w0
	mov.b	w1,[w0]
	.loc 1 105 0
	mov	#tbloffset(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w0
	mov	#tblpage(_MSG_PIN_OUTPUT_TYPE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 106 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	btg	w0,#0
	btsc	w0,#15
	neg	w0,w0
	dec	w0,w0
	mov	#_mode_configuration+2,w1
	lsr	w0,#15,w0
	sl	w0,#4,w0
	mov.b	#111,w3
	and.b	w3,[w1],w2
	.loc 1 107 0
	ior.b	w2,w0,[w1]
	bra	.L13
.L12:
	.loc 1 109 0
	mov	#_mode_configuration,w1
	dec.b	w8,[w1]
	.loc 1 110 0
	btg	w9,#0
	btsc	w9,#15
	neg	w9,w9
	neg	w9,w9
	lsr	w9,#15,w9
	mov	#_cs_line,w1
	mov.b	w9,[w1]
	.loc 1 111 0
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
	.loc 1 112 0
	call	_raw3wire_print_settings
.L13:
	.loc 1 115 0
	mov	#_mode_configuration+2,w0
	.loc 1 116 0
	mov.b	#-97,w1
	and.b	w1,[w0],[w0]
	.loc 1 117 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE30:
	.size	_raw3wire_setup_prepare, .-_raw3wire_setup_prepare
	.align	2
	.global	_raw3wire_setup_execute	; export
	.type	_raw3wire_setup_execute,@function
_raw3wire_setup_execute:
.LFB31:
	.loc 1 119 0
	.set ___PA___,1
	.loc 1 120 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#3,w0
	call	_bitbang_setup
	.loc 1 121 0
	bclr.b	_TRISBbits+1,#1
	.loc 1 122 0
	bclr.b	_TRISBbits+1,#0
	.loc 1 123 0
	bset.b	_TRISBbits,#7
	.loc 1 124 0
	mov	#_cs_line,w0
	mov.b	[w0],w0
	call	_bitbang_set_cs
	.loc 1 125 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_raw3wire_setup_execute, .-_raw3wire_setup_execute
	.align	2
	.global	_raw3wire_print_pins_state	; export
	.type	_raw3wire_print_pins_state,@function
_raw3wire_print_pins_state:
.LFB32:
	.loc 1 127 0
	.set ___PA___,1
	.loc 1 127 0
	mov	#tbloffset(_MSG_SPI_PINS_STATE_str),w0
	mov	#tblpage(_MSG_SPI_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE32:
	.size	_raw3wire_print_pins_state, .-_raw3wire_print_pins_state
	.section	.bss,bss
	.type	_cs_line,@object
	.size	_cs_line, 1
_cs_line:
	.skip	1
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
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI1-.LFB30
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE18:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.section	.debug_info,info
	.4byte	0xba9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../raw3wire.c"
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
	.4byte	0x201
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
	.4byte	0x181
	.uleb128 0x4
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x284
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
	.4byte	0x213
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0x403
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
	.4byte	0x296
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0x552
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
	.4byte	0x415
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0x5f5
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
	.4byte	0x663
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
	.4byte	0x677
	.uleb128 0x9
	.4byte	0x564
	.uleb128 0x9
	.4byte	0x5f5
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0x698
	.uleb128 0xa
	.4byte	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0x677
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0x7a5
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
	.4byte	0x6ac
	.uleb128 0xb
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0x892
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
	.uleb128 0xe
	.4byte	.LASF0
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
	.4byte	0x7b9
	.uleb128 0xf
	.asciz	"setup_raw3wire"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x8f4
	.uleb128 0x10
	.4byte	.LASF0
	.byte	0x1
	.byte	0x81
	.4byte	0x8f4
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.asciz	"cs_line_state"
	.byte	0x1
	.byte	0x81
	.4byte	0x8f4
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x12
	.4byte	0x8f9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x13
	.byte	0x1
	.asciz	"raw3wire_read"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x10a
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.byte	0x1
	.asciz	"raw3wire_write"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0x10a
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x967
	.uleb128 0x11
	.asciz	"value"
	.byte	0x1
	.byte	0x34
	.4byte	0x967
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.asciz	"read"
	.byte	0x1
	.byte	0x35
	.4byte	0x10a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x12
	.4byte	0x10a
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_start_with_read"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_start"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_stop"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_print_settings"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"raw3wire_setup_prepare"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0xa68
	.uleb128 0x18
	.asciz	"user_prompt"
	.byte	0x1
	.byte	0x54
	.4byte	0x8f9
	.uleb128 0x15
	.asciz	"speed"
	.byte	0x1
	.byte	0x55
	.4byte	0xc6
	.byte	0x1
	.byte	0x58
	.uleb128 0x15
	.asciz	"output"
	.byte	0x1
	.byte	0x56
	.4byte	0xc6
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.asciz	"cs_line_low"
	.byte	0x1
	.byte	0x57
	.4byte	0xc6
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_setup_execute"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.byte	0x1
	.asciz	"raw3wire_print_pins_state"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x19
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6de
	.4byte	0xac5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x201
	.uleb128 0x19
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x6e9
	.4byte	0xad8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x284
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x715
	.4byte	0xaeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x403
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x72b
	.4byte	0xafe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x552
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x7a3
	.4byte	0xb11
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x698
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x80c
	.4byte	0xb24
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x7a5
	.uleb128 0x1b
	.4byte	.LASF7
	.byte	0x1
	.byte	0x20
	.4byte	0x892
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.asciz	"cs_line"
	.byte	0x1
	.byte	0x26
	.4byte	0x8f9
	.byte	0x5
	.byte	0x3
	.4byte	_cs_line
	.uleb128 0x19
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6de
	.4byte	0xac5
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x6e9
	.4byte	0xad8
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x715
	.4byte	0xaeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x72b
	.4byte	0xafe
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x7a3
	.4byte	0xb11
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x80c
	.4byte	0xb24
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF7
	.byte	0x1
	.byte	0x20
	.4byte	0x892
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.4byte	0xe5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbad
	.4byte	0x902
	.asciz	"raw3wire_read"
	.4byte	0x923
	.asciz	"raw3wire_write"
	.4byte	0x96c
	.asciz	"raw3wire_start_with_read"
	.4byte	0x994
	.asciz	"raw3wire_start"
	.4byte	0x9b2
	.asciz	"raw3wire_stop"
	.4byte	0x9cf
	.asciz	"raw3wire_print_settings"
	.4byte	0x9f6
	.asciz	"raw3wire_setup_prepare"
	.4byte	0xa68
	.asciz	"raw3wire_setup_execute"
	.4byte	0xa8e
	.asciz	"raw3wire_print_pins_state"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x102
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbad
	.4byte	0xea
	.asciz	"uint8_t"
	.4byte	0x10a
	.asciz	"uint16_t"
	.4byte	0x181
	.asciz	"tagTRISABITS"
	.4byte	0x201
	.asciz	"TRISABITS"
	.4byte	0x213
	.asciz	"tagPORTABITS"
	.4byte	0x284
	.asciz	"PORTABITS"
	.4byte	0x296
	.asciz	"tagTRISBBITS"
	.4byte	0x403
	.asciz	"TRISBBITS"
	.4byte	0x415
	.asciz	"tagPORTBBITS"
	.4byte	0x552
	.asciz	"PORTBBITS"
	.4byte	0x677
	.asciz	"tagAD1CON1BITS"
	.4byte	0x698
	.asciz	"AD1CON1BITS"
	.4byte	0x6ac
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x7a5
	.asciz	"AD1PCFGBITS"
	.4byte	0x892
	.asciz	"mode_configuration_t"
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
.LASF5:
	.asciz	"AD1CON1bits"
.LASF7:
	.asciz	"mode_configuration"
.LASF2:
	.asciz	"PORTAbits"
.LASF0:
	.asciz	"write_with_read"
.LASF4:
	.asciz	"PORTBbits"
.LASF6:
	.asciz	"AD1PCFGbits"
.LASF1:
	.asciz	"TRISAbits"
.LASF3:
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