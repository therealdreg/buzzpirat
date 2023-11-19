	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\binary_io.c"
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
	.type	_send_binary_io_mode_identifier,@function
_send_binary_io_mode_identifier:
.LFB24:
	.file 1 "../binary_io.c"
	.loc 1 360 0
	.set ___PA___,1
	.loc 1 360 0
	mov	#tbloffset(_MSG_BBIO_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_BBIO_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	return	
	.set ___PA___,0
.LFE24:
	.size	_send_binary_io_mode_identifier, .-_send_binary_io_mode_identifier
	.align	2
	.type	_pic24_send_six_payload,@function
_pic24_send_six_payload:
.LFB38:
	.loc 1 783 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov	w0,w9
	.loc 1 785 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 786 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 787 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 788 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 791 0
	mov	w9,w8
	ze	[w9],w0
	call	_bitbang_write_value
	.loc 1 792 0
	ze	[++w8],w0
	call	_bitbang_write_value
	.loc 1 793 0
	mov.b	[w8+1],w0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 794 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE38:
	.size	_pic24_send_six_payload, .-_pic24_send_six_payload
	.align	2
	.type	_pic424_write,@function
_pic424_write:
.LFB40:
	.loc 1 800 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI1:
	mov	w10,[w15++]
.LCFI2:
	mov	w1,w10
	.loc 1 801 0
	call	_pic24_send_six_payload
.LBB183:
	.loc 1 804 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L3
	clr	w8
.LBB184:
.LBB185:
	.loc 1 797 0
	mov	#_PIC24_NOP_PAYLOAD,w9
.L5:
	mov	w9,w0
	call	_pic24_send_six_payload
.LBE185:
.LBE184:
	.loc 1 804 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L5
.L3:
.LBE183:
	.loc 1 807 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE40:
	.size	_pic424_write, .-_pic424_write
	.align	2
	.type	_send_bits,@function
_send_bits:
.LFB33:
	.loc 1 729 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	mov	w10,[w15++]
.LCFI4:
	mov	w1,w10
.LBB186:
	.loc 1 732 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L7
	.loc 1 730 0
	mov.b	w0,w9
	.loc 1 732 0
	clr	w8
.L9:
	.loc 1 733 0
	ze	w9,w9
	and	w9,#1,w0
	call	_bitbang_write_bit
	.loc 1 734 0
	lsr	w9,w9
	.loc 1 732 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L9
.L7:
.LBE186:
	.loc 1 736 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_send_bits, .-_send_bits
	.align	2
	.type	_pic424_read,@function
_pic424_read:
.LFB41:
	.loc 1 809 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI5:
	.loc 1 811 0
	mov.b	#1,w0
	call	_bitbang_write_bit
	.loc 1 812 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 813 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 814 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 816 0
	clr	w0
	call	_bitbang_write_value
	.loc 1 818 0
	call	_bitbang_read_value
	mov	w0,w8
	.loc 1 819 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 820 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
.LBB187:
.LBB188:
	.loc 1 797 0
	mov	#_PIC24_NOP_PAYLOAD,w0
	call	_pic24_send_six_payload
.LBE188:
.LBE187:
.LBB189:
.LBB190:
	mov	#_PIC24_NOP_PAYLOAD,w0
	call	_pic24_send_six_payload
.LBE190:
.LBE189:
	.loc 1 825 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE41:
	.size	_pic424_read, .-_pic424_read
	.align	2
	.type	_pic416_write,@function
_pic416_write:
.LFB37:
	.loc 1 763 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI6:
	mov.d	w10,[w15++]
.LCFI7:
	mov	w12,[w15++]
.LCFI8:
	mov.b	w1,w11
	mov.b	w2,w12
	.loc 1 764 0
	ze	w0,w10
	lsr	w10,#6,w10
	.loc 1 767 0
	clr	w8
	bra	.L19
.L16:
.LBB191:
	.loc 1 768 0
	sub	w8,#3,[w15]
	.set ___BP___,34
	bra	nz,.L19
	cp0.b	w10
	.set ___BP___,71
	bra	z,.L19
	.loc 1 769 0
	mov.b	#1,w0
	call	_bitbang_set_clk
	.loc 1 770 0
	ze	w10,w0
	call	_bp_delay_ms
	.loc 1 771 0
	clr.b	w0
	call	_bitbang_set_clk
	bra	.L15
.L19:
	.loc 1 775 0
	ze	w0,w9
	and	w9,#1,w0
	call	_bitbang_write_bit
	.loc 1 776 0
	lsr	w9,w0
	.loc 1 767 0
	inc	w8,w8
	sub	w8,#4,[w15]
	.set ___BP___,93
	bra	nz,.L16
.L15:
.LBE191:
	.loc 1 779 0
	ze	w11,w0
	call	_bitbang_write_value
	.loc 1 780 0
	ze	w12,w0
	call	_bitbang_write_value
	.loc 1 781 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE37:
	.size	_pic416_write, .-_pic416_write
	.align	2
	.type	_binary_io_self_test,@function
_binary_io_self_test:
.LFB30:
	.loc 1 560 0
	.set ___PA___,1
	lnk	#2
.LCFI9:
	mov.d	w8,[w15++]
.LCFI10:
	.loc 1 561 0
	clr	w1
	mov	w1,[w15-6]
	.loc 1 563 0
	mov.b	w0,w1
	clr.b	w0
	call	_perform_selftest
	mov.b	w0,w8
.LBB192:
.LBB193:
	.file 2 "../hardware.h"
	.loc 2 140 0
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L21
.LBB194:
.LBB195:
	.loc 2 130 0
	bclr.b	_TRISAbits,#1
	.loc 2 131 0
	bset.b	_PORTAbits,#1
	bra	.L22
.L21:
.LBE195:
.LBE194:
.LBB196:
.LBB197:
	.loc 2 135 0
	bclr.b	_TRISAbits,#1
	.loc 2 136 0
	bclr.b	_PORTAbits,#1
.L22:
.LBE197:
.LBE196:
.LBE193:
.LBE192:
	.loc 1 565 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	.loc 1 580 0
	setm	w9
.L30:
	.loc 1 568 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L23
.LBB198:
	.loc 1 569 0
	call	_user_serial_read_byte
	.loc 1 570 0
	add.b	w0,#1,[w15]
	.set ___BP___,4
	bra	z,.L24
	.loc 1 571 0
	add.b	w0,w8,w0
	call	_user_serial_transmit_character
	bra	.L23
.L24:
	.loc 1 573 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE198:
	.loc 1 587 0
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.L23:
	.loc 1 578 0
	cp0.b	w8
	.set ___BP___,86
	bra	nz,.L30
	.loc 1 579 0
	mov	[w15-6],w0
	cp0	w0
	.set ___BP___,50
	bra	nz,.L26
	.loc 1 580 0
	mov	w9,[w15-6]
.LBB199:
.LBB200:
	.loc 2 148 0
	bclr.b	_TRISAbits,#1
	.loc 2 149 0
	lsr	_PORTAbits,WREG
	com	w0,w0
	and	w0,#1,w0
	add	w0,w0,w0
	mov	_PORTAbits,w1
	bclr	w1,#1
	ior	w0,w1,w1
	mov	w1,_PORTAbits
.L26:
.LBE200:
.LBE199:
	.loc 1 584 0
	mov	[w15-6],w1
	dec	w1,w1
	mov	w1,[w15-6]
	bra	.L30
.LFE30:
	.size	_binary_io_self_test, .-_binary_io_self_test
	.align	2
	.type	_read_and_transmit_adc_measurement,@function
_read_and_transmit_adc_measurement:
.LFB56:
	.loc 1 1260 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI11:
	.loc 1 1261 0
	mov	#12,w0
	call	_bp_read_adc
	mov	w0,w8
	.loc 1 1262 0
	lsr	w8,#8,w0
	call	_user_serial_transmit_character
	.loc 1 1263 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	.loc 1 1264 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE56:
	.size	_read_and_transmit_adc_measurement, .-_read_and_transmit_adc_measurement
	.align	2
	.global	_bitbang_pin_direction_set	; export
	.type	_bitbang_pin_direction_set,@function
_bitbang_pin_direction_set:
.LFB28:
	.loc 1 511 0
	.set ___PA___,1
	.loc 1 515 0
	ze	w0,w1
	lsr	w1,#4,w2
	and	w2,#1,w2
	sl	w2,#10,w2
	mov	_TRISBbits,w3
	bclr	w3,#10
	ior	w2,w3,w3
	mov	w3,_TRISBbits
	.loc 1 516 0
	sl	w1,#6,w2
	and	#512,w2
	mov	_TRISBbits,w3
	bclr	w3,#9
	ior	w2,w3,w3
	mov	w3,_TRISBbits
	.loc 1 517 0
	sl	w1,#6,w2
	and	#256,w2
	mov	_TRISBbits,w3
	bclr	w3,#8
	ior	w2,w3,w3
	mov	w3,_TRISBbits
	.loc 1 518 0
	sl	w1,#6,w1
	and	#128,w1
	mov	_TRISBbits,w2
	bclr	w2,#7
	ior	w1,w2,w2
	mov	w2,_TRISBbits
	.loc 1 519 0
	and	w0,#1,w0
	sl	w0,#6,w0
	mov	_TRISBbits,w1
	bclr	w1,#6
	ior	w0,w1,w1
	mov	w1,_TRISBbits
	.loc 1 523 0
	mov	#5,w0
	call	_bp_delay_us
	.loc 1 527 0
	clr.b	w3
	btst.b	_PORTBbits+10/8,#10%8
	.set ___BP___,50
	bra	z,.L33
	mov.b	#16,w3
.L33:
	clr.b	w2
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,50
	bra	z,.L34
	mov.b	#8,w2
.L34:
	clr.b	w1
	btst.b	_PORTBbits+8/8,#8%8
	.set ___BP___,50
	bra	z,.L35
	mov.b	#4,w1
.L35:
	clr.b	w0
	btst.b	_PORTBbits,#7
	.set ___BP___,61
	bra	z,.L36
	mov.b	#2,w0
.L36:
	.loc 1 531 0
	mov	#64,w4
	mov	_PORTBbits,w5
	and	w4,w5,w4
	neg	w4,w4
	lsr	w4,#15,w4
	.loc 1 527 0
	ior.b	w3,w4,w3
	ior.b	w3,w2,w2
	ior.b	w2,w1,w1
	ior.b	w1,w0,w0
	.loc 1 532 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_bitbang_pin_direction_set, .-_bitbang_pin_direction_set
	.align	2
	.global	_bitbang_pin_state_set	; export
	.type	_bitbang_pin_state_set,@function
_bitbang_pin_state_set:
.LFB29:
	.loc 1 534 0
	.set ___PA___,1
	.loc 1 538 0
	ze	w0,w1
.LBB201:
.LBB202:
	.loc 2 105 0
	btst	w1,#6
	.set ___BP___,50
	bra	z,.L42
.LBB203:
.LBB204:
	.loc 2 91 0
	bclr.b	_TRISAbits,#0
	.loc 2 92 0
	bset.b	_PORTAbits,#0
	bra	.L43
.L42:
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.L43:
.LBE206:
.LBE205:
.LBE202:
.LBE201:
.LBB207:
.LBB208:
	.loc 2 83 0
	btst	w1,#5
	.set ___BP___,50
	bra	z,.L44
