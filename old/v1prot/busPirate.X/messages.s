	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\messages.c"
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
	.global	_bp_message_write_buffer	; export
	.type	_bp_message_write_buffer,@function
_bp_message_write_buffer:
.LFB24:
	.file 1 "../messages.c"
	.loc 1 22 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov.d	w12,[w15++]
.LCFI2:
	mov	w14,[w15++]
.LCFI3:
	mov.d	w0,w8
	.loc 1 23 0
	mov	#_TBLPAG,w12
	mov.b	[w12],w12
	.loc 1 25 0
	clr.b	w11
	.loc 1 24 0
	mov.b	w11,w10
	.loc 1 37 0
	mov.b	#2,w13
	.loc 1 32 0
	mov.b	#1,w14
.L7:
	.loc 1 28 0
	lsr	w9,#0,w0
	mov	#0,w1
	mov.b	WREG,_TBLPAG
	.loc 1 29 0
	sub.b	w10,#1,[w15]
	.set ___BP___,29
	bra	z,.L4
	.set ___BP___,50
	bra	ltu,.L3
	sub.b	w10,#2,[w15]
	.set ___BP___,71
	bra	nz,.L2
	bra	.L8
.L3:
	.loc 1 31 0
	tblrdl.w	[w8], w11
	.loc 1 32 0
	mov.b	w14,w10
	.loc 1 33 0
	bra	.L2
.L4:
	.loc 1 36 0
	tblrdl.w	[w8], w11
	lsr	w11,#8,w11
	.loc 1 37 0
	mov.b	w13,w10
	.loc 1 38 0
	bra	.L2
.L8:
	.loc 1 41 0
	tblrdh.w	[w8], w11
	.loc 1 42 0
	add	w8,#2,w8
	addc	w9,#0,w9
	.loc 1 43 0
	clr.b	w10
.L2:
	.loc 1 47 0
	cp0.b	w11
	.set ___BP___,71
	bra	z,.L6
	.loc 1 48 0
	mov.b	w11,w0
	call	_user_serial_transmit_character
	bra	.L7
.L6:
	.loc 1 52 0
	mov.b	w12,w1
	mov	#_TBLPAG,w0
	mov.b	w1,[w0]
	.loc 1 53 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE24:
	.size	_bp_message_write_buffer, .-_bp_message_write_buffer
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.global	_bp_message_write_line	; export
	.type	_bp_message_write_line,@function
_bp_message_write_line:
.LFB25:
	.loc 1 55 0
	.set ___PA___,1
	.loc 1 56 0
	call	_bp_message_write_buffer
	.loc 1 57 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 58 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_bp_message_write_line, .-_bp_message_write_line
	.align	2
	.global	_print_help	; export
	.type	_print_help,@function
_print_help:
.LFB26:
	.loc 1 61 0
	.set ___PA___,1
	.loc 1 62 0
	mov	#tbloffset(_HLP1000_str),w0
	mov	#tblpage(_HLP1000_str),w1
	call	_bp_message_write_line
	.loc 1 63 0
	mov	#tbloffset(_HLP1001_str),w0
	mov	#tblpage(_HLP1001_str),w1
	call	_bp_message_write_line
	.loc 1 64 0
	mov	#tbloffset(_HLP1002_str),w0
	mov	#tblpage(_HLP1002_str),w1
	call	_bp_message_write_line
	.loc 1 65 0
	mov	#tbloffset(_HLP1003_str),w0
	mov	#tblpage(_HLP1003_str),w1
	call	_bp_message_write_line
	.loc 1 66 0
	mov	#tbloffset(_HLP1004_str),w0
	mov	#tblpage(_HLP1004_str),w1
	call	_bp_message_write_line
	.loc 1 67 0
	mov	#tbloffset(_HLP1005_str),w0
	mov	#tblpage(_HLP1005_str),w1
	call	_bp_message_write_line
	.loc 1 68 0
	mov	#tbloffset(_HLP1006_str),w0
	mov	#tblpage(_HLP1006_str),w1
	call	_bp_message_write_line
	.loc 1 69 0
	mov	#tbloffset(_HLP1007_str),w0
	mov	#tblpage(_HLP1007_str),w1
	call	_bp_message_write_line
	.loc 1 70 0
	mov	#tbloffset(_HLP1008_str),w0
	mov	#tblpage(_HLP1008_str),w1
	call	_bp_message_write_line
	.loc 1 71 0
	mov	#tbloffset(_HLP1009_str),w0
	mov	#tblpage(_HLP1009_str),w1
	call	_bp_message_write_line
	.loc 1 72 0
	mov	#tbloffset(_HLP1010_str),w0
	mov	#tblpage(_HLP1010_str),w1
	call	_bp_message_write_line
	.loc 1 73 0
	mov	#tbloffset(_HLP1011_str),w0
	mov	#tblpage(_HLP1011_str),w1
	call	_bp_message_write_line
	.loc 1 74 0
	mov	#tbloffset(_HLP1012_str),w0
	mov	#tblpage(_HLP1012_str),w1
	call	_bp_message_write_line
	.loc 1 75 0
	mov	#tbloffset(_HLP1013_str),w0
	mov	#tblpage(_HLP1013_str),w1
	call	_bp_message_write_line
	.loc 1 76 0
	mov	#tbloffset(_HLP1014_str),w0
	mov	#tblpage(_HLP1014_str),w1
	call	_bp_message_write_line
	.loc 1 77 0
	mov	#tbloffset(_HLP1015_str),w0
	mov	#tblpage(_HLP1015_str),w1
	call	_bp_message_write_line
	.loc 1 78 0
	mov	#tbloffset(_HLP1016_str),w0
	mov	#tblpage(_HLP1016_str),w1
	call	_bp_message_write_line
	.loc 1 79 0
	mov	#tbloffset(_HLP1017_str),w0
	mov	#tblpage(_HLP1017_str),w1
	call	_bp_message_write_line
	.loc 1 80 0
	mov	#tbloffset(_HLP1018_str),w0
	mov	#tblpage(_HLP1018_str),w1
	call	_bp_message_write_line
	.loc 1 81 0
	mov	#tbloffset(_HLP1019_str),w0
	mov	#tblpage(_HLP1019_str),w1
	call	_bp_message_write_line
	.loc 1 82 0
	mov	#tbloffset(_HLP1020_str),w0
	mov	#tblpage(_HLP1020_str),w1
	call	_bp_message_write_line
	.loc 1 83 0
	mov	#tbloffset(_HLP1021_str),w0
	mov	#tblpage(_HLP1021_str),w1
	call	_bp_message_write_line
	.loc 1 84 0
	mov	#tbloffset(_HLP1022_str),w0
	mov	#tblpage(_HLP1022_str),w1
	call	_bp_message_write_line
	.loc 1 85 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_print_help, .-_print_help
	.align	2
	.global	_agree	; export
	.type	_agree,@function