.LBB209:
.LBB210:
	.loc 2 73 0
	bset.b	_TRISBbits+1,#3
	.loc 2 74 0
	bclr.b	_PORTBbits+1,#3
	bra	.L45
.L44:
.LBE210:
.LBE209:
.LBB211:
.LBB212:
	.loc 2 78 0
	bclr.b	_PORTBbits+1,#3
	.loc 2 79 0
	bclr.b	_TRISBbits+1,#3
.L45:
.LBE212:
.LBE211:
.LBE208:
.LBE207:
	.loc 1 541 0
	lsr	w1,#4,w2
	and	w2,#1,w2
	sl	w2,#10,w2
	mov	_PORTBbits,w3
	bclr	w3,#10
	ior	w2,w3,w3
	mov	w3,_PORTBbits
	.loc 1 542 0
	sl	w1,#6,w2
	and	#512,w2
	mov	_PORTBbits,w3
	bclr	w3,#9
	ior	w2,w3,w3
	mov	w3,_PORTBbits
	.loc 1 543 0
	sl	w1,#6,w2
	and	#256,w2
	mov	_PORTBbits,w3
	bclr	w3,#8
	ior	w2,w3,w3
	mov	w3,_PORTBbits
	.loc 1 544 0
	sl	w1,#6,w1
	and	#128,w1
	mov	_PORTBbits,w2
	bclr	w2,#7
	ior	w1,w2,w2
	mov	w2,_PORTBbits
	.loc 1 545 0
	and	w0,#1,w0
	sl	w0,#6,w0
	mov	_PORTBbits,w1
	bclr	w1,#6
	ior	w0,w1,w1
	mov	w1,_PORTBbits
	.loc 1 549 0
	mov	#5,w0
	call	_bp_delay_us
	.loc 1 553 0
	clr.b	w3
	btst.b	_PORTBbits+10/8,#10%8
	.set ___BP___,50
	bra	z,.L46
	mov.b	#16,w3
.L46:
	clr.b	w2
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,50
	bra	z,.L47
	mov.b	#8,w2
.L47:
	clr.b	w1
	btst.b	_PORTBbits+8/8,#8%8
	.set ___BP___,50
	bra	z,.L48
	mov.b	#4,w1
.L48:
	clr.b	w0
	btst.b	_PORTBbits,#7
	.set ___BP___,61
	bra	z,.L49
	mov.b	#2,w0
.L49:
	.loc 1 557 0
	mov	#64,w4
	mov	_PORTBbits,w5
	and	w4,w5,w4
	neg	w4,w4
	lsr	w4,#15,w4
	.loc 1 553 0
	ior.b	w3,w4,w3
	ior.b	w3,w2,w2
	ior.b	w2,w1,w1
	ior.b	w1,w0,w0
	.loc 1 558 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_bitbang_pin_state_set, .-_bitbang_pin_state_set
	.align	2
	.type	_reset_state,@function
_reset_state:
.LFB27:
	.loc 1 505 0
	.set ___PA___,1
	.loc 1 507 0
	setm.b	w0
	call	_bitbang_pin_direction_set
	.loc 1 508 0
	clr.b	w0
	call	_bitbang_pin_state_set
	.loc 1 509 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_reset_state, .-_reset_state
	.align	2
	.global	_bp_binary_io_peripherals_set	; export
	.type	_bp_binary_io_peripherals_set,@function
_bp_binary_io_peripherals_set:
.LFB31:
	.loc 1 589 0
	.set ___PA___,1
	.loc 1 590 0
	ze	w0,w0
.LBB213:
.LBB214:
	.loc 2 105 0
	btst	w0,#3
	.set ___BP___,50
	bra	z,.L56
.LBB215:
.LBB216:
	.loc 2 91 0
	bclr.b	_TRISAbits,#0
	.loc 2 92 0
	bset.b	_PORTAbits,#0
	bra	.L57
.L56:
.LBE216:
.LBE215:
.LBB217:
.LBB218:
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.L57:
.LBE218:
.LBE217:
.LBE214:
.LBE213:
.LBB219:
.LBB220:
	.loc 2 83 0
	btst	w0,#2
	.set ___BP___,50
	bra	z,.L58
.LBB221:
.LBB222:
	.loc 2 73 0
	bset.b	_TRISBbits+1,#3
	.loc 2 74 0
	bclr.b	_PORTBbits+1,#3
	bra	.L59
.L58:
.LBE222:
.LBE221:
.LBB223:
.LBB224:
	.loc 2 78 0
	bclr.b	_PORTBbits+1,#3
	.loc 2 79 0
	bclr.b	_TRISBbits+1,#3
.L59:
.LBE224:
.LBE223:
.LBE220:
.LBE219:
	.loc 1 593 0
	bclr.b	_TRISBbits+1,#2
	.loc 1 594 0
	lsr	w0,w1
	and	w1,#1,w1
	sl	w1,#10,w1
	mov	_PORTBbits,w2
	bclr	w2,#10
	ior	w1,w2,w2
	mov	w2,_PORTBbits
	.loc 1 597 0
	btst	w0,#0
	.set ___BP___,50
	bra	z,.L60
	.loc 1 598 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w0
	.set ___BP___,50
	bra	z,.L61
	.loc 1 599 0
	bset.b	_TRISB,#6
	bra	.L55
.L61:
	.loc 1 601 0
	bset.b	_LATB,#6
	.loc 1 602 0
	bclr.b	_TRISB,#6
	bra	.L55
.L60:
	.loc 1 605 0
	bclr.b	_LATB,#6
	.loc 1 606 0
	bclr.b	_TRISB,#6
.L55:
	.loc 1 608 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_bp_binary_io_peripherals_set, .-_bp_binary_io_peripherals_set
	.align	2
	.type	_binary_io_raw_wire_mode_handler,@function
_binary_io_raw_wire_mode_handler:
.LFB32:
	.loc 1 658 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI12:
	mov.d	w8,[w15++]
.LCFI13:
	mov.d	w10,[w15++]
.LCFI14:
	mov.d	w12,[w15++]
.LCFI15:
	mov	w14,[w15++]
.LCFI16:
	.loc 1 659 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w1
	bset.b	w1,#4
	.loc 1 660 0
	bclr.b	w1,#3
	mov.b	w1,[w0]
	.loc 1 661 0
	mov.b	#1,w8
	mov	#_mode_configuration,w0
	mov.b	w8,[w0]
	.loc 1 662 0
	mov.b	#8,w1
	mov	#_mode_configuration+1,w0
	mov.b	w1,[w0]
	.loc 1 664 0
	mov	#_io_state,w0
	mov.b	[w0],w1
	bclr.b	w1,#0
	.loc 1 665 0
	ior.b	w1,#6,[w0]
	.loc 1 667 0
	mov	#3,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 668 0
	bclr.b	_TRISBbits+1,#1
	.loc 1 669 0
	bclr.b	_TRISBbits+1,#0
	.loc 1 670 0
	bset.b	_TRISBbits,#7
	.loc 1 671 0
	mov.b	w8,w0
	call	_bitbang_set_cs
	.loc 1 673 0
	mov	#tbloffset(_MSG_RAW_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_RAW_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
.LBB225:
.LBB226:
.LBB227:
	.loc 1 972 0
	mov	#_mode_configuration+2,w12
	.loc 1 973 0
	mov	#_io_state,w14
.LBE227:
.LBE226:
.LBB229:
.LBB230:
	.loc 1 834 0
	mov	#tbloffset(_MSG_RAW_MODE_IDENTIFIER_str),w10
	mov	#tblpage(_MSG_RAW_MODE_IDENTIFIER_str),w11
.L168:
.LBE230:
.LBE229:
	.loc 1 678 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 680 0
	ze	w8,w0
	lsr	w0,#4,w0
	ze	w0,w0
	clr	w1
	
.SS76:	bra	w0
	.align	2
	.set	___PA___,0
.L76:
.SH76:
	bra	.L66
	bra	.L67
	bra	.L68
	bra	.L69
	bra	.L70
	bra	.L71
	bra	.L72
	bra	.L65
	bra	.L73
	bra	.L65
	bra	.L74
	bra	.L65
	bra	.L65
	bra	.L65
	bra	.L65
	bra	.L75
	.set	___PA___,1
.SE76:
.L66:
.LBB233:
.LBB232:
	.loc 1 828 0
	ze	w8,w8
	clr	w9
	sub	w8,#13,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L77
	
.SS92:	bra	w8
	.align	2
	.set	___PA___,0
.L92:
.SH92:
	bra	.L63
	bra	.L79
	bra	.L80
	bra	.L81
	bra	.L82
	bra	.L83
	bra	.L84
	bra	.L85
	bra	.L86
	bra	.L87
	bra	.L88
	bra	.L89
	bra	.L90
	bra	.L91
	.set	___PA___,1
.SE92:
.L79:
	.loc 1 834 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	bra	.L168
.L80:
	.loc 1 838 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 839 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L81:
	.loc 1 843 0
	call	_bitbang_i2c_stop
	.loc 1 844 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L82:
	.loc 1 848 0
	clr.b	w0
	call	_bitbang_set_cs
	.loc 1 849 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L83:
	.loc 1 853 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 854 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L84:
.LBB231:
	.loc 1 858 0
	mov.b	[w14],w1
	and.b	w1,#1,w0
	.loc 1 860 0
	.set ___BP___,50
	bra	nz,.L94
	call	_bitbang_read_value
	bra	.L95
.L94:
	mov	#255,w0
	call	_bitbang_read_with_write
.L95:
	.loc 1 861 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L96
	.loc 1 862 0
	mov	#_mode_configuration+1,w1
	mov.b	[w1],w1
	call	_bp_reverse_integer
.L96:
	.loc 1 864 0
	call	_user_serial_transmit_character
	bra	.L168
.L85:
.LBE231:
	.loc 1 869 0
	call	_bitbang_read_bit
	call	_user_serial_transmit_character
	bra	.L168
.L86:
	.loc 1 873 0
	call	_bitbang_read_miso
	call	_user_serial_transmit_character
	bra	.L168
.L87:
	.loc 1 877 0
	mov	#1,w0
	call	_bitbang_advance_clock_ticks
	.loc 1 878 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L88:
	.loc 1 882 0
	clr.b	w0
	call	_bitbang_set_clk
	.loc 1 883 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L89:
	.loc 1 887 0
	mov.b	#1,w0
	call	_bitbang_set_clk
	.loc 1 888 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L90:
	.loc 1 892 0
	clr.b	w0
	call	_bitbang_set_mosi
	.loc 1 893 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L91:
	.loc 1 897 0
	mov.b	#1,w0
	call	_bitbang_set_mosi
	.loc 1 898 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L77:
	.loc 1 902 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L67:
.LBE232:
.LBE233:
.LBB234:
.LBB235:
	.loc 1 910 0
	and	w8,#15,w8
	inc	w8,w13
	.loc 1 911 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBB236:
	.loc 1 913 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L168
	clr	w8
.LBB237:
	.loc 1 923 0
	mov	#255,w9
.L102:
	.loc 1 914 0
	call	_user_serial_read_byte
	ze	w0,w0
	.loc 1 915 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L98
	.loc 1 916 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w1
	call	_bp_reverse_integer
.L98:
	.loc 1 919 0
	mov.b	[w14],w2
	and.b	w2,#1,w1
	.set ___BP___,50
	bra	nz,.L99
	.loc 1 920 0
	and	w0,w9,w0
	call	_bitbang_write_value
	.loc 1 921 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L100
.L99:
	.loc 1 923 0
	and	w0,w9,w0
	call	_bitbang_read_with_write
	.loc 1 924 0
	mov.b	[w12],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L101
	.loc 1 925 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w1
	call	_bp_reverse_integer
.L101:
	.loc 1 927 0
	and	w0,w9,w0
	call	_bitbang_write_value
.L100:
.LBE237:
	.loc 1 913 0
	inc	w8,w8
	sub	w13,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L102
	bra	.L168
.L68:
.LBE236:
.LBE235:
.LBE234:
.LBB238:
.LBB239:
	.loc 1 933 0
	and	w8,#15,w0
	inc	w0,w0
	call	_bitbang_advance_clock_ticks
	.loc 1 934 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE239:
.LBE238:
	.loc 1 692 0
	bra	.L168
.L69:
.LBB240:
.LBB241:
	.loc 1 938 0
	and	w8,#15,w13
	inc	w13,w13
	.loc 1 939 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 941 0
	call	_user_serial_read_byte
.LBB242:
	.loc 1 942 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L103
	clr	w9
	.loc 1 943 0
	ze	w8,w8
	lsr	w8,#7,w8
.L104:
	mov.b	w8,w0
	call	_bitbang_write_bit
	.loc 1 942 0
	inc	w9,w9
	sub	w13,w9,[w15]
	.set ___BP___,91
	bra	gtu,.L104
.L103:
.LBE242:
	.loc 1 947 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE241:
.LBE240:
	.loc 1 696 0
	bra	.L168
.L74:
.LBB243:
.LBB244:
	.loc 1 983 0
	mov.b	#-92,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L107
	.set ___BP___,50
	bra	gtu,.L110
	mov.b	#-96,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L105
	bra	.L173
.L110:
	mov.b	#-91,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L108
	mov.b	#-89,w0
	sub.b	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L105
	bra	.L174
.L173:
.LBB245:
	.loc 1 986 0
	call	_user_serial_read_byte
	.loc 1 987 0
	dec.b	w0,w1
	sub.b	w1,#2,[w15]
	.set ___BP___,50
	bra	leu,.L111
	.loc 1 989 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L111:
	.loc 1 991 0
	and.b	w0,#3,w0
	add.b	w0,w0,w0
	mov.b	#-7,w1
	and.b	w1,[w14],w1
	ior.b	w1,w0,[w14]
	.loc 1 992 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L107:
.LBE245:
.LBB246:
.LBB247:
	.loc 1 1016 0
	mov.b	[w14],w1
	and.b	w1,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L112
	sub.b	w0,#4,[w15]
	.set ___BP___,48
	bra	z,.L112
	.loc 1 1018 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L112:
	.loc 1 1023 0
	call	_user_serial_read_byte
	ze	w0,w1
	mov.b	[w14],w0
	and.b	w0,#6,w2
	mov	#4,w0
	sub.b	w2,#2,[w15]
	.set ___BP___,72
	bra	nz,.L113
	mov	#3,w0
.L113:
	mul.ss	w0,w1,w0
	mov	w0,w9
.LBB248:
	.loc 1 1024 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L114
	clr	w8
.L115:
	.loc 1 1025 0
	mov	#_bus_pirate_configuration,w1
	add	w8,[w1],w13
	call	_user_serial_read_byte
	mov.b	w0,[w13]
	.loc 1 1024 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L115
.L114:
.LBE248:
	.loc 1 1028 0
	mov.b	[w14],w2
	and.b	w2,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,28
	bra	z,.L116
.LBB249:
	.loc 1 1039 0
	clr	w8
	cp0	w9
	.set ___BP___,91
	bra	nz,.L156
	bra	.L118
.L116:
.LBE249:
.LBB250:
	.loc 1 1029 0
	cp0	w9
	.set ___BP___,9
	bra	z,.L119
	clr	w8
.L120:
	.loc 1 1032 0
	mov	#_bus_pirate_configuration,w1
	mov	[w1],w0
	.loc 1 1030 0
	add	w0,w8,w1
	mov.b	[w1+2],w2
	mov.b	[w1+1],w1
	mov.b	[w0+w8],w0
	call	_pic416_write
	.loc 1 1029 0
	add	w8,#3,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L120
.L119:
.LBE250:
	.loc 1 1035 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L156:
.LBB251:
	.loc 1 1041 0
	mov	#_bus_pirate_configuration,w2
	add	w8,[w2],w0
	.loc 1 1040 0
	mov.b	[w0+3],w1
	ze	w1,w1
	call	_pic424_write
	.loc 1 1039 0
	add	w8,#4,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L156
.L118:
.LBE251:
	.loc 1 1044 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L108:
.LBE247:
.LBE246:
.LBB252:
.LBB253:
	.loc 1 1048 0
	mov.b	[w14],w1
	and.b	w1,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L121
	sub.b	w0,#4,[w15]
	.set ___BP___,48
	bra	z,.L121
	.loc 1 1050 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L121:
	.loc 1 1054 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 1056 0
	mov.b	[w14],w2
	and.b	w2,#6,w0
	sub.b	w0,#2,[w15]
	.set ___BP___,13
	bra	z,.L122
.LBB254:
	.loc 1 1069 0
	ze	w8,w8
	mov	w8,[w15-16]
	clr	w13
	mov	w8,w0
	cp0	w0
	.set ___BP___,91
	bra	nz,.L123
	bra	.L168
.L122:
.LBE254:
.LBB256:
	.loc 1 1057 0
	call	_user_serial_read_byte
	mov.b	w0,w13
.LBB257:
	.loc 1 1059 0
	ze	w8,w9
	.set ___BP___,9
	bra	z,.L168
	clr	w8
.L124:
	.loc 1 1060 0
	mov	#4,w1
	mov.b	w13,w0
	call	_send_bits
	.loc 1 1062 0
	call	_bitbang_read_value
	.loc 1 1063 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 1059 0
	inc	w8,w8
	sub	w8,w9,[w15]
	.set ___BP___,91
	bra	ltu,.L124
	bra	.L168
.L123:
.LBE257:
.LBE256:
.LBB258:
.LBB255:
	.loc 1 1072 0
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD,w8
	.loc 1 1074 0
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD+3,w9
.L157:
	.loc 1 1072 0
	mov	#2,w1
	mov	w8,w0
	call	_pic424_write
	.loc 1 1073 0
	call	_pic424_read
	.loc 1 1074 0
	mov	#2,w1
	mov	w9,w0
	call	_pic424_write
	.loc 1 1076 0
	mov	#2,w1
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD+6,w0
	call	_pic424_write
	.loc 1 1077 0
	call	_pic424_read
	.loc 1 1078 0
	mov	#2,w1
	mov	#_PIC24_WRITE_AND_READ_PAYLOAD+9,w0
	call	_pic424_write
	.loc 1 1079 0
	call	_pic424_read
.LBE255:
	.loc 1 1069 0
	inc	w13,w13
	mov	[w15-16],w1
	sub	w13,w1,[w15]
	.set ___BP___,91
	bra	ltu,.L157
	bra	.L168
.L174:
.LBE258:
.LBE253:
.LBE252:
.LBB259:
.LBB260:
	.loc 1 1084 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 1085 0
	call	_user_serial_read_byte
	mov.b	w0,[w15-16]
	.loc 1 1088 0
	lsr	[w14],w0
	and	w0,#3,w0
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L127
	sub	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L126
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L169
	bra	.L126
.L127:
	.loc 1 1090 0
	mov.b	w8,w0
	mov.b	#5,w2
	mul.b	WREG2
	mov.b	[w15-16],w1
	ze	w1,w0
	add	w2,w0,w13
	bra	.L128
.L126:
	.loc 1 1095 0
	ze	w8,w8
	add	w8,w8,w8
	mov.b	[w15-16],w2
	ze	w2,w0
	add	w8,w0,w13
	add	w13,w13,w13
	bra	.L128
.L169:
	.loc 1 1099 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L128:
.LBB261:
	.loc 1 1103 0
	cp0	w13
	.set ___BP___,9
	bra	z,.L129
	clr	w8
.L130:
	.loc 1 1104 0
	mov	#_bus_pirate_configuration,w0
	add	w8,[w0],w9
	call	_user_serial_read_byte
	mov.b	w0,[w9]
	.loc 1 1103 0
	inc	w8,w8
	sub	w8,w13,[w15]
	.set ___BP___,91
	bra	ltu,.L130
.L129:
.LBE261:
	.loc 1 1107 0
	mov.b	[w15-16],w1
	cp0.b	w1
	.set ___BP___,71
	bra	z,.L131
	.loc 1 1108 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.L131:
	.loc 1 1112 0
	cp0	w13
	.set ___BP___,3
	bra	z,.L132
	clr	w8
.L146:
	.loc 1 1113 0
	mov	#_bus_pirate_configuration,w2
	mov	[w2],w0
	mov.b	[w0+w8],w1
	sub.b	w1,#1,[w15]
	.set ___BP___,29
	bra	z,.L134
	sub.b	w1,#2,[w15]
	.set ___BP___,71
	bra	nz,.L170
	bra	.L175
.L134:
	.loc 1 1115 0
	lsr	[w14],w1
	and	w1,#3,w1
	sub	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L138
	sub	w1,#3,[w15]
	.set ___BP___,29
	bra	z,.L139
	sub	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L171
	bra	.L176
.L139:
	.loc 1 1117 0
	add	w0,w8,w0
	mov.b	[w0+3],w1
	mov.b	w1,[w15-17]
	mov.b	[w0+2],w2
	mov.b	w2,[w15-18]
	mov.b	[w0+1],w9
.LBB262:
.LBB263:
	.loc 1 747 0
	mov	#6,w1
	mov.b	w9,w0
	call	_send_bits
	.loc 1 749 0
	cp0.b	w9
	.set ___BP___,47
	bra	lt,.L140
	.loc 1 750 0
	mov.b	[w15-18],w1
	ze	w1,w0
	call	_bitbang_write_value
	.loc 1 751 0
	mov.b	[w15-17],w2
	ze	w2,w0
	call	_bitbang_write_value
.L140:
.LBE263:
.LBE262:
	.loc 1 1120 0
	add	w8,#4,w8
	bra	.L141
.L176:
	.loc 1 1124 0
	add	w0,w8,w0
	mov.b	[w0+3],w2
	mov.b	[w0+2],w1
	mov.b	[w0+1],w0
	call	_pic416_write
	.loc 1 1127 0
	add	w8,#4,w8
	bra	.L141
.L138:
	.loc 1 1132 0
	add	w0,w8,w1
	.loc 1 1131 0
	mov.b	[w1+4],w1
	and	w1,#15,w1
	inc	w8,w2
	add	w0,w2,w0
	call	_pic424_write
	.loc 1 1133 0
	add	w8,#5,w8
	bra	.L141
.L171:
	.loc 1 1138 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L175:
	.loc 1 1144 0
	lsr	[w14],w1
	and	w1,#3,w1
	sub	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L144
	sub	w1,#3,[w15]
	.set ___BP___,29
	bra	z,.L145
	sub	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L172
	bra	.L177
.L145:
	.loc 1 1146 0
	add	w0,w8,w0
.LBB264:
.LBB265:
	.loc 1 739 0
	mov.b	[w0+1],w0
	mov	#6,w1
	call	_send_bits
	.loc 1 741 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 742 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
.LBE265:
.LBE264:
	.loc 1 1147 0
	inc2	w8,w8
	bra	.L141
.L177:
	.loc 1 1151 0
	add	w0,w8,w0
.LBB266:
.LBB267:
	.loc 1 756 0
	mov.b	[w0+1],w0
	mov	#4,w1
	call	_send_bits
	.loc 1 758 0
	call	_bitbang_read_value
	.loc 1 759 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
.LBE267:
.LBE266:
	.loc 1 1152 0
	inc2	w8,w8
	bra	.L141
.L144:
	.loc 1 1156 0
	call	_pic424_read
	.loc 1 1157 0
	inc	w8,w8
	bra	.L141
.L172:
	.loc 1 1162 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L170:
	.loc 1 1168 0
	inc	w8,w8
.L141:
	.loc 1 1112 0
	sub	w13,w8,[w15]
	.set ___BP___,97
	bra	gtu,.L146
.L132:
	.loc 1 1173 0
	mov.b	[w15-16],w0
	cp0.b	w0
	.set ___BP___,71
	bra	nz,.L168
	.loc 1 1174 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L168
.L105:
.LBE260:
.LBE259:
	.loc 1 1010 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L71:
.LBE244:
.LBE243:
.LBB268:
.LBB269:
	.loc 1 954 0
	clr.b	w0
	call	_user_serial_transmit_character
.LBE269:
.LBE268:
	.loc 1 704 0
	bra	.L168
.L70:
.LBB270:
.LBB271:
	.loc 1 959 0
	mov.b	w8,w0
	call	_bp_binary_io_peripherals_set
	.loc 1 960 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE271:
.LBE270:
	.loc 1 708 0
	bra	.L168
.L72:
.LBB272:
.LBB273:
	.loc 1 964 0
	and.b	w8,#3,w8
	mov	#_mode_configuration,w1
	mov.b	w8,[w1]
	.loc 1 965 0
	ze	w8,w1
	mov.b	[w14],w0
	and.b	w0,#1,w2
	mov.b	#3,w0
	.set ___BP___,50
	bra	nz,.L147
	mov.b	#2,w0
.L147:
	call	_bitbang_setup
	.loc 1 967 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 968 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE273:
.LBE272:
	.loc 1 712 0
	bra	.L168
.L73:
.LBB274:
.LBB228:
	.loc 1 972 0
	ze	w8,w8
	lsr	w8,#3,w0
	and.b	w0,#1,w0
	sl	w0,#4,w0
	mov.b	[w12],w1
	bclr.b	w1,#4
	ior.b	w1,w0,w1
	.loc 1 974 0
	lsr	w8,#2,w0
	.loc 1 973 0
	and.b	w0,#1,w0
	mov.b	[w14],w2
	bclr.b	w2,#0
	ior.b	w2,w0,w2
	mov.b	w2,[w14]
	.loc 1 975 0
	lsr	w8,w0
	and.b	w0,#1,w0
	sl	w0,#3,w0
	bclr.b	w1,#3
	ior.b	w1,w0,[w12]
	.loc 1 976 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#3,w0
	btst	w2,#0
	.set ___BP___,50
	bra	nz,.L148
	mov.b	#2,w0
.L148:
	call	_bitbang_setup
	.loc 1 978 0
	mov.b	#1,w0
	call	_bitbang_set_cs
	.loc 1 979 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBE228:
.LBE274:
	.loc 1 716 0
	bra	.L168
.L75:
.LBB275:
.LBB276:
	.loc 1 1205 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L65:
.LBE276:
.LBE275:
	.loc 1 723 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L168
.L63:
.LBE225:
	.loc 1 727 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE32:
	.size	_binary_io_raw_wire_mode_handler, .-_binary_io_raw_wire_mode_handler
	.align	2
	.global	_enter_binary_bitbang_mode	; export
	.type	_enter_binary_bitbang_mode,@function
_enter_binary_bitbang_mode:
.LFB25:
	.loc 1 362 0
	.set ___PA___,0
	mov.d	w8,[w15++]
.LCFI17:
	mov.d	w10,[w15++]
.LCFI18:
.LBB277:
.LBB278:
	.loc 2 130 0
	bclr.b	_TRISAbits,#1
	.loc 2 131 0
	bset.b	_PORTAbits,#1
.LBE278:
.LBE277:
	.loc 1 364 0
	call	_reset_state
	.loc 1 365 0
	call	_send_binary_io_mode_identifier
.LBB279:
.LBB280:
.LBB281:
	.loc 1 496 0
	mov	#224,w10
	mov	#64,w11
.L204:
.LBE281:
.LBE280:
	.loc 1 368 0
	call	_user_serial_read_byte
	.loc 1 370 0
	cp0.b	w0
	.set ___BP___,27
	bra	lt,.L180
.LBB303:
.LBB302:
	.loc 1 379 0
	ze	w0,w2
	clr	w3
	sub	w2,#24,[w15]
	subb	w3,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L181
	
.SS199:	bra	w2
	.align	2
	.set	___PA___,0
.L199:
.SH199:
	bra	.L182
	bra	.L183
	bra	.L184
	bra	.L185
	bra	.L186
	bra	.L187
	bra	.L188
	bra	.L189
	bra	.L181
	bra	.L181
	bra	.L181
	bra	.L181
	bra	.L181
	bra	.L181
	bra	.L181
	bra	.L190
	bra	.L191
	bra	.L192
	bra	.L193
	bra	.L194
	bra	.L195
	bra	.L196
	bra	.L197
	bra	.L181
	bra	.L198
	.set	___PA___,0
.SE199:
.L182:
	.loc 1 381 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L183:
	.loc 1 386 0
	call	_reset_state
	.loc 1 387 0
	call	_spi_enter_binary_io
	.loc 1 389 0
	call	_reset_state
	.loc 1 390 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L184:
	.loc 1 395 0
	call	_reset_state
	.loc 1 396 0
	call	_binary_io_enter_i2c_mode
	.loc 1 398 0
	call	_reset_state
	.loc 1 399 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L185:
	.loc 1 404 0
	call	_reset_state
	.loc 1 405 0
	call	_binUART
	.loc 1 407 0
	call	_reset_state
	.loc 1 408 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L186:
	.loc 1 413 0
	call	_reset_state
	.loc 1 414 0
	call	_binary_io_enter_1wire_mode
	.loc 1 416 0
	call	_reset_state
	.loc 1 417 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L187:
	.loc 1 421 0
	call	_reset_state
	.loc 1 422 0
	call	_binary_io_raw_wire_mode_handler
	.loc 1 423 0
	call	_reset_state
	.loc 1 424 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L188:
	.loc 1 429 0
	call	_reset_state
	.loc 1 430 0
	call	_binOpenOCD
	.loc 1 432 0
	call	_reset_state
	.loc 1 433 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L189:
	.loc 1 438 0
	call	_reset_state
	.loc 1 439 0
	call	_binary_io_enter_pic_mode
	.loc 1 441 0
	call	_reset_state
	.loc 1 442 0
	call	_send_binary_io_mode_identifier
	bra	.L204
.L190:
	.loc 1 446 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.LBB282:
.LBB283:
	.loc 2 135 0
	bclr.b	_TRISAbits,#1
	.loc 2 136 0
	bclr.b	_PORTAbits,#1
.LBE283:
.LBE282:
	.loc 1 448 0
	call	_user_serial_wait_transmission_done
	.loc 1 453 0
; 453 "../binary_io.c" 1
	RESET
	bra	.L204
.L191:
	.loc 1 458 0
	clr.b	w0
	call	_binary_io_self_test
	bra	.L204
.L192:
	.loc 1 462 0
	mov.b	#1,w0
	call	_binary_io_self_test
	bra	.L204
.L193:
.LBB284:
.LBB285:
	.loc 1 1308 0
	clr	_T2CON
	.loc 1 1322 0
	clr	_T4CON
	.loc 1 1351 0
	clr	_OC5CON
	.loc 1 1354 0
	mov	#-32,w0
	and	_RPOR5bits,WREG
	ior	#22,w0
	mov	w0,_RPOR5bits
	.loc 1 1355 0
	call	_user_serial_read_byte
	and	w0,#3,w0
	sl	w0,#4,w0
	mov	#-49,w1
	mov	_T2CONbits,w2
	and	w1,w2,w1
	ior	w0,w1,w1
	mov	w1,_T2CONbits
	.loc 1 1357 0
	call	_user_serial_read_byte
	.loc 1 1358 0
	sl	w0,#8,w8
	call	_user_serial_read_byte
	ze	w0,w0
	ior	w0,w8,w8
	.loc 1 1359 0
	mov	w8,_OC5R
	.loc 1 1360 0
	mov	w8,_OC5RS
	.loc 1 1389 0
	mov	#6,w0
	mov	w0,_OC5CON
	.loc 1 1392 0
	call	_user_serial_read_byte
	.loc 1 1393 0
	sl	w0,#8,w8
	call	_user_serial_read_byte
	ze	w0,w0
	.loc 1 1394 0
	ior	w0,w8,w0
	mov	w0,_PR2
	.loc 1 1396 0
	bset.b	_T2CONbits+1,#7
	.loc 1 1397 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L204
.L194:
.LBE285:
.LBE284:
.LBB286:
.LBB287:
	.loc 1 1222 0
	clr	_T2CON
	.loc 1 1251 0
	clr	_OC5CON
	.loc 1 1255 0
	mov	#-32,w0
	and	_RPOR5bits
	.loc 1 1257 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	bra	.L204
.L195:
.LBE287:
.LBE286:
.LBB288:
.LBB289:
.LBB290:
.LBB291:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE291:
.LBE290:
	.loc 1 1268 0
	call	_read_and_transmit_adc_measurement
.LBB292:
.LBB293:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
	bra	.L204
.L196:
.LBE293:
.LBE292:
.LBE289:
.LBE288:
.LBB294:
.LBB295:
.LBB296:
.LBB297:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.L201:
.LBE297:
.LBE296:
	.loc 1 1277 0
	call	_read_and_transmit_adc_measurement
	.loc 1 1278 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L201
	.loc 1 1279 0
	call	_user_serial_read_byte
.LBB298:
.LBB299:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
	bra	.L204
.L197:
.LBE299:
.LBE298:
.LBE295:
.LBE294:
.LBB300:
.LBB301:
	.loc 1 1287 0
	call	_bp_measure_frequency
	mov.d	w0,w8
	.loc 1 1289 0
	lsr	w1,#8,w0
	call	_user_serial_transmit_character
	.loc 1 1290 0
	lsr	w9,#0,w0
	mov	#0,w1
	call	_user_serial_transmit_character
	.loc 1 1291 0
	sl	w9,#8,w2
	lsr	w8,#8,w0
	ior	w2,w0,w0
	lsr	w9,#8,w1
	call	_user_serial_transmit_character
	.loc 1 1292 0
	mov.b	w8,w0
	call	_user_serial_transmit_character
	bra	.L204
.L198:
.LBE301:
.LBE300:
	.loc 1 491 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L204
.L181:
	.loc 1 496 0
	and	w10,w0,w1
	sub	w1,w11,[w15]
	.set ___BP___,72
	bra	nz,.L202
	.loc 1 497 0
	call	_bitbang_pin_direction_set
	call	_user_serial_transmit_character
	bra	.L204
.L202:
	.loc 1 499 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L204
.L180:
.LBE302:
.LBE303:
	.loc 1 373 0
	call	_bitbang_pin_state_set
	call	_user_serial_transmit_character
	bra	.L204
.LBE279:
.LFE25:
	.size	_enter_binary_bitbang_mode, .-_enter_binary_bitbang_mode
	.section	.bss,bss
	.align	2
	.type	_io_state,@object
	.size	_io_state, 1
_io_state:
	.skip	1
	.section	.const,psv,page
	.type	_PIC24_NOP_PAYLOAD,@object
	.size	_PIC24_NOP_PAYLOAD, 3
_PIC24_NOP_PAYLOAD:
	.skip	3
	.type	_PIC24_WRITE_AND_READ_PAYLOAD,@object
	.size	_PIC24_WRITE_AND_READ_PAYLOAD, 12
_PIC24_WRITE_AND_READ_PAYLOAD:
	.byte 105
	.byte -48
	.byte 93
	.byte 109
	.byte -37
	.byte 93
	.byte 107
	.byte -53
	.byte 93
	.byte 105
	.byte -48
	.byte 93
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI1-.LFB40
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI5-.LFB41
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI6-.LFB37
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI11-.LFB56
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI17-.LFB25
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
.LEFDE26:
	.section	.text,code
.Letext0:
	.file 3 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 4 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 5 "../base.h"
	.file 6 "../bitbang.h"
	.file 7 "../core.h"
	.file 8 "../hardwarev3.h"
	.section	.debug_info,info
	.4byte	0x2796
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../binary_io.c"
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
	.byte	0x3
	.byte	0xbb
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0xc1
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x3
	.byte	0xcd
	.4byte	0x13b
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
	.byte	0x3
	.byte	0xdd
	.4byte	0x11b
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
	.byte	0x4
	.2byte	0x386
	.4byte	0x21c
	.uleb128 0x5
	.asciz	"TCS"
	.byte	0x4
	.2byte	0x388
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T32"
	.byte	0x4
	.2byte	0x38a
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS"
	.byte	0x4
	.2byte	0x38b
	.4byte	0x10b
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TGATE"
	.byte	0x4
	.2byte	0x38c
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TSIDL"
	.byte	0x4
	.2byte	0x38e
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TON"
	.byte	0x4
	.2byte	0x390
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x392
	.4byte	0x250
	.uleb128 0x5
	.asciz	"TCKPS0"
	.byte	0x4
	.2byte	0x394
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TCKPS1"
	.byte	0x4
	.2byte	0x395
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0x385
	.4byte	0x264
	.uleb128 0x7
	.4byte	0x1a0
	.uleb128 0x7
	.4byte	0x21c
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagT2CONBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x384
	.4byte	0x283
	.uleb128 0x9
	.4byte	0x250
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"T2CONBITS"
	.byte	0x4
	.2byte	0x398
	.4byte	0x264
	.uleb128 0x8
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6d7
	.4byte	0x315
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x4
	.2byte	0x6d8
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA1"
	.byte	0x4
	.2byte	0x6d9
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA2"
	.byte	0x4
	.2byte	0x6da
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA3"
	.byte	0x4
	.2byte	0x6db
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISA4"
	.byte	0x4
	.2byte	0x6dc
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISABITS"
	.byte	0x4
	.2byte	0x6dd
	.4byte	0x295
	.uleb128 0x8
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6e2
	.4byte	0x398
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x4
	.2byte	0x6e3
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA1"
	.byte	0x4
	.2byte	0x6e4
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA2"
	.byte	0x4
	.2byte	0x6e5
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA3"
	.byte	0x4
	.2byte	0x6e6
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RA4"
	.byte	0x4
	.2byte	0x6e7
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTABITS"
	.byte	0x4
	.2byte	0x6e8
	.4byte	0x327
	.uleb128 0x8
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x703
	.4byte	0x517
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0x704
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB1"
	.byte	0x4
	.2byte	0x705
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB2"
	.byte	0x4
	.2byte	0x706
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB3"
	.byte	0x4
	.2byte	0x707
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB4"
	.byte	0x4
	.2byte	0x708
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB5"
	.byte	0x4
	.2byte	0x709
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB6"
	.byte	0x4
	.2byte	0x70a
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB7"
	.byte	0x4
	.2byte	0x70b
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB8"
	.byte	0x4
	.2byte	0x70c
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB9"
	.byte	0x4
	.2byte	0x70d
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB10"
	.byte	0x4
	.2byte	0x70e
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB11"
	.byte	0x4
	.2byte	0x70f
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB12"
	.byte	0x4
	.2byte	0x710
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB13"
	.byte	0x4
	.2byte	0x711
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB14"
	.byte	0x4
	.2byte	0x712
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"TRISB15"
	.byte	0x4
	.2byte	0x713
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"TRISBBITS"
	.byte	0x4
	.2byte	0x714
	.4byte	0x3aa
	.uleb128 0x8
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x719
	.4byte	0x666
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x4
	.2byte	0x71a
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB1"
	.byte	0x4
	.2byte	0x71b
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB2"
	.byte	0x4
	.2byte	0x71c
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB3"
	.byte	0x4
	.2byte	0x71d
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB4"
	.byte	0x4
	.2byte	0x71e
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB5"
	.byte	0x4
	.2byte	0x71f
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB6"
	.byte	0x4
	.2byte	0x720
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB7"
	.byte	0x4
	.2byte	0x721
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB8"
	.byte	0x4
	.2byte	0x722
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB9"
	.byte	0x4
	.2byte	0x723
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB10"
	.byte	0x4
	.2byte	0x724
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB11"
	.byte	0x4
	.2byte	0x725
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB12"
	.byte	0x4
	.2byte	0x726
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB13"
	.byte	0x4
	.2byte	0x727
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB14"
	.byte	0x4
	.2byte	0x728
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RB15"
	.byte	0x4
	.2byte	0x729
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"PORTBBITS"
	.byte	0x4
	.2byte	0x72a
	.4byte	0x529
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x78d
	.4byte	0x709
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x4
	.2byte	0x78e
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SAMP"
	.byte	0x4
	.2byte	0x78f
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ASAM"
	.byte	0x4
	.2byte	0x790
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC"
	.byte	0x4
	.2byte	0x792
	.4byte	0x10b
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM"
	.byte	0x4
	.2byte	0x793
	.4byte	0x10b
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADSIDL"
	.byte	0x4
	.2byte	0x795
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"ADON"
	.byte	0x4
	.2byte	0x797
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x799
	.4byte	0x777
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0x79b
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC1"
	.byte	0x4
	.2byte	0x79c
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SSRC2"
	.byte	0x4
	.2byte	0x79d
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM0"
	.byte	0x4
	.2byte	0x79e
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"FORM1"
	.byte	0x4
	.2byte	0x79f
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0x78c
	.4byte	0x78b
	.uleb128 0x7
	.4byte	0x678
	.uleb128 0x7
	.4byte	0x709
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x78b
	.4byte	0x7ac
	.uleb128 0x9
	.4byte	0x777
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0x7a2
	.4byte	0x78b
	.uleb128 0x8
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x7fd
	.4byte	0x8b9
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0x7fe
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG1"
	.byte	0x4
	.2byte	0x7ff
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG2"
	.byte	0x4
	.2byte	0x800
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG3"
	.byte	0x4
	.2byte	0x801
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG4"
	.byte	0x4
	.2byte	0x802
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG5"
	.byte	0x4
	.2byte	0x803
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG9"
	.byte	0x4
	.2byte	0x805
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG10"
	.byte	0x4
	.2byte	0x806
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG11"
	.byte	0x4
	.2byte	0x807
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG12"
	.byte	0x4
	.2byte	0x808
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PCFG15"
	.byte	0x4
	.2byte	0x80a
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"AD1PCFGBITS"
	.byte	0x4
	.2byte	0x80b
	.4byte	0x7c0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0xb1d
	.4byte	0x8ff
	.uleb128 0x5
	.asciz	"RP10R"
	.byte	0x4
	.2byte	0xb1e
	.4byte	0x10b
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R"
	.byte	0x4
	.2byte	0xb20
	.4byte	0x10b
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0xb22
	.4byte	0x9db
	.uleb128 0x5
	.asciz	"RP10R0"
	.byte	0x4
	.2byte	0xb23
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP10R1"
	.byte	0x4
	.2byte	0xb24
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP10R2"
	.byte	0x4
	.2byte	0xb25
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP10R3"
	.byte	0x4
	.2byte	0xb26
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP10R4"
	.byte	0x4
	.2byte	0xb27
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R0"
	.byte	0x4
	.2byte	0xb29
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R1"
	.byte	0x4
	.2byte	0xb2a
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R2"
	.byte	0x4
	.2byte	0xb2b
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R3"
	.byte	0x4
	.2byte	0xb2c
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RP11R4"
	.byte	0x4
	.2byte	0xb2d
	.4byte	0x10b
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0xb1c
	.4byte	0x9ef
	.uleb128 0x7
	.4byte	0x8cd
	.uleb128 0x7
	.4byte	0x8ff
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagRPOR5BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0xb1b
	.4byte	0xa0e
	.uleb128 0x9
	.4byte	0x9db
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"RPOR5BITS"
	.byte	0x4
	.2byte	0xb30
	.4byte	0x9ef
	.uleb128 0xb
	.byte	0x3
	.byte	0x5
	.byte	0x38
	.4byte	0xb05
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x5
	.byte	0x39
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x5
	.byte	0x3a
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x5
	.byte	0x3f
	.4byte	0xeb
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"periodicService"
	.byte	0x5
	.byte	0x41
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"little_endian"
	.byte	0x5
	.byte	0x47
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"high_impedance"
	.byte	0x5
	.byte	0x4c
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"int16"
	.byte	0x5
	.byte	0x51
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"write_with_read"
	.byte	0x5
	.byte	0x56
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.asciz	"command_error"
	.byte	0x5
	.byte	0x5b
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"mode_configuration_t"
	.byte	0x5
	.byte	0x5d
	.4byte	0xa20
	.uleb128 0xe
	.byte	0x2
	.byte	0x6
	.byte	0x1b
	.4byte	0xb84
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_5KHZ"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_50KHZ"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_100KHZ"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BITBANG_SPEED_MAXIMUM"
	.sleb128 3
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x6
	.byte	0x34
	.4byte	0xbc0
	.uleb128 0xf
	.asciz	"BITBANG_I2C_START_ONE_SHOT"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_I2C_RESTART"
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0xb4
	.4byte	0xc4e
	.uleb128 0xf
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0xf
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0xf
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0xf
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0xf
	.asciz	"BP_PICPROG"
	.sleb128 7
	.uleb128 0xf
	.asciz	"BP_DIO"
	.sleb128 8
	.uleb128 0xf
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x7
	.byte	0xe9
	.4byte	0xbc9
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0xee
	.4byte	0xc97
	.uleb128 0xf
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0xf
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0xf
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x7
	.byte	0xf7
	.4byte	0xc76
	.uleb128 0xb
	.byte	0xc
	.byte	0x7
	.byte	0xf9
	.4byte	0xda8
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x7
	.byte	0xfa
	.4byte	0xda8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x7
	.byte	0xfb
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x7
	.byte	0xfc
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x7
	.byte	0xfd
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x7
	.byte	0xfe
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x7
	.byte	0xff
	.4byte	0xc97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.asciz	"bus_mode"
	.byte	0x7
	.2byte	0x100
	.4byte	0xc4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.asciz	"quiet"
	.byte	0x7
	.2byte	0x101
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"overflow"
	.byte	0x7
	.2byte	0x102
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x5
	.asciz	"basic"
	.byte	0x7
	.2byte	0x104
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0xeb
	.uleb128 0xa
	.asciz	"bus_pirate_configuration_t"
	.byte	0x7
	.2byte	0x106
	.4byte	0xcb8
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x49
	.4byte	0xf20
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_GENERIC"
	.sleb128 0
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_BYTE_TRANSFER"
	.sleb128 1
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_CLOCK_TICKS_ADVANCE"
	.sleb128 2
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_BULK_BIT_TRANSFER"
	.sleb128 3
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_CONFIGURE_PERIPHERALS"
	.sleb128 4
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SET_PULLUP"
	.sleb128 5
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SET_SPEED"
	.sleb128 6
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_CONFIGURATION"
	.sleb128 8
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_PIC"
	.sleb128 10
	.uleb128 0xf
	.asciz	"IO_COMMAND_GROUP_SMPS"
	.sleb128 15
	.byte	0x0
	.uleb128 0x3
	.asciz	"io_command_group"
	.byte	0x1
	.byte	0x54
	.4byte	0xdd1
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x56
	.4byte	0x10a6
	.uleb128 0xf
	.asciz	"IO_COMMAND_EXIT"
	.sleb128 0
	.uleb128 0xf
	.asciz	"IO_COMMAND_REPORT_ID_STRING"
	.sleb128 1
	.uleb128 0xf
	.asciz	"IO_COMMAND_SEND_I2C_START_BIT"
	.sleb128 2
	.uleb128 0xf
	.asciz	"IO_COMMAND_SEND_I2C_STOP_BIT"
	.sleb128 3
	.uleb128 0xf
	.asciz	"IO_COMMAND_CS_LOW"
	.sleb128 4
	.uleb128 0xf
	.asciz	"IO_COMMAND_CS_HIGH"
	.sleb128 5
	.uleb128 0xf
	.asciz	"IO_COMMAND_BITBANG_READ_BYTE"
	.sleb128 6
	.uleb128 0xf
	.asciz	"IO_COMMAND_BITBANG_READ_BIT"
	.sleb128 7
	.uleb128 0xf
	.asciz	"IO_COMMAND_PEEK_INPUT_BIT"
	.sleb128 8
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_TICK"
	.sleb128 9
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_LOW"
	.sleb128 10
	.uleb128 0xf
	.asciz	"IO_COMMAND_CLOCK_HIGH"
	.sleb128 11
	.uleb128 0xf
	.asciz	"IO_COMMAND_DATA_LOW"
	.sleb128 12
	.uleb128 0xf
	.asciz	"IO_COMMAND_DATA_HIGH"
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.asciz	"wire_generic_command"
	.byte	0x1
	.byte	0x65
	.4byte	0xf38
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x67
	.4byte	0x111c
	.uleb128 0xf
	.asciz	"PIC_MODE_INVALID"
	.sleb128 0
	.uleb128 0xf
	.asciz	"PIC_MODE_416"
	.sleb128 1
	.uleb128 0xf
	.asciz	"PIC_MODE_424"
	.sleb128 2
	.uleb128 0xf
	.asciz	"PIC_MODE_614"
	.sleb128 3
	.uleb128 0xf
	.asciz	"PIC_MODE_COUNT"
	.sleb128 4
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6d
	.4byte	0x10c2
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x6f
	.4byte	0x1161
	.uleb128 0xf
	.asciz	"PIC_USER_COMMAND_WRITE"
	.sleb128 1
	.uleb128 0xf
	.asciz	"PIC_USER_COMMAND_READ"
	.sleb128 2
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x74
	.4byte	0x11e1
	.uleb128 0xf
	.asciz	"PIC_COMMAND_SET_MODE"
	.sleb128 160
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE"
	.sleb128 164
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE_AND_READ_BITS"
	.sleb128 165
	.uleb128 0xf
	.asciz	"PIC_COMMAND_WRITE_AND_READ_COMMANDS"
	.sleb128 167
	.byte	0x0
	.uleb128 0x3
	.asciz	"pic_command"
	.byte	0x1
	.byte	0x79
	.4byte	0x1161
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x7b
	.4byte	0x124b
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_GET_OUTPUT_VOLTAGE"
	.sleb128 240
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_STOP"
	.sleb128 241
	.uleb128 0xf
	.asciz	"SMPS_COMMAND_START"
	.sleb128 242
	.byte	0x0
	.uleb128 0x3
	.asciz	"smps_command"
	.byte	0x1
	.byte	0x7f
	.4byte	0x11f4
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x81
	.4byte	0x1444
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RESET"
	.sleb128 0
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SPI"
	.sleb128 1
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_I2C"
	.sleb128 2
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_UART"
	.sleb128 3
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_1WIRE"
	.sleb128 4
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RAW_WIRE"
	.sleb128 5
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_OPENOCD"
	.sleb128 6
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_PIC"
	.sleb128 7
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_RETURN_TO_TERMINAL"
	.sleb128 15
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SHORT_SELF_TEST"
	.sleb128 16
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_FULL_SELF_TEST"
	.sleb128 17
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_SETUP_PWM"
	.sleb128 18
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_CLEAR_PWM"
	.sleb128 19
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_ADC_ONE_SHOT"
	.sleb128 20
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_ADC_CONTINUOUS"
	.sleb128 21
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_FREQUENCY_COUNT"
	.sleb128 22
	.uleb128 0xf
	.asciz	"BITBANG_COMMAND_JTAG_XSVF"
	.sleb128 24
	.byte	0x0
	.uleb128 0x3
	.asciz	"bitbang_command"
	.byte	0x1
	.byte	0x93
	.4byte	0x125f
	.uleb128 0x4
	.byte	0x1
	.byte	0x1
	.2byte	0x138
	.4byte	0x14a2
	.uleb128 0x5
	.asciz	"wires"
	.byte	0x1
	.2byte	0x139
	.4byte	0xeb
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x13a
	.4byte	0xeb
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"reserved"
	.byte	0x1
	.2byte	0x13b
	.4byte	0xeb
	.byte	0x1
	.byte	0x5
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"binary_io_state_t"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x145b
	.uleb128 0x14
	.asciz	"bp_enable_pullup"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_voltage_regulator"
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_mode_led"
	.byte	0x2
	.byte	0x81
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_mode_led"
	.byte	0x2
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.asciz	"pic24_send_nop_opcode"
	.byte	0x1
	.2byte	0x31c
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.asciz	"pic614_write"
	.byte	0x1
	.2byte	0x2e9
	.byte	0x1
	.byte	0x3
	.4byte	0x15b5
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x15b5
	.uleb128 0x17
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2e9
	.4byte	0x15b5
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2ea
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x18
	.4byte	0xeb
	.uleb128 0x16
	.asciz	"pic614_read"
	.byte	0x1
	.2byte	0x2e2
	.byte	0x1
	.byte	0x3
	.4byte	0x15dd
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"pic416_read"
	.byte	0x1
	.2byte	0x2f3
	.byte	0x1
	.byte	0x3
	.4byte	0x1600
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command_write"
	.byte	0x1
	.2byte	0x3f7
	.byte	0x1
	.byte	0x3
	.4byte	0x1662
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x3fe
	.4byte	0x180
	.uleb128 0x1a
	.4byte	0x1641
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x400
	.4byte	0x180
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1653
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x405
	.4byte	0x180
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x40f
	.4byte	0x180
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command_write_and_read_bits"
	.byte	0x1
	.2byte	0x417
	.byte	0x1
	.byte	0x3
	.4byte	0x16e8
	.uleb128 0x19
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x41e
	.4byte	0xeb
	.uleb128 0x1a
	.4byte	0x16bf
	.uleb128 0x19
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x421
	.4byte	0xeb
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x423
	.4byte	0x180
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x42d
	.4byte	0x180
	.uleb128 0x1b
	.uleb128 0x1c
	.asciz	"payload_pointer"
	.byte	0x1
	.2byte	0x42e
	.4byte	0x16e8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x15b5
	.uleb128 0x16
	.asciz	"handle_pic_command_write_and_read_commands"
	.byte	0x1
	.2byte	0x43b
	.byte	0x1
	.byte	0x3
	.4byte	0x177e
	.uleb128 0x1c
	.asciz	"write_commands"
	.byte	0x1
	.2byte	0x43c
	.4byte	0xeb
	.uleb128 0x1c
	.asciz	"read_commands"
	.byte	0x1
	.2byte	0x43d
	.4byte	0xeb
	.uleb128 0x1c
	.asciz	"commands"
	.byte	0x1
	.2byte	0x43e
	.4byte	0x180
	.uleb128 0x1c
	.asciz	"index"
	.byte	0x1
	.2byte	0x457
	.4byte	0x180
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x44f
	.4byte	0x180
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.asciz	"bp_set_mode_led_state"
	.byte	0x2
	.byte	0x8b
	.byte	0x1
	.byte	0x3
	.4byte	0x17ab
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x8b
	.4byte	0x17ab
	.byte	0x0
	.uleb128 0x18
	.4byte	0xbc0
	.uleb128 0x14
	.asciz	"bp_toggle_mode_led"
	.byte	0x2
	.byte	0x93
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.asciz	"bp_set_voltage_regulator_state"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.4byte	0x1825
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x68
	.4byte	0xbc0
	.byte	0x0
	.uleb128 0x1d
	.asciz	"bp_set_pullup_state"
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.4byte	0x1850
	.uleb128 0x1e
	.asciz	"state"
	.byte	0x2
	.byte	0x52
	.4byte	0xbc0
	.byte	0x0
	.uleb128 0x14
	.asciz	"bp_disable_3v3_pullup"
	.byte	0x8
	.byte	0x86
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.asciz	"handle_wire_generic_command"
	.byte	0x1
	.2byte	0x33b
	.byte	0x1
	.4byte	0xbc0
	.byte	0x3
	.4byte	0x18b0
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x33b
	.4byte	0x18b0
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x35a
	.4byte	0x10b
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x10a6
	.uleb128 0x16
	.asciz	"handle_bulk_byte_transfer"
	.byte	0x1
	.2byte	0x38d
	.byte	0x1
	.byte	0x3
	.4byte	0x1910
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x38d
	.4byte	0x15b5
	.uleb128 0x1c
	.asciz	"bytes"
	.byte	0x1
	.2byte	0x38e
	.4byte	0x180
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x391
	.4byte	0x180
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x392
	.4byte	0x10b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bulk_clock_ticks_advance"
	.byte	0x1
	.2byte	0x3a4
	.byte	0x1
	.byte	0x3
	.4byte	0x1947
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bulk_bit_transfer"
	.byte	0x1
	.2byte	0x3a9
	.byte	0x1
	.byte	0x3
	.4byte	0x199f
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x15b5
	.uleb128 0x1c
	.asciz	"bits"
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x180
	.uleb128 0x1c
	.asciz	"byte"
	.byte	0x1
	.2byte	0x3ad
	.4byte	0xeb
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x3ae
	.4byte	0x180
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_pic_command"
	.byte	0x1
	.2byte	0x3d6
	.byte	0x1
	.byte	0x3
	.4byte	0x19d7
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3d6
	.4byte	0x19d7
	.uleb128 0x1b
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x3da
	.4byte	0xeb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x11e1
	.uleb128 0x16
	.asciz	"handle_set_pullup"
	.byte	0x1
	.2byte	0x3b6
	.byte	0x1
	.byte	0x3
	.4byte	0x1a05
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3b6
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_configure_peripherals"
	.byte	0x1
	.2byte	0x3be
	.byte	0x1
	.byte	0x3
	.4byte	0x1a39
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3be
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_set_speed"
	.byte	0x1
	.2byte	0x3c3
	.byte	0x1
	.byte	0x3
	.4byte	0x1a61
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3c3
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_configuration"
	.byte	0x1
	.2byte	0x3cb
	.byte	0x1
	.byte	0x3
	.4byte	0x1a8d
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x15b5
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_smps_command"
	.byte	0x1
	.2byte	0x49a
	.byte	0x1
	.byte	0x3
	.4byte	0x1ab8
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x49a
	.4byte	0x1ab8
	.byte	0x0
	.uleb128 0x18
	.4byte	0x124b
	.uleb128 0x16
	.asciz	"handle_setup_pwm"
	.byte	0x1
	.2byte	0x50f
	.byte	0x1
	.byte	0x3
	.4byte	0x1afb
	.uleb128 0x1c
	.asciz	"duty_cycle"
	.byte	0x1
	.2byte	0x54d
	.4byte	0x10b
	.uleb128 0x1c
	.asciz	"period"
	.byte	0x1
	.2byte	0x570
	.4byte	0x10b
	.byte	0x0
	.uleb128 0x15
	.asciz	"handle_clear_pwm"
	.byte	0x1
	.2byte	0x4b9
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.asciz	"handle_read_adc_one_shot"
	.byte	0x1
	.2byte	0x4f2
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.asciz	"handle_read_adc_continuously"
	.byte	0x1
	.2byte	0x4f8
	.byte	0x1
	.byte	0x3
	.4byte	0x1b6d
	.uleb128 0x1c
	.asciz	"should_loop"
	.byte	0x1
	.2byte	0x4f9
	.4byte	0xbc0
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_frequency_measurement"
	.byte	0x1
	.2byte	0x506
	.byte	0x1
	.byte	0x3
	.4byte	0x1ba7
	.uleb128 0x1c
	.asciz	"frequency"
	.byte	0x1
	.2byte	0x507
	.4byte	0x12b
	.byte	0x0
	.uleb128 0x16
	.asciz	"handle_bitbang_command"
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.byte	0x3
	.4byte	0x1bd5
	.uleb128 0x17
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1bd5
	.byte	0x0
	.uleb128 0x18
	.4byte	0x1444
	.uleb128 0x20
	.asciz	"send_binary_io_mode_identifier"
	.byte	0x1
	.2byte	0x168
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.asciz	"pic24_send_six_payload"
	.byte	0x1
	.2byte	0x30f
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c45
	.uleb128 0x22
	.asciz	"payload"
	.byte	0x1
	.2byte	0x30f
	.4byte	0x16e8
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x21
	.asciz	"pic424_write"
	.byte	0x1
	.2byte	0x320
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0x1cac
	.uleb128 0x22
	.asciz	"payload"
	.byte	0x1
	.2byte	0x320
	.4byte	0x16e8
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.asciz	"nops"
	.byte	0x1
	.2byte	0x320
	.4byte	0x1cac
	.byte	0x1
	.byte	0x5a
	.uleb128 0x23
	.4byte	.LBB183
	.4byte	.LBE183
	.uleb128 0x24
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x324
	.4byte	0x180
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.4byte	0x155d
	.4byte	.LBB184
	.4byte	.LBE184
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x180
	.uleb128 0x21
	.asciz	"send_bits"
	.byte	0x1
	.2byte	0x2d9
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x1d16
	.uleb128 0x26
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x15b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.asciz	"count"
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x1cac
	.byte	0x1
	.byte	0x5a
	.uleb128 0x27
	.asciz	"bits"
	.byte	0x1
	.2byte	0x2da
	.4byte	0xeb
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.4byte	.LBB186
	.4byte	.LBE186
	.uleb128 0x27
	.asciz	"index"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x180
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.asciz	"pic424_read"
	.byte	0x1
	.2byte	0x329
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x1d5c
	.uleb128 0x19
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x332
	.4byte	0xeb
	.uleb128 0x25
	.4byte	0x155d
	.4byte	.LBB187
	.4byte	.LBE187
	.uleb128 0x25
	.4byte	0x155d
	.4byte	.LBB189
	.4byte	.LBE189
	.byte	0x0
	.uleb128 0x21
	.asciz	"pic416_write"
	.byte	0x1
	.2byte	0x2fa
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x1dde
	.uleb128 0x26
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x15b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2fa
	.4byte	0x15b5
	.byte	0x1
	.byte	0x5b
	.uleb128 0x26
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2fb
	.4byte	0x15b5
	.byte	0x1
	.byte	0x5c
	.uleb128 0x27
	.asciz	"delay"
	.byte	0x1
	.2byte	0x2fc
	.4byte	0xeb
	.byte	0x1
	.byte	0x5a
	.uleb128 0x27
	.asciz	"id"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0xeb
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.4byte	.LBB191
	.4byte	.LBE191
	.uleb128 0x27
	.asciz	"index"
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x180
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.asciz	"binary_io_self_test"
	.byte	0x1
	.2byte	0x230
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x1e97
	.uleb128 0x22
	.asciz	"jumper_test"
	.byte	0x1
	.2byte	0x230
	.4byte	0x17ab
	.byte	0x1
	.byte	0x50
	.uleb128 0x27
	.asciz	"tick"
	.byte	0x1
	.2byte	0x231
	.4byte	0x1e97
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x27
	.asciz	"errors"
	.byte	0x1
	.2byte	0x233
	.4byte	0xeb
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.4byte	0x177e
	.4byte	.LBB192
	.4byte	.LBE192
	.4byte	0x1e6d
	.uleb128 0x29
	.4byte	0x179d
	.uleb128 0x25
	.4byte	0x152c
	.4byte	.LBB194
	.4byte	.LBE194
	.uleb128 0x25
	.4byte	0x1544
	.4byte	.LBB196
	.4byte	.LBE196
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LBB198
	.4byte	.LBE198
	.4byte	0x1e89
	.uleb128 0x24
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x239
	.4byte	0xeb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.4byte	0x17b0
	.4byte	.LBB199
	.4byte	.LBE199
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x10b
	.uleb128 0x21
	.asciz	"read_and_transmit_adc_measurement"
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x1
	.byte	0x5f
	.4byte	0x1ee0
	.uleb128 0x24
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x4ed
	.4byte	0x10b
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bitbang_pin_direction_set"
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1
	.4byte	0xeb
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x1f2c
	.uleb128 0x22
	.asciz	"direction_mask"
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x15b5
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.asciz	"bitbang_pin_state_set"
	.byte	0x1
	.2byte	0x216
	.byte	0x1
	.4byte	0xeb
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1fce
	.uleb128 0x22
	.asciz	"state_mask"
	.byte	0x1
	.2byte	0x216
	.4byte	0x15b5
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	0x17ef
	.4byte	.LBB201
	.4byte	.LBE201
	.4byte	0x1fa0
	.uleb128 0x29
	.4byte	0x1817
	.uleb128 0x25
	.4byte	0x14e9
	.4byte	.LBB203
	.4byte	.LBE203
	.uleb128 0x25
	.4byte	0x150a
	.4byte	.LBB205
	.4byte	.LBE205
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1825
	.4byte	.LBB207
	.4byte	.LBE207
	.uleb128 0x29
	.4byte	0x1842
	.uleb128 0x25
	.4byte	0x14bc
	.4byte	.LBB209
	.4byte	.LBE209
	.uleb128 0x25
	.4byte	0x14d2
	.4byte	.LBB211
	.4byte	.LBE211
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"reset_state"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2e
	.byte	0x1
	.asciz	"bp_binary_io_peripherals_set"
	.byte	0x1
	.2byte	0x24d
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x208a
	.uleb128 0x22
	.asciz	"inByte"
	.byte	0x1
	.2byte	0x24d
	.4byte	0xfa
	.byte	0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	0x17ef
	.4byte	.LBB213
	.4byte	.LBE213
	.4byte	0x205c
	.uleb128 0x29
	.4byte	0x1817
	.uleb128 0x25
	.4byte	0x14e9
	.4byte	.LBB215
	.4byte	.LBE215
	.uleb128 0x25
	.4byte	0x150a
	.4byte	.LBB217
	.4byte	.LBE217
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1825
	.4byte	.LBB219
	.4byte	.LBE219
	.uleb128 0x29
	.4byte	0x1842
	.uleb128 0x25
	.4byte	0x14bc
	.4byte	.LBB221
	.4byte	.LBE221
	.uleb128 0x25
	.4byte	0x14d2
	.4byte	.LBB223
	.4byte	.LBE223
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.asciz	"binary_io_raw_wire_mode_handler"
	.byte	0x1
	.2byte	0x292
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x23a7
	.uleb128 0x1c
	.asciz	"keep_looping"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0xbc0
	.uleb128 0x23
	.4byte	.LBB225
	.4byte	.LBE225
	.uleb128 0x24
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xeb
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.4byte	0x1a61
	.4byte	.LBB226
	.4byte	.LBE226
	.4byte	0x2100
	.uleb128 0x29
	.4byte	0x1a80
	.byte	0x0
	.uleb128 0x28
	.4byte	0x186b
	.4byte	.LBB229
	.4byte	.LBE229
	.4byte	0x2128
	.uleb128 0x29
	.4byte	0x1895
	.uleb128 0x23
	.4byte	.LBB231
	.4byte	.LBE231
	.uleb128 0x2f
	.4byte	0x18a2
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x18b5
	.4byte	.LBB234
	.4byte	.LBE234
	.4byte	0x2170
	.uleb128 0x29
	.4byte	0x18d9
	.uleb128 0x23
	.4byte	.LBB235
	.4byte	.LBE235
	.uleb128 0x2f
	.4byte	0x18e5
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	.LBB236
	.4byte	.LBE236
	.uleb128 0x2f
	.4byte	0x18f4
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.4byte	.LBB237
	.4byte	.LBE237
	.uleb128 0x30
	.4byte	0x1901
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1910
	.4byte	.LBB238
	.4byte	.LBE238
	.4byte	0x2187
	.uleb128 0x29
	.4byte	0x193a
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1947
	.4byte	.LBB240
	.4byte	.LBE240
	.4byte	0x21c5
	.uleb128 0x29
	.4byte	0x196a
	.uleb128 0x23
	.4byte	.LBB241
	.4byte	.LBE241
	.uleb128 0x2f
	.4byte	0x1976
	.byte	0x1
	.byte	0x5d
	.uleb128 0x30
	.4byte	0x1983
	.uleb128 0x23
	.4byte	.LBB242
	.4byte	.LBE242
	.uleb128 0x2f
	.4byte	0x1991
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x199f
	.4byte	.LBB243
	.4byte	.LBE243
	.4byte	0x234d
	.uleb128 0x29
	.4byte	0x19bc
	.uleb128 0x2a
	.4byte	.LBB245
	.4byte	.LBE245
	.4byte	0x21f0
	.uleb128 0x2f
	.4byte	0x19c9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1600
	.4byte	.LBB246
	.4byte	.LBE246
	.4byte	0x224e
	.uleb128 0x23
	.4byte	.LBB247
	.4byte	.LBE247
	.uleb128 0x2f
	.4byte	0x1623
	.byte	0x1
	.byte	0x59
	.uleb128 0x2a
	.4byte	.LBB248
	.4byte	.LBE248
	.4byte	0x2226
	.uleb128 0x2f
	.4byte	0x1634
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LBB249
	.4byte	.LBE249
	.4byte	0x223b
	.uleb128 0x2f
	.4byte	0x1654
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x23
	.4byte	.LBB250
	.4byte	.LBE250
	.uleb128 0x2f
	.4byte	0x1646
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1662
	.4byte	.LBB252
	.4byte	.LBE252
	.4byte	0x22b7
	.uleb128 0x23
	.4byte	.LBB253
	.4byte	.LBE253
	.uleb128 0x2f
	.4byte	0x1693
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.4byte	.LBB254
	.4byte	.LBE254
	.4byte	0x2293
	.uleb128 0x2f
	.4byte	0x16c0
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	.LBB255
	.4byte	.LBE255
	.uleb128 0x30
	.4byte	0x16cd
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	.LBB256
	.4byte	.LBE256
	.uleb128 0x2f
	.4byte	0x16a4
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	.LBB257
	.4byte	.LBE257
	.uleb128 0x2f
	.4byte	0x16b1
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x16ee
	.4byte	.LBB259
	.4byte	.LBE259
	.uleb128 0x23
	.4byte	.LBB260
	.4byte	.LBE260
	.uleb128 0x2f
	.4byte	0x1723
	.byte	0x1
	.byte	0x58
	.uleb128 0x2f
	.4byte	0x173a
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x2f
	.4byte	0x1750
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.4byte	0x1761
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.4byte	.LBB261
	.4byte	.LBE261
	.4byte	0x22ff
	.uleb128 0x2f
	.4byte	0x1770
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1579
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	0x2320
	.uleb128 0x29
	.4byte	0x15a8
	.uleb128 0x29
	.4byte	0x159c
	.uleb128 0x29
	.4byte	0x1590
	.byte	0x0
	.uleb128 0x28
	.4byte	0x15ba
	.4byte	.LBB264
	.4byte	.LBE264
	.4byte	0x2337
	.uleb128 0x29
	.4byte	0x15d0
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x15dd
	.4byte	.LBB266
	.4byte	.LBE266
	.uleb128 0x29
	.4byte	0x15f3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x19dc
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	0x2364
	.uleb128 0x29
	.4byte	0x19f8
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1a05
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	0x237b
	.uleb128 0x29
	.4byte	0x1a2c
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1a39
	.4byte	.LBB272
	.4byte	.LBE272
	.4byte	0x2392
	.uleb128 0x29
	.4byte	0x1a54
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1a8d
	.4byte	.LBB275
	.4byte	.LBE275
	.uleb128 0x29
	.4byte	0x1aab
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.asciz	"enter_binary_bitbang_mode"
	.byte	0x1
	.2byte	0x16a
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x24d9
	.uleb128 0x25
	.4byte	0x152c
	.4byte	.LBB277
	.4byte	.LBE277
	.uleb128 0x23
	.4byte	.LBB279
	.4byte	.LBE279
	.uleb128 0x24
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x170
	.4byte	0xeb
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.4byte	0x1ba7
	.4byte	.LBB280
	.4byte	.LBE280
	.uleb128 0x29
	.4byte	0x1bc8
	.uleb128 0x25
	.4byte	0x1544
	.4byte	.LBB282
	.4byte	.LBE282
	.uleb128 0x28
	.4byte	0x1abd
	.4byte	.LBB284
	.4byte	.LBE284
	.4byte	0x243e
	.uleb128 0x23
	.4byte	.LBB285
	.4byte	.LBE285
	.uleb128 0x30
	.4byte	0x1ad8
	.uleb128 0x30
	.4byte	0x1aeb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.4byte	0x1afb
	.4byte	.LBB286
	.4byte	.LBE286
	.uleb128 0x28
	.4byte	0x1b12
	.4byte	.LBB288
	.4byte	.LBE288
	.4byte	0x2477
	.uleb128 0x25
	.4byte	0x17c8
	.4byte	.LBB290
	.4byte	.LBE290
	.uleb128 0x25
	.4byte	0x17db
	.4byte	.LBB292
	.4byte	.LBE292
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1b31
	.4byte	.LBB294
	.4byte	.LBE294
	.4byte	0x24b2
	.uleb128 0x23
	.4byte	.LBB295
	.4byte	.LBE295
	.uleb128 0x30
	.4byte	0x1b58
	.uleb128 0x25
	.4byte	0x17c8
	.4byte	.LBB296
	.4byte	.LBE296
	.uleb128 0x25
	.4byte	0x17db
	.4byte	.LBB298
	.4byte	.LBE298
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x1b6d
	.4byte	.LBB300
	.4byte	.LBE300
	.uleb128 0x23
	.4byte	.LBB301
	.4byte	.LBE301
	.uleb128 0x2f
	.4byte	0x1b94
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.asciz	"PR2"
	.byte	0x4
	.2byte	0x37f
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T2CON"
	.byte	0x4
	.2byte	0x383
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x399
	.4byte	0x2505
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x283
	.uleb128 0x31
	.asciz	"T4CON"
	.byte	0x4
	.2byte	0x3be
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5RS"
	.byte	0x4
	.2byte	0x4ff
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5R"
	.byte	0x4
	.2byte	0x501
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5CON"
	.byte	0x4
	.2byte	0x503
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x6de
	.4byte	0x2558
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x315
	.uleb128 0x32
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x6e9
	.4byte	0x256b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x398
	.uleb128 0x31
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x715
	.4byte	0x258e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x517
	.uleb128 0x32
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x72b
	.4byte	0x25a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x666
	.uleb128 0x31
	.asciz	"LATB"
	.byte	0x4
	.2byte	0x72e
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x7a3
	.4byte	0x25c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x7ac
	.uleb128 0x32
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x80c
	.4byte	0x25d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x8b9
	.uleb128 0x32
	.4byte	.LASF16
	.byte	0x4
	.2byte	0xb31
	.4byte	0x25e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0xa0e
	.uleb128 0x33
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3d
	.4byte	0xb05
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.4byte	0xdae
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	0xeb
	.4byte	0x2618
	.uleb128 0x35
	.4byte	0x11b
	.byte	0xb
	.byte	0x0
	.uleb128 0x36
	.asciz	"PIC24_WRITE_AND_READ_PAYLOAD"
	.byte	0x1
	.byte	0x9d
	.4byte	0x2642
	.byte	0x5
	.byte	0x3
	.4byte	_PIC24_WRITE_AND_READ_PAYLOAD
	.uleb128 0x18
	.4byte	0x2608
	.uleb128 0x34
	.4byte	0xeb
	.4byte	0x2657
	.uleb128 0x35
	.4byte	0x11b
	.byte	0x2
	.byte	0x0
	.uleb128 0x36
	.asciz	"PIC24_NOP_PAYLOAD"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2676
	.byte	0x5
	.byte	0x3
	.4byte	_PIC24_NOP_PAYLOAD
	.uleb128 0x18
	.4byte	0x2647
	.uleb128 0x27
	.asciz	"io_state"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x14a2
	.byte	0x5
	.byte	0x3
	.4byte	_io_state
	.uleb128 0x31
	.asciz	"PR2"
	.byte	0x4
	.2byte	0x37f
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T2CON"
	.byte	0x4
	.2byte	0x383
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x399
	.4byte	0x2505
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"T4CON"
	.byte	0x4
	.2byte	0x3be
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5RS"
	.byte	0x4
	.2byte	0x4ff
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5R"
	.byte	0x4
	.2byte	0x501
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"OC5CON"
	.byte	0x4
	.2byte	0x503
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x6de
	.4byte	0x2558
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x6e9
	.4byte	0x256b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x715
	.4byte	0x258e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x72b
	.4byte	0x25a1
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.asciz	"LATB"
	.byte	0x4
	.2byte	0x72e
	.4byte	0x1e97
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x7a3
	.4byte	0x25c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x80c
	.4byte	0x25d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF16
	.byte	0x4
	.2byte	0xb31
	.4byte	0x25e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3d
	.4byte	0xb05
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.4byte	0xdae
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x85
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x279a
	.4byte	0x1ee0
	.asciz	"bitbang_pin_direction_set"
	.4byte	0x1f2c
	.asciz	"bitbang_pin_state_set"
	.4byte	0x1fe9
	.asciz	"bp_binary_io_peripherals_set"
	.4byte	0x23a7
	.asciz	"enter_binary_bitbang_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x240
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x279a
	.4byte	0xeb
	.asciz	"uint8_t"
	.4byte	0x10b
	.asciz	"uint16_t"
	.4byte	0x12b
	.asciz	"uint32_t"
	.4byte	0x180
	.asciz	"size_t"
	.4byte	0x264
	.asciz	"tagT2CONBITS"
	.4byte	0x283
	.asciz	"T2CONBITS"
	.4byte	0x295
	.asciz	"tagTRISABITS"
	.4byte	0x315
	.asciz	"TRISABITS"
	.4byte	0x327
	.asciz	"tagPORTABITS"
	.4byte	0x398
	.asciz	"PORTABITS"
	.4byte	0x3aa
	.asciz	"tagTRISBBITS"
	.4byte	0x517
	.asciz	"TRISBBITS"
	.4byte	0x529
	.asciz	"tagPORTBBITS"
	.4byte	0x666
	.asciz	"PORTBBITS"
	.4byte	0x78b
	.asciz	"tagAD1CON1BITS"
	.4byte	0x7ac
	.asciz	"AD1CON1BITS"
	.4byte	0x7c0
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x8b9
	.asciz	"AD1PCFGBITS"
	.4byte	0x9ef
	.asciz	"tagRPOR5BITS"
	.4byte	0xa0e
	.asciz	"RPOR5BITS"
	.4byte	0xb05
	.asciz	"mode_configuration_t"
	.4byte	0xc4e
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0xc97
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0xdae
	.asciz	"bus_pirate_configuration_t"
	.4byte	0xf20
	.asciz	"io_command_group"
	.4byte	0x10a6
	.asciz	"wire_generic_command"
	.4byte	0x111c
	.asciz	"pic_mode"
	.4byte	0x11e1
	.asciz	"pic_command"
	.4byte	0x124b
	.asciz	"smps_command"
	.4byte	0x1444
	.asciz	"bitbang_command"
	.4byte	0x14a2
	.asciz	"binary_io_state_t"
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
	.asciz	"value"
.LASF13:
	.asciz	"PORTBbits"
.LASF1:
	.asciz	"command"
.LASF9:
	.asciz	"T2CONbits"
.LASF8:
	.asciz	"input_byte"
.LASF7:
	.asciz	"counter"
.LASF0:
	.asciz	"pic_mode"
.LASF15:
	.asciz	"AD1PCFGbits"
.LASF2:
	.asciz	"data_low"
.LASF18:
	.asciz	"bus_pirate_configuration"
.LASF16:
	.asciz	"RPOR5bits"
.LASF5:
	.asciz	"commands_count"
.LASF10:
	.asciz	"TRISAbits"
.LASF6:
	.asciz	"offset"
.LASF3:
	.asciz	"data_high"
.LASF11:
	.asciz	"PORTAbits"
.LASF17:
	.asciz	"mode_configuration"
.LASF12:
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