_agree:
.LFB27:
	.loc 1 87 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI4:
	.loc 1 91 0
	mov	#tbloffset(_BPMSG1135_str),w0
	mov	#tblpage(_BPMSG1135_str),w1
	call	_bp_message_write_buffer
	.loc 1 94 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 97 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	.loc 1 98 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 101 0
	and	#223,w8
	xor	#89,w8
	dec	w8,w0
	lsr	w0,#15,w0
	.loc 1 102 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_agree, .-_agree
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
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE6:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.section	.debug_info,info
	.4byte	0x9a4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../messages.c"
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
	.byte	0x2
	.byte	0xbb
	.4byte	0x134
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0xcd
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
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0x201
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.4byte	0x145
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
	.byte	0x1
	.asciz	"bp_message_write_buffer"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x82a
	.uleb128 0xc
	.asciz	"strptr"
	.byte	0x1
	.byte	0x16
	.4byte	0xe4
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"tblpag_prev"
	.byte	0x1
	.byte	0x17
	.4byte	0x125
	.byte	0x1
	.byte	0x5c
	.uleb128 0xd
	.asciz	"index"
	.byte	0x1
	.byte	0x18
	.4byte	0x125
	.byte	0x1
	.byte	0x5a
	.uleb128 0xd
	.asciz	"ch"
	.byte	0x1
	.byte	0x19
	.4byte	0x16f
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.asciz	"bp_message_write_line"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x869
	.uleb128 0xc
	.asciz	"strptr"
	.byte	0x1
	.byte	0x37
	.4byte	0xe4
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.asciz	"print_help"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"agree"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x8b3
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x8b3
	.uleb128 0xd
	.asciz	"response"
	.byte	0x1
	.byte	0x58
	.4byte	0x16f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x10
	.asciz	"TBLPAG"
	.byte	0x3
	.byte	0x5e
	.4byte	0x8cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x125
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x6de
	.4byte	0x8df
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x201
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x8f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x284
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x715
	.4byte	0x905
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x403
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x72b
	.4byte	0x918
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x552
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x92b
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x698
	.uleb128 0x12
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x80c
	.4byte	0x93e
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x7a5
	.uleb128 0x10
	.asciz	"TBLPAG"
	.byte	0x3
	.byte	0x5e
	.4byte	0x8cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x6de
	.4byte	0x8df
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x8f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x715
	.4byte	0x905
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x72b
	.4byte	0x918
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x92b
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x80c
	.4byte	0x93e
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x5d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9a8
	.4byte	0x7b9
	.asciz	"bp_message_write_buffer"
	.4byte	0x82a
	.asciz	"bp_message_write_line"
	.4byte	0x869
	.asciz	"print_help"
	.4byte	0x883
	.asciz	"agree"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xe9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9a8
	.4byte	0x125
	.asciz	"uint8_t"
	.4byte	0x145
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