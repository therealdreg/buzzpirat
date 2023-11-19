	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\aux_pin.c"
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
	.type	_setup_prescaler_divisor,@function
_setup_prescaler_divisor:
.LFB24:
	.file 1 "../aux_pin.c"
	.loc 1 118 0
	.set ___PA___,1
	.loc 1 122 0
	sub	w0,#3,[w15]
	.set ___BP___,61
	bra	gtu,.L2
	.loc 1 123 0
	bset.b	_T2CONbits,#5
	.loc 1 124 0
	bset.b	_T2CONbits,#4
	.loc 1 126 0
	mov	#62,w0
	bra	.L3
.L2:
	.loc 1 131 0
	sub	w0,#30,[w15]
	.set ___BP___,61
	bra	gtu,.L4
	.loc 1 132 0
	bset.b	_T2CONbits,#5
	.loc 1 133 0
	bclr.b	_T2CONbits,#4
	.loc 1 135 0
	mov	#250,w0
	bra	.L3
.L4:
	.loc 1 140 0
	mov	#244,w1
	sub	w0,w1,[w15]
	.set ___BP___,61
	bra	gtu,.L5
	.loc 1 141 0
	bclr.b	_T2CONbits,#5
	.loc 1 142 0
	bset.b	_T2CONbits,#4
	.loc 1 144 0
	mov	#2000,w0
	bra	.L3
.L5:
	.loc 1 149 0
	bclr.b	_T2CONbits,#5
	.loc 1 150 0
	bclr.b	_T2CONbits,#4
	.loc 1 152 0
	mov	#16000,w0
.L3:
	.loc 1 153 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_setup_prescaler_divisor, .-_setup_prescaler_divisor
	.align	2
	.type	_poll_frequency_counter_value,@function
_poll_frequency_counter_value:
.LFB30:
	.loc 1 560 0
	.set ___PA___,1
	.loc 1 565 0
	setm	w0
	mov	w0,_PR3
	.loc 1 566 0
	mov	w0,_PR2
	.loc 1 569 0
	clr	_TMR3HLD
	.loc 1 570 0
	clr	_TMR2
	.loc 1 573 0
	clr	_TMR5HLD
	.loc 1 574 0
	clr	_TMR4
	.loc 1 577 0
	bset.b	_T4CONbits,#3
	.loc 1 580 0
	mov	#244,w0
	mov	w0,_PR5
	.loc 1 581 0
	mov	#9216,w0
	mov	w0,_PR4
	.loc 1 584 0
	bclr.b	_IFS1bits+1,#4
	.loc 1 587 0
	bset.b	_T4CONbits+1,#7
	.loc 1 590 0
	bset.b	_T2CONbits+1,#7
	.loc 1 593 0
	mov	#4096,w1
.L7:
	mov	_IFS1bits,w2
	and	w1,w2,w0
	.set ___BP___,86
	bra	z,.L7
	.loc 1 597 0
	bclr.b	_T2CONbits+1,#7
	.loc 1 598 0
	bclr.b	_T4CONbits+1,#7
	.loc 1 601 0
	mov	_TMR2,w2
	.loc 1 602 0
	mov	_TMR3HLD,w0
	clr	w1
	.loc 1 604 0
	sl	w0,#0,w1
	mov	#0,w0
	add	w2,w0,w0
	addc	w1,#0,w1
	.loc 1 605 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_poll_frequency_counter_value, .-_poll_frequency_counter_value
	.align	2
	.type	_average_sample_frequency,@function
_average_sample_frequency:
.LFB31:
	.loc 1 615 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov	w0,w2
	.loc 1 620 0
	bclr.b	_IFS0bits,#5
	.loc 1 621 0
	bclr.b	_IFS0bits,#1
	.loc 1 624 0
	mov	#-7937,w1
	mov	_RPINR7bits,w0
	and	w1,w0,w1
	mov	#2560,w0
	ior	w0,w1,w0
	mov	w0,_RPINR7bits
	.loc 1 625 0
	mov	#-32,w0
	and	_RPINR7bits,WREG
	ior	#10,w0
	mov	w0,_RPINR7bits
	.loc 1 715 0
	clr	_TMR3HLD
	.loc 1 716 0
	clr	_TMR2
	.loc 1 732 0
	mov	#-32760,w0
	mov	w0,_T2CON
	.loc 1 747 0
	mov	#3,w0
	mov	w0,_IC2CON
	.loc 1 763 0
	mov	#131,w0
	mov	w0,_IC1CON
	.loc 1 769 0
	btst.b	_IC1CONbits,#3
	.set ___BP___,9
	bra	z,.L10
.L22:
	.loc 1 770 0
	mov	_IC1BUF,w0
	.loc 1 769 0
	btst.b	_IC1CONbits,#3
	.set ___BP___,91
	bra	nz,.L22
.L10:
	.loc 1 774 0
	btst.b	_IC2CONbits,#3
	.set ___BP___,9
	bra	z,.L20
.L21:
	.loc 1 775 0
	mov	_IC2BUF,w0
	.loc 1 774 0
	btst.b	_IC2CONbits,#3
	.set ___BP___,91
	bra	nz,.L21
.L20:
	.loc 1 778 0
	btst.b	_IC1CONbits,#3
	.set ___BP___,86
	bra	z,.L20
	.loc 1 781 0
	mov	_IC1BUF,w10
	.loc 1 782 0
	mov	_IC2BUF,w8
	.loc 1 783 0
	mul.uu	w0,#0,w0
	.loc 1 785 0
	cp0	w2
	.set ___BP___,9
	bra	z,.L14
	.loc 1 781 0
	clr	w11
	.loc 1 782 0
	clr	w9
	.loc 1 785 0
	clr	w3
	.loc 1 783 0
	mul.uu	w0,#0,w0
	bra	.L27
.L18:
	.loc 1 794 0
	mov.d	w4,w8
	.loc 1 795 0
	mov.d	w6,w10
.L27:
	.loc 1 787 0
	btst.b	_IC1CONbits,#3
	.set ___BP___,86
	bra	z,.L27
	.loc 1 790 0
	mov	_IC1BUF,w6
	clr	w7
	.loc 1 791 0
	mov	_IC2BUF,w4
	clr	w5
	.loc 1 793 0
	add	w6,w0,w0
	addc	w7,w1,w1
	sub	w0,w10,w0
	subb	w1,w11,w1
	sub	w4,w8,w8
	subb	w5,w9,w9
	sl	w8,#0,w9
	mov	#0,w8
	.loc 1 792 0
	add	w8,w0,w0
	addc	w9,w1,w1
	.loc 1 785 0
	inc	w3,w3
	sub	w2,w3,[w15]
	.set ___BP___,91
	bra	gtu,.L18
.L14:
	.loc 1 844 0
	clr	_IC1CON
	.loc 1 859 0
	clr	_IC2CON
	.loc 1 862 0
	bclr.b	_T2CONbits+1,#7
	.loc 1 866 0
	clr	w3
	call	___udivsi3
	.loc 1 867 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE31:
	.size	_average_sample_frequency, .-_average_sample_frequency
	.align	2
	.global	_bp_update_pwm	; export
	.type	_bp_update_pwm,@function
_bp_update_pwm:
.LFB26:
	.loc 1 159 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov.d	w0,w8
	.loc 1 164 0
	mov	w8,_state
	.loc 1 165 0
	mov	w9,_state+2
.LBB16:
.LBB17:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE17:
.LBE16:
	.loc 1 195 0
	clr	_OC5CON
	.loc 1 199 0
	cp0	w8
	.set ___BP___,38
	bra	nz,.L29
	.loc 1 200 0
	mov	#-32,w0
	and	_RPOR5bits
	.loc 1 201 0
	mov	#_state+4,w0
	clr.b	[w0]
	.loc 1 202 0
	bra	.L28
.L29:
	.loc 1 205 0
	mov	w8,w0
	call	_setup_prescaler_divisor
	.loc 1 206 0
	repeat	#__TARGET_DIVIDE_CYCLES
	div.uw	w0,w8
		
	dec	w0,w8
	.loc 1 207 0
	mov	w8,_PR2
	.loc 1 208 0
	mul.ss	w8,w9,w8
	lsr	w8,#2,w8
	mov	#5243,w0
	mul.uu	w8,w0,w8
	lsr	w9,w0
	.loc 1 211 0
	mov	#-32,w1
	mov	_RPOR5bits,w2
	and	w1,w2,w1
	ior	#22,w1
	mov	w1,_RPOR5bits
	.loc 1 214 0
	mov	w0,_OC5R
	.loc 1 215 0
	mov	w0,_OC5RS
	.loc 1 246 0
	mov	#6,w0
	mov	w0,_OC5CON
	.loc 1 249 0
	bset.b	_T2CONbits+1,#7
	.loc 1 250 0
	mov.b	#2,w1
	mov	#_state+4,w0
	mov.b	w1,[w0]
.L28:
	.loc 1 251 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE26:
	.size	_bp_update_pwm, .-_bp_update_pwm
	.align	2
	.global	_bp_update_duty_cycle	; export
	.type	_bp_update_duty_cycle,@function
_bp_update_duty_cycle:
.LFB25:
	.loc 1 155 0
	.set ___PA___,1
	.loc 1 156 0
	mov	w0,w1
	mov	_state,w0
	call	_bp_update_pwm
	.loc 1 157 0
	return	
	.set ___PA___,0
.LFE25:
	.size	_bp_update_duty_cycle, .-_bp_update_duty_cycle
	.align	2
	.global	_bp_pwm_setup	; export
	.type	_bp_pwm_setup,@function
_bp_pwm_setup:
.LFB27:
	.loc 1 253 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	mov.d	w10,[w15++]
.LCFI4:
	mov	w12,[w15++]
.LCFI5:
.LBB18:
.LBB19:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE19:
.LBE18:
	.loc 1 289 0
	clr	_OC5CON
	.loc 1 293 0
	mov	#_state+4,w0
	mov.b	#2,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,72
	bra	nz,.L33
	.loc 1 295 0
	mov	#-32,w0
	and	_RPOR5bits
	.loc 1 296 0
	mov	#tbloffset(_BPMSG1028_str),w0
	mov	#tblpage(_BPMSG1028_str),w1
	call	_bp_message_write_line
	.loc 1 297 0
	mov	#_state+4,w0
	clr.b	[w0]
	.loc 1 299 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w0
	cp0.b	w0
	.set ___BP___,39
	bra	z,.L32
.L33:
	.loc 1 306 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 307 0
	call	_consumewhitechars
	.loc 1 308 0
	call	_getint
	mov	w0,w10
	.loc 1 309 0
	call	_consumewhitechars
	.loc 1 310 0
	call	_getint
	.loc 1 312 0
	dec	w10,w2
	mov	#3998,w1
	sub	w2,w1,[w15]
	.set ___BP___,50
	bra	gtu,.L35
	.loc 1 310 0
	asr	w0,#15,w1
	call	___floatsisf
	mov.d	w0,w8
	.loc 1 312 0
	mul.uu	w2,#0,w2
		
	call	___gtsf2
	cp0	w0
	.set ___BP___,50
	bra	le,.L35
	.loc 1 313 0
	mov	#0,w2
	mov	#17096,w3
	mov.d	w8,w0
	call	___ltsf2
	cp0	w0
	.set ___BP___,50
	bra	ge,.L35
	.loc 1 322 0
	mov	w10,w0
	call	_setup_prescaler_divisor
	.loc 1 323 0
	repeat	#__TARGET_DIVIDE_CYCLES
	div.uw	w0,w10
		
	dec	w0,w12
.L38:
	.loc 1 331 0
	mul.uu	w12,#1,w0
	call	___floatunsisf
	mov.d	w0,w10
	.loc 1 330 0
	mov	#0,w2
	mov	#17096,w3
	mov.d	w8,w0
	call	___divsf3
	mov.d	w0,w2
	.loc 1 331 0
	mov.d	w10,w0
	call	___mulsf3
	call	___fixunssfsi
	.loc 1 334 0
	mov	#-32,w2
	mov	_RPOR5bits,w3
	and	w2,w3,w2
	ior	#22,w2
	mov	w2,_RPOR5bits
	.loc 1 336 0
	mov	w0,_OC5R
	.loc 1 337 0
	mov	w0,_OC5RS
	.loc 1 369 0
	mov	#6,w0
	mov	w0,_OC5CON
	.loc 1 373 0
	mov	w12,_PR2
	.loc 1 374 0
	bset.b	_T2CONbits+1,#7
	.loc 1 376 0
	mov	#tbloffset(_BPMSG1034_str),w0
	mov	#tblpage(_BPMSG1034_str),w1
	call	_bp_message_write_line
	.loc 1 377 0
	mov.b	#2,w1
	mov	#_state+4,w0
	mov.b	w1,[w0]
	bra	.L32
.L35:
	.loc 1 316 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 317 0
	mov	#tbloffset(_BPMSG1029_str),w0
	mov	#tblpage(_BPMSG1029_str),w1
	call	_bp_message_write_line
	.loc 1 318 0
	mov	#tbloffset(_BPMSG1030_str),w0
	mov	#tblpage(_BPMSG1030_str),w1
	call	_bp_message_write_buffer
	.loc 1 319 0
	clr	w3
	mov	#4000,w2
	mov	#1,w1
	mov	#50,w0
	call	_getnumber
	mov	w0,w8
	.loc 1 322 0
	mov	w8,w0
	call	_setup_prescaler_divisor
	.loc 1 323 0
	repeat	#__TARGET_DIVIDE_CYCLES
	div.uw	w0,w8
		
	dec	w0,w12
	.loc 1 326 0
	mov	#tbloffset(_BPMSG1033_str),w0
	mov	#tblpage(_BPMSG1033_str),w1
	call	_bp_message_write_buffer
	.loc 1 327 0
	clr	w3
	mov	#99,w2
	mov	w3,w1
	mov	#50,w0
	call	_getnumber
	asr	w0,#15,w1
	call	___floatsisf
	mov.d	w0,w8
	bra	.L38
.L32:
	.loc 1 378 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_bp_pwm_setup, .-_bp_pwm_setup
	.align	2
	.global	_bp_frequency_counter_setup	; export
	.type	_bp_frequency_counter_setup,@function
_bp_frequency_counter_setup:
.LFB28:
	.loc 1 380 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI6:
	mov.d	w10,[w15++]
.LCFI7:
	.loc 1 384 0
	mov	#_state+4,w0
	mov.b	#2,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,80
	bra	nz,.L42
	.loc 1 385 0
	mov	#tbloffset(_BPMSG1037_str),w0
	mov	#tblpage(_BPMSG1037_str),w1
	call	_bp_message_write_line
	.loc 1 386 0
	bra	.L41
.L42:
	.loc 1 389 0
	mov	#tbloffset(_BPMSG1038_str),w0
	mov	#tblpage(_BPMSG1038_str),w1
	call	_bp_message_write_buffer
.LBB20:
.LBB21:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE21:
.LBE20:
	.loc 1 393 0
	bset.b	_TRISBbits+1,#2
	.loc 1 394 0
	mov	#-32,w0
	and	_RPINR3bits,WREG
	ior	#10,w0
	mov	w0,_RPINR3bits
	.loc 1 408 0
	mov	#58,w0
	mov	w0,_T2CON
	.loc 1 412 0
	call	_poll_frequency_counter_value
	.loc 1 414 0
	mov.d	w0,w8
	mul.uu	w10,#0,w10
	mov	#16383,w2
	sub	w0,w2,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,29
	bra	leu,.L44
	.loc 1 416 0
	.set ___BP___,0 ; (8,4)
	sl	w11,#8,w11
	lsr	w10,#8,w0
	ior	w0,w11,w11
	sl	w10,#8,w10
	lsr	w9,#8,w0
	ior	w0,w10,w10
	sl	w9,#8,w9
	lsr	w8,#8,w0
	ior	w0,w9,w9
	sl	w8,#8,w8
	bra	.L45
.L44:
	.loc 1 419 0
	mov	#tbloffset(_BPMSG1245_str),w0
	mov	#tblpage(_BPMSG1245_str),w1
	call	_bp_message_write_buffer
	.loc 1 420 0
	bclr.b	_T2CONbits,#4
	.loc 1 421 0
	bclr.b	_T2CONbits,#5
	.loc 1 422 0
	call	_poll_frequency_counter_value
	mov.d	w0,w8
	mul.uu	w10,#0,w10
.L45:
	.loc 1 425 0
	mov	#3999,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	leu,.L46
	.loc 1 426 0
	mov.d	w8,w0
	call	_bp_write_dec_dword_friendly
	.loc 1 427 0
	mov	#tbloffset(_MSG_PWM_HZ_MARKER_str),w0
	mov	#tblpage(_MSG_PWM_HZ_MARKER_str),w1
	call	_bp_message_write_line
	bra	.L47
.L46:
	.loc 1 429 0
	sub	w8,#0,[w15]
	subb	w9,#0,[w15]
	subb	w10,#0,[w15]
	subb	w11,#0,[w15]
	.set ___BP___,50
	bra	z,.L48
	.loc 1 430 0
	mov	#tbloffset(_BPMSG1245_str),w0
	mov	#tblpage(_BPMSG1245_str),w1
	call	_bp_message_write_buffer
	.loc 1 431 0
	mov	w8,w0
	call	_average_sample_frequency
	mul.uu	w2,#0,w2
	.loc 1 432 0
	mov	#6784,w4
	mov	#6,w5
	mul.uu	w6,#0,w6
	cp	w0,w4
	cpb	w1,w5
	cpb	w2,w6
	cpb	w3,w7
	.set ___BP___,71
	bra	leu,.L49
	.loc 1 433 0
	call	___floatundisf
	mov.d	w0,w2
	mov	#17335,w0
	mov	#21434,w1
	call	___divsf3
	call	___fixunssfdi
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 434 0
	mov	#34464,w4
	mov	#1,w5
	mul.uu	w6,#0,w6
	call	___udivdi3
	call	_bp_write_dec_dword_friendly
	.loc 1 435 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 436 0
	mov	#34464,w4
	mov	#1,w5
	mul.uu	w6,#0,w6
	mov.d	w8,w0
	mov.d	w10,w2
	call	___umoddi3
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 437 0
	mov	#9999,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L50
	.loc 1 438 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L50:
	.loc 1 440 0
	mov	#999,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L51
	.loc 1 441 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L51:
	.loc 1 443 0
	mov	#99,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L52
	.loc 1 444 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L52:
	.loc 1 446 0
	mov	#9,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L53
	.loc 1 447 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L53:
	.loc 1 449 0
	mov.d	w8,w0
	call	_bp_write_dec_dword
	.loc 1 450 0
	bra	.L54
.L49:
	.loc 1 453 0
	mov	#60955,w4
	mov	#1,w5
	mul.uu	w6,#0,w6
	cp	w0,w4
	cpb	w1,w5
	cpb	w2,w6
	cpb	w3,w7
	.set ___BP___,71
	bra	leu,.L55
	.loc 1 454 0
	call	___floatundisf
	mov.d	w0,w2
	mov	#761,w0
	mov	#21013,w1
	call	___divsf3
	call	___fixunssfdi
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 455 0
	mov	#10000,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	call	___udivdi3
	call	_bp_write_dec_dword_friendly
	.loc 1 456 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 457 0
	mov	#10000,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	mov.d	w8,w0
	mov.d	w10,w2
	call	___umoddi3
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 458 0
	mov	#999,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L56
	.loc 1 459 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L56:
	.loc 1 461 0
	mov	#99,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L57
	.loc 1 462 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L57:
	.loc 1 464 0
	mov	#9,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L58
	.loc 1 465 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L58:
	.loc 1 467 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 468 0
	bra	.L54
.L55:
	.loc 1 471 0
	mov	#40000,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	cp	w0,w4
	cpb	w1,w5
	cpb	w2,w6
	cpb	w3,w7
	.set ___BP___,71
	bra	leu,.L59
	.loc 1 472 0
	call	___floatundisf
	mov.d	w0,w2
	mov	#27432,w0
	mov	#20590,w1
	call	___divsf3
	call	___fixunssfdi
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 473 0
	mov	#1000,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	call	___udivdi3
	call	_bp_write_dec_dword_friendly
	.loc 1 474 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 475 0
	mov	#1000,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	mov.d	w8,w0
	mov.d	w10,w2
	call	___umoddi3
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 476 0
	mov	#99,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L60
	.loc 1 477 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L60:
	.loc 1 479 0
	mov	#9,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L61
	.loc 1 480 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L61:
	.loc 1 482 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 483 0
	bra	.L54
.L59:
	.loc 1 486 0
	mov	#12649,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	cp	w0,w4
	cpb	w1,w5
	cpb	w2,w6
	cpb	w3,w7
	.set ___BP___,50
	bra	leu,.L62
	.loc 1 487 0
	call	___floatundisf
	mov.d	w0,w2
	mov	#48160,w0
	mov	#20158,w1
	call	___divsf3
	call	___fixunssfdi
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 488 0
	mov	#100,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	call	___udivdi3
	call	_bp_write_dec_dword_friendly
	.loc 1 489 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 490 0
	mov	#100,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	mov.d	w8,w0
	mov.d	w10,w2
	call	___umoddi3
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 491 0
	mov	#9,w0
	mov	#0,w1
	mul.uu	w2,#0,w2
	cp	w8,w0
	cpb	w9,w1
	cpb	w10,w2
	cpb	w11,w3
	.set ___BP___,71
	bra	gtu,.L63
	.loc 1 492 0
	mov.b	#48,w0
	call	_user_serial_transmit_character
.L63:
	.loc 1 494 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 495 0
	bra	.L54
.L62:
	.loc 1 498 0
	call	___floatundisf
	mov.d	w0,w2
	mov	#38528,w0
	mov	#19736,w1
	call	___divsf3
	call	___fixunssfdi
	mov.d	w2,w10
	mov.d	w0,w8
	.loc 1 499 0
	mov	#10,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	call	___udivdi3
	call	_bp_write_dec_dword_friendly
	.loc 1 500 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 501 0
	mov	#10,w4
	mov	#0,w5
	mul.uu	w6,#0,w6
	mov.d	w8,w0
	mov.d	w10,w2
	call	___umoddi3
	call	_bp_write_dec_byte
.L54:
	.loc 1 504 0
	mov	#tbloffset(_MSG_PWM_HZ_MARKER_str),w0
	mov	#tblpage(_MSG_PWM_HZ_MARKER_str),w1
	call	_bp_message_write_line
	bra	.L47
.L48:
	.loc 1 506 0
	mov	#tbloffset(_MSG_PWM_FREQUENCY_TOO_LOW_str),w0
	mov	#tblpage(_MSG_PWM_FREQUENCY_TOO_LOW_str),w1
	call	_bp_message_write_line
.L47:
	.loc 1 511 0
	mov	#31,w0
	ior	_RPINR3bits
.LBB22:
.LBB23:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.L41:
.LBE23:
.LBE22:
	.loc 1 513 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_bp_frequency_counter_setup, .-_bp_frequency_counter_setup
	.align	2
	.global	_bp_measure_frequency	; export
	.type	_bp_measure_frequency,@function
_bp_measure_frequency:
.LFB29:
	.loc 1 515 0
	.set ___PA___,1
.LBB24:
.LBB25:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE25:
.LBE24:
	.loc 1 519 0
	bset.b	_TRISBbits+1,#2
	.loc 1 522 0
	mov	#-32,w0
	and	_RPINR3bits,WREG
	ior	#10,w0
	mov	w0,_RPINR3bits
	.loc 1 538 0
	mov	#58,w0
	mov	w0,_T2CON
	.loc 1 541 0
	call	_poll_frequency_counter_value
	mov.d	w0,w2
	.loc 1 542 0
	mov	#255,w0
	sub	w2,w0,[w15]
	subb	w3,#0,[w15]
	.set ___BP___,38
	bra	leu,.L65
	.loc 1 544 0
	sl	w3,#8,w4
	lsr	w2,#8,w5
	ior	w4,w5,w5
	sl	w2,#8,w4
	bra	.L66
.L65:
	.loc 1 547 0
	bclr.b	_T2CONbits,#4
	.loc 1 548 0
	bclr.b	_T2CONbits,#5
	.loc 1 549 0
	call	_poll_frequency_counter_value
	mov.d	w0,w4
.L66:
	.loc 1 553 0
	mov.w	#31,w0
	ior	_RPINR3bits
.LBB26:
.LBB27:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE27:
.LBE26:
	.loc 1 558 0
	mov.d	w4,w0
	return	
	.set ___PA___,0
.LFE29:
	.size	_bp_measure_frequency, .-_bp_measure_frequency
	.align	2
	.global	_bp_aux_pin_set_high_impedance	; export
	.type	_bp_aux_pin_set_high_impedance,@function
_bp_aux_pin_set_high_impedance:
.LFB32:
	.loc 1 869 0
	.set ___PA___,1
	.loc 1 871 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	.set ___BP___,61
	bra	nz,.L68
	.loc 1 872 0
	bset.b	_TRISBbits+1,#2
	bra	.L69
.L68:
	.loc 1 874 0
	bset.b	_TRISBbits,#6
.L69:
	.loc 1 899 0
	mov	#tbloffset(_BPMSG1039_str),w0
	mov	#tblpage(_BPMSG1039_str),w1
	call	_bp_message_write_buffer
	.loc 1 900 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_bp_aux_pin_set_high_impedance, .-_bp_aux_pin_set_high_impedance
	.align	2
	.global	_bp_aux_pin_set_high	; export
	.type	_bp_aux_pin_set_high,@function
_bp_aux_pin_set_high:
.LFB33:
	.loc 1 902 0
	.set ___PA___,1
	.loc 1 904 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	.set ___BP___,61
	bra	nz,.L71
	.loc 1 905 0
	bclr.b	_TRISBbits+1,#2
	.loc 1 906 0
	bset.b	_PORTBbits+1,#2
	bra	.L72
.L71:
	.loc 1 908 0
	bclr.b	_TRISBbits,#6
	.loc 1 909 0
	bset.b	_PORTBbits,#6
.L72:
	.loc 1 938 0
	mov	#tbloffset(_BPMSG1040_str),w0
	mov	#tblpage(_BPMSG1040_str),w1
	call	_bp_message_write_line
	.loc 1 939 0
	return	
	.set ___PA___,0
.LFE33:
	.size	_bp_aux_pin_set_high, .-_bp_aux_pin_set_high
	.align	2
	.global	_bp_aux_pin_set_low	; export
	.type	_bp_aux_pin_set_low,@function
_bp_aux_pin_set_low:
.LFB34:
	.loc 1 941 0
	.set ___PA___,1
	.loc 1 943 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	.set ___BP___,61
	bra	nz,.L74
	.loc 1 944 0
	bclr.b	_TRISBbits+1,#2
	.loc 1 945 0
	bclr.b	_PORTBbits+1,#2
	bra	.L75
.L74:
	.loc 1 947 0
	bclr.b	_TRISBbits,#6
	.loc 1 948 0
	bclr.b	_PORTBbits,#6
.L75:
	.loc 1 977 0
	mov	#tbloffset(_BPMSG1041_str),w0
	mov	#tblpage(_BPMSG1041_str),w1
	call	_bp_message_write_line
	.loc 1 978 0
	return	
	.set ___PA___,0
.LFE34:
	.size	_bp_aux_pin_set_low, .-_bp_aux_pin_set_low
	.align	2
	.global	_bp_aux_pin_read	; export
	.type	_bp_aux_pin_read,@function
_bp_aux_pin_read:
.LFB35:
	.loc 1 980 0
	.set ___PA___,1
	.loc 1 982 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	.set ___BP___,61
	bra	nz,.L77
	.loc 1 983 0
	bset.b	_TRISBbits+1,#2
	.loc 1 984 0
	nop	
	.loc 1 985 0
	nop	
	.loc 1 986 0
	mov	_PORTBbits,w0
	sl	w0,#5,w0
	lsr	w0,#15,w0
	bra	.L78
.L77:
	.loc 1 989 0
	bset.b	_TRISBbits,#6
	.loc 1 990 0
	nop	
	.loc 1 991 0
	nop	
	.loc 1 992 0
	mov	_PORTBbits,w0
	sl	w0,#9,w0
	lsr	w0,#15,w0
.L78:
	.loc 1 1024 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_bp_aux_pin_read, .-_bp_aux_pin_read
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.global	_bp_servo_setup	; export
	.type	_bp_servo_setup,@function
_bp_servo_setup:
.LFB36:
	.loc 1 1026 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI8:
	mov.d	w8,[w15++]
.LCFI9:
	mov.d	w10,[w15++]
.LCFI10:
	mov.d	w12,[w15++]
.LCFI11:
	mov	w14,[w15++]
.LCFI12:
.LBB28:
.LBB29:
	.loc 1 1162 0
	clr	_T4CON
	.loc 1 1176 0
	clr	_T2CON
.LBE29:
.LBE28:
	.loc 1 1063 0
	clr	_OC5CON
	.loc 1 1066 0
	mov	#_state+4,w0
	mov.b	#2,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,51
	bra	nz,.L80
	.loc 1 1067 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	.loc 1 1066 0
	mov.b	[w1+w0],w0
	cp0.b	w0
	.set ___BP___,79
	bra	nz,.L80
	.loc 1 1068 0
	mov	#-32,w0
	and	_RPOR5bits
	.loc 1 1069 0
	mov	#tbloffset(_BPMSG1028_str),w0
	mov	#tblpage(_BPMSG1028_str),w1
	call	_bp_message_write_line
	.loc 1 1070 0
	mov	#_state+4,w0
	clr.b	[w0]
	.loc 1 1071 0
	bra	.L79
.L80:
	.loc 1 1076 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1077 0
	call	_consumewhitechars
	.loc 1 1078 0
	call	_getint
	.loc 1 1079 0
	mov	#_mode_configuration+2,w1
	cp0.b	[w1]
	.set ___BP___,29
	bra	lt,.L82
	.loc 1 1078 0
	asr	w0,#15,w1
	call	___floatsisf
	mov.d	w0,w8
	.loc 1 1079 0
	mov	#0,w2
	mov	#17204,w3
	call	___gtsf2
	cp0	w0
	.set ___BP___,50
	bra	le,.L89
.L82:
	.loc 1 1080 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 1081 0
	mov	#tbloffset(_BPMSG1254_str),w0
	mov	#tblpage(_BPMSG1254_str),w1
	call	_bp_message_write_line
	.loc 1 1082 0
	clr	w3
	mov	#180,w2
	mov	w3,w1
	mov	#90,w0
	call	_getnumber
	asr	w0,#15,w1
	call	___floatsisf
	mov.d	w0,w8
	.loc 1 1083 0
	mov.b	#1,w3
	mov.b	w3,[w15-16]
	bra	.L85
.L89:
	.loc 1 1074 0
	clr.b	w0
	mov.b	w0,[w15-16]
.L85:
	.loc 1 1092 0
	mov	#-32,w12
	.loc 1 1126 0
	mov	#6,w13
	.loc 1 1131 0
	mov	#1250,w14
	.loc 1 1135 0
	mov	#tbloffset(_BPMSG1255_str),w10
	mov	#tblpage(_BPMSG1255_str),w11
.L90:
	.loc 1 1087 0
	bset.b	_T2CONbits,#5
	.loc 1 1088 0
	bset.b	_T2CONbits,#4
	.loc 1 1090 0
	mov	#49152,w2
	mov	#17754,w3
	mov.d	w8,w0
	call	___divsf3
	.loc 1 1091 0
	mov	#16384,w2
	mov	#17564,w3
	call	___mulsf3
	mov	#0,w2
	mov	#17016,w3
	call	___addsf3
	call	___fixunssfsi
	.loc 1 1092 0
	mov	_RPOR5bits,w3
	and	w12,w3,w2
	ior	#22,w2
	mov	w2,_RPOR5bits
	.loc 1 1093 0
	mov	w0,_OC5R
	.loc 1 1094 0
	mov	w0,_OC5RS
	.loc 1 1126 0
	mov	w13,_OC5CON
	.loc 1 1131 0
	mov	w14,_PR2
	.loc 1 1134 0
	bset.b	_T2CONbits+1,#7
	.loc 1 1135 0
	mov.d	w10,w0
	call	_bp_message_write_line
	.loc 1 1136 0
	mov.b	#2,w0
	mov	#_state+4,w1
	mov.b	w0,[w1]
	.loc 1 1138 0
	mov.b	[w15-16],w3
	cp0.b	w3
	.set ___BP___,71
	bra	z,.L79
	.loc 1 1139 0
	mov	#1,w3
	mov	#180,w2
	clr	w1
	setm	w0
	call	_getnumber
	asr	w0,#15,w1
	call	___floatsisf
	mov.d	w0,w8
	.loc 1 1140 0
	mul.uu	w2,#0,w2
		
	call	___ltsf2
	cp0	w0
	.set ___BP___,95
	bra	ge,.L90
	.loc 1 1141 0
	mov	#.LC0,w0
	call	_bp_write_line
.L79:
	.loc 1 1146 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE36:
	.size	_bp_servo_setup, .-_bp_servo_setup
	.section	.bss,bss
	.align	2
	.type	_state,@object
	.size	_state, 5
_state:
	.skip	5
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -6
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI2-.LFB26
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
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
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.file 5 "../proc_menu.h"
	.section	.debug_info,info
	.4byte	0x1cfa
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../aux_pin.c"
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
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0x119
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x3
	.asciz	"uint32_t"
	.byte	0x2
	.byte	0xcd
	.4byte	0x139
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x3
	.asciz	"uint64_t"
	.byte	0x2
	.byte	0xd2
	.4byte	0x15e
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
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x3
	.byte	0xea
	.4byte	0x2ae
	.uleb128 0x5
	.asciz	"INT0IF"
	.byte	0x3
	.byte	0xeb
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x109
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
	.4byte	0x1a0
	.uleb128 0x4
	.asciz	"tagIFS1BITS"
	.byte	0x2
	.byte	0x3
	.byte	0xfe
	.4byte	0x3c6
	.uleb128 0x5
	.asciz	"SI2C1IF"
	.byte	0x3
	.byte	0xff
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"MI2C1IF"
	.byte	0x3
	.2byte	0x100
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"CMIF"
	.byte	0x3
	.2byte	0x101
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"CNIF"
	.byte	0x3
	.2byte	0x102
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"INT1IF"
	.byte	0x3
	.2byte	0x103
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"OC3IF"
	.byte	0x3
	.2byte	0x105
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"OC4IF"
	.byte	0x3
	.2byte	0x106
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T4IF"
	.byte	0x3
	.2byte	0x107
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T5IF"
	.byte	0x3
	.2byte	0x108
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"INT2IF"
	.byte	0x3
	.2byte	0x109
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"U2RXIF"
	.byte	0x3
	.2byte	0x10a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"U2TXIF"
	.byte	0x3
	.2byte	0x10b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"IFS1BITS"
	.byte	0x3
	.2byte	0x10c
	.4byte	0x2be
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x386
	.4byte	0x453
	.uleb128 0x6
	.asciz	"TCS"
	.byte	0x3
	.2byte	0x388
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T32"
	.byte	0x3
	.2byte	0x38a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TCKPS"
	.byte	0x3
	.2byte	0x38b
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TGATE"
	.byte	0x3
	.2byte	0x38c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TSIDL"
	.byte	0x3
	.2byte	0x38e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TON"
	.byte	0x3
	.2byte	0x390
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x392
	.4byte	0x487
	.uleb128 0x6
	.asciz	"TCKPS0"
	.byte	0x3
	.2byte	0x394
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TCKPS1"
	.byte	0x3
	.2byte	0x395
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x385
	.4byte	0x49b
	.uleb128 0xa
	.4byte	0x3d7
	.uleb128 0xa
	.4byte	0x453
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagT2CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x384
	.4byte	0x4ba
	.uleb128 0xc
	.4byte	0x487
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"T2CONBITS"
	.byte	0x3
	.2byte	0x398
	.4byte	0x49b
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x3c1
	.4byte	0x548
	.uleb128 0x6
	.asciz	"TCS"
	.byte	0x3
	.2byte	0x3c3
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T32"
	.byte	0x3
	.2byte	0x3c5
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TCKPS"
	.byte	0x3
	.2byte	0x3c6
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TGATE"
	.byte	0x3
	.2byte	0x3c7
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TSIDL"
	.byte	0x3
	.2byte	0x3c9
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TON"
	.byte	0x3
	.2byte	0x3cb
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x3cd
	.4byte	0x57c
	.uleb128 0x6
	.asciz	"TCKPS0"
	.byte	0x3
	.2byte	0x3cf
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TCKPS1"
	.byte	0x3
	.2byte	0x3d0
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x3c0
	.4byte	0x590
	.uleb128 0xa
	.4byte	0x4cc
	.uleb128 0xa
	.4byte	0x548
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagT4CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x3bf
	.4byte	0x5af
	.uleb128 0xc
	.4byte	0x57c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"T4CONBITS"
	.byte	0x3
	.2byte	0x3d3
	.4byte	0x590
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x3fe
	.4byte	0x63f
	.uleb128 0x6
	.asciz	"ICM"
	.byte	0x3
	.2byte	0x3ff
	.4byte	0x109
	.byte	0x2
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICBNE"
	.byte	0x3
	.2byte	0x400
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICOV"
	.byte	0x3
	.2byte	0x401
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI"
	.byte	0x3
	.2byte	0x402
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICTMR"
	.byte	0x3
	.2byte	0x403
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICSIDL"
	.byte	0x3
	.2byte	0x405
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x407
	.4byte	0x6a8
	.uleb128 0x6
	.asciz	"ICM0"
	.byte	0x3
	.2byte	0x408
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICM1"
	.byte	0x3
	.2byte	0x409
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICM2"
	.byte	0x3
	.2byte	0x40a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI0"
	.byte	0x3
	.2byte	0x40c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI1"
	.byte	0x3
	.2byte	0x40d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x3fd
	.4byte	0x6bc
	.uleb128 0xa
	.4byte	0x5c1
	.uleb128 0xa
	.4byte	0x63f
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagIC1CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x3fc
	.4byte	0x6dc
	.uleb128 0xc
	.4byte	0x6a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"IC1CONBITS"
	.byte	0x3
	.2byte	0x410
	.4byte	0x6bc
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x41d
	.4byte	0x76d
	.uleb128 0x6
	.asciz	"ICM"
	.byte	0x3
	.2byte	0x41e
	.4byte	0x109
	.byte	0x2
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICBNE"
	.byte	0x3
	.2byte	0x41f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICOV"
	.byte	0x3
	.2byte	0x420
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI"
	.byte	0x3
	.2byte	0x421
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICTMR"
	.byte	0x3
	.2byte	0x422
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICSIDL"
	.byte	0x3
	.2byte	0x424
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x426
	.4byte	0x7d6
	.uleb128 0x6
	.asciz	"ICM0"
	.byte	0x3
	.2byte	0x427
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICM1"
	.byte	0x3
	.2byte	0x428
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICM2"
	.byte	0x3
	.2byte	0x429
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI0"
	.byte	0x3
	.2byte	0x42b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ICI1"
	.byte	0x3
	.2byte	0x42c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x41c
	.4byte	0x7ea
	.uleb128 0xa
	.4byte	0x6ef
	.uleb128 0xa
	.4byte	0x76d
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagIC2CONBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x41b
	.4byte	0x80a
	.uleb128 0xc
	.4byte	0x7d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"IC2CONBITS"
	.byte	0x3
	.2byte	0x42f
	.4byte	0x7ea
	.uleb128 0xb
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0x89d
	.uleb128 0x6
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISA1"
	.byte	0x3
	.2byte	0x6d9
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISA2"
	.byte	0x3
	.2byte	0x6da
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISA3"
	.byte	0x3
	.2byte	0x6db
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISA4"
	.byte	0x3
	.2byte	0x6dc
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"TRISABITS"
	.byte	0x3
	.2byte	0x6dd
	.4byte	0x81d
	.uleb128 0xb
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x920
	.uleb128 0x6
	.asciz	"RA0"
	.byte	0x3
	.2byte	0x6e3
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RA1"
	.byte	0x3
	.2byte	0x6e4
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RA2"
	.byte	0x3
	.2byte	0x6e5
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RA3"
	.byte	0x3
	.2byte	0x6e6
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RA4"
	.byte	0x3
	.2byte	0x6e7
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"PORTABITS"
	.byte	0x3
	.2byte	0x6e8
	.4byte	0x8af
	.uleb128 0xb
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0xa9f
	.uleb128 0x6
	.asciz	"TRISB0"
	.byte	0x3
	.2byte	0x704
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB1"
	.byte	0x3
	.2byte	0x705
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB2"
	.byte	0x3
	.2byte	0x706
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB3"
	.byte	0x3
	.2byte	0x707
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB4"
	.byte	0x3
	.2byte	0x708
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB5"
	.byte	0x3
	.2byte	0x709
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB6"
	.byte	0x3
	.2byte	0x70a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB7"
	.byte	0x3
	.2byte	0x70b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB8"
	.byte	0x3
	.2byte	0x70c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB9"
	.byte	0x3
	.2byte	0x70d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB10"
	.byte	0x3
	.2byte	0x70e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB11"
	.byte	0x3
	.2byte	0x70f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB12"
	.byte	0x3
	.2byte	0x710
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB13"
	.byte	0x3
	.2byte	0x711
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB14"
	.byte	0x3
	.2byte	0x712
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRISB15"
	.byte	0x3
	.2byte	0x713
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"TRISBBITS"
	.byte	0x3
	.2byte	0x714
	.4byte	0x932
	.uleb128 0xb
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0xbee
	.uleb128 0x6
	.asciz	"RB0"
	.byte	0x3
	.2byte	0x71a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB1"
	.byte	0x3
	.2byte	0x71b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB2"
	.byte	0x3
	.2byte	0x71c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB3"
	.byte	0x3
	.2byte	0x71d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB4"
	.byte	0x3
	.2byte	0x71e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB5"
	.byte	0x3
	.2byte	0x71f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB6"
	.byte	0x3
	.2byte	0x720
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB7"
	.byte	0x3
	.2byte	0x721
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB8"
	.byte	0x3
	.2byte	0x722
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB9"
	.byte	0x3
	.2byte	0x723
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB10"
	.byte	0x3
	.2byte	0x724
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB11"
	.byte	0x3
	.2byte	0x725
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB12"
	.byte	0x3
	.2byte	0x726
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB13"
	.byte	0x3
	.2byte	0x727
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB14"
	.byte	0x3
	.2byte	0x728
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RB15"
	.byte	0x3
	.2byte	0x729
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"PORTBBITS"
	.byte	0x3
	.2byte	0x72a
	.4byte	0xab1
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0xc91
	.uleb128 0x6
	.asciz	"DONE"
	.byte	0x3
	.2byte	0x78e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SAMP"
	.byte	0x3
	.2byte	0x78f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ASAM"
	.byte	0x3
	.2byte	0x790
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC"
	.byte	0x3
	.2byte	0x792
	.4byte	0x109
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM"
	.byte	0x3
	.2byte	0x793
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ADSIDL"
	.byte	0x3
	.2byte	0x795
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ADON"
	.byte	0x3
	.2byte	0x797
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x799
	.4byte	0xcff
	.uleb128 0x6
	.asciz	"SSRC0"
	.byte	0x3
	.2byte	0x79b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC1"
	.byte	0x3
	.2byte	0x79c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"SSRC2"
	.byte	0x3
	.2byte	0x79d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM0"
	.byte	0x3
	.2byte	0x79e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FORM1"
	.byte	0x3
	.2byte	0x79f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x78c
	.4byte	0xd13
	.uleb128 0xa
	.4byte	0xc00
	.uleb128 0xa
	.4byte	0xc91
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0xd34
	.uleb128 0xc
	.4byte	0xcff
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0xd13
	.uleb128 0xb
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0xe41
	.uleb128 0x6
	.asciz	"PCFG0"
	.byte	0x3
	.2byte	0x7fe
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG1"
	.byte	0x3
	.2byte	0x7ff
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG2"
	.byte	0x3
	.2byte	0x800
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG3"
	.byte	0x3
	.2byte	0x801
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG4"
	.byte	0x3
	.2byte	0x802
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG5"
	.byte	0x3
	.2byte	0x803
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG9"
	.byte	0x3
	.2byte	0x805
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG10"
	.byte	0x3
	.2byte	0x806
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG11"
	.byte	0x3
	.2byte	0x807
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG12"
	.byte	0x3
	.2byte	0x808
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PCFG15"
	.byte	0x3
	.2byte	0x80a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"AD1PCFGBITS"
	.byte	0x3
	.2byte	0x80b
	.4byte	0xd48
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x97b
	.4byte	0xe87
	.uleb128 0x6
	.asciz	"T2CKR"
	.byte	0x3
	.2byte	0x97c
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR"
	.byte	0x3
	.2byte	0x97e
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x980
	.4byte	0xf63
	.uleb128 0x6
	.asciz	"T2CKR0"
	.byte	0x3
	.2byte	0x981
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T2CKR1"
	.byte	0x3
	.2byte	0x982
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T2CKR2"
	.byte	0x3
	.2byte	0x983
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T2CKR3"
	.byte	0x3
	.2byte	0x984
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T2CKR4"
	.byte	0x3
	.2byte	0x985
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR0"
	.byte	0x3
	.2byte	0x987
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR1"
	.byte	0x3
	.2byte	0x988
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR2"
	.byte	0x3
	.2byte	0x989
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR3"
	.byte	0x3
	.2byte	0x98a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"T3CKR4"
	.byte	0x3
	.2byte	0x98b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x97a
	.4byte	0xf77
	.uleb128 0xa
	.4byte	0xe55
	.uleb128 0xa
	.4byte	0xe87
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagRPINR3BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x979
	.4byte	0xf97
	.uleb128 0xc
	.4byte	0xf63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"RPINR3BITS"
	.byte	0x3
	.2byte	0x98e
	.4byte	0xf77
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x9af
	.4byte	0xfda
	.uleb128 0x6
	.asciz	"IC1R"
	.byte	0x3
	.2byte	0x9b0
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R"
	.byte	0x3
	.2byte	0x9b2
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x9b4
	.4byte	0x10ac
	.uleb128 0x6
	.asciz	"IC1R0"
	.byte	0x3
	.2byte	0x9b5
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC1R1"
	.byte	0x3
	.2byte	0x9b6
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC1R2"
	.byte	0x3
	.2byte	0x9b7
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC1R3"
	.byte	0x3
	.2byte	0x9b8
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC1R4"
	.byte	0x3
	.2byte	0x9b9
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R0"
	.byte	0x3
	.2byte	0x9bb
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R1"
	.byte	0x3
	.2byte	0x9bc
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R2"
	.byte	0x3
	.2byte	0x9bd
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R3"
	.byte	0x3
	.2byte	0x9be
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"IC2R4"
	.byte	0x3
	.2byte	0x9bf
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x9ae
	.4byte	0x10c0
	.uleb128 0xa
	.4byte	0xfaa
	.uleb128 0xa
	.4byte	0xfda
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagRPINR7BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x9ad
	.4byte	0x10e0
	.uleb128 0xc
	.4byte	0x10ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"RPINR7BITS"
	.byte	0x3
	.2byte	0x9c2
	.4byte	0x10c0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xb1d
	.4byte	0x1125
	.uleb128 0x6
	.asciz	"RP10R"
	.byte	0x3
	.2byte	0xb1e
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R"
	.byte	0x3
	.2byte	0xb20
	.4byte	0x109
	.byte	0x2
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0xb22
	.4byte	0x1201
	.uleb128 0x6
	.asciz	"RP10R0"
	.byte	0x3
	.2byte	0xb23
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP10R1"
	.byte	0x3
	.2byte	0xb24
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP10R2"
	.byte	0x3
	.2byte	0xb25
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP10R3"
	.byte	0x3
	.2byte	0xb26
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP10R4"
	.byte	0x3
	.2byte	0xb27
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R0"
	.byte	0x3
	.2byte	0xb29
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R1"
	.byte	0x3
	.2byte	0xb2a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R2"
	.byte	0x3
	.2byte	0xb2b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R3"
	.byte	0x3
	.2byte	0xb2c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RP11R4"
	.byte	0x3
	.2byte	0xb2d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0xb1c
	.4byte	0x1215
	.uleb128 0xa
	.4byte	0x10f3
	.uleb128 0xa
	.4byte	0x1125
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagRPOR5BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0xb1b
	.4byte	0x1234
	.uleb128 0xc
	.4byte	0x1201
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"RPOR5BITS"
	.byte	0x3
	.2byte	0xb30
	.4byte	0x1215
	.uleb128 0xd
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0x132b
	.uleb128 0xe
	.asciz	"speed"
	.byte	0x4
	.byte	0x39
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"numbits"
	.byte	0x4
	.byte	0x3a
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.asciz	"alternate_aux"
	.byte	0x4
	.byte	0x3f
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.asciz	"write_with_read"
	.byte	0x4
	.byte	0x56
	.4byte	0xe9
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
	.4byte	0xe9
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
	.4byte	0x1246
	.uleb128 0xf
	.byte	0x1
	.byte	0x1
	.byte	0x26
	.4byte	0x1382
	.uleb128 0x10
	.asciz	"AUX_MODE_IO"
	.sleb128 0
	.uleb128 0x10
	.asciz	"AUX_MODE_FREQUENCY"
	.sleb128 1
	.uleb128 0x10
	.asciz	"AUX_MODE_PWM"
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.asciz	"aux_mode_t"
	.byte	0x1
	.byte	0x2d
	.4byte	0x1347
	.uleb128 0xd
	.byte	0x5
	.byte	0x1
	.byte	0x48
	.4byte	0x13c8
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4a
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4c
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"mode"
	.byte	0x1
	.byte	0x4e
	.4byte	0x1382
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.asciz	"aux_state_t"
	.byte	0x1
	.byte	0x4f
	.4byte	0x1394
	.uleb128 0x12
	.asciz	"stop_timers"
	.byte	0x1
	.2byte	0x47c
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"setup_prescaler_divisor"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x109
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x1429
	.uleb128 0x14
	.4byte	.LASF4
	.byte	0x1
	.byte	0x76
	.4byte	0x1429
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.4byte	0x109
	.uleb128 0x16
	.asciz	"poll_frequency_counter_value"
	.byte	0x1
	.2byte	0x230
	.byte	0x1
	.4byte	0x129
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x147b
	.uleb128 0x17
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x231
	.4byte	0x129
	.uleb128 0x17
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x232
	.4byte	0x129
	.byte	0x0
	.uleb128 0x16
	.asciz	"average_sample_frequency"
	.byte	0x1
	.2byte	0x267
	.byte	0x1
	.4byte	0x129
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0x1546
	.uleb128 0x18
	.asciz	"count"
	.byte	0x1
	.2byte	0x267
	.4byte	0x1429
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.asciz	"current_low"
	.byte	0x1
	.2byte	0x268
	.4byte	0x129
	.byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x268
	.4byte	0x129
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x19
	.asciz	"current_high"
	.byte	0x1
	.2byte	0x268
	.4byte	0x129
	.byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x1a
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x268
	.4byte	0x129
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x19
	.asciz	"total_samples"
	.byte	0x1
	.2byte	0x268
	.4byte	0x129
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x19
	.asciz	"index"
	.byte	0x1
	.2byte	0x269
	.4byte	0x109
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"bp_update_pwm"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0x15bc
	.uleb128 0x14
	.4byte	.LASF4
	.byte	0x1
	.byte	0x9f
	.4byte	0x1429
	.byte	0x1
	.byte	0x58
	.uleb128 0x14
	.4byte	.LASF5
	.byte	0x1
	.byte	0x9f
	.4byte	0x1429
	.byte	0x1
	.byte	0x59
	.uleb128 0x1c
	.4byte	.LASF6
	.byte	0x1
	.byte	0xa0
	.4byte	0x109
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.asciz	"cycle"
	.byte	0x1
	.byte	0xa1
	.4byte	0x109
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.asciz	"divisor"
	.byte	0x1
	.byte	0xa2
	.4byte	0x109
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"bp_update_duty_cycle"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x15f2
	.uleb128 0x14
	.4byte	.LASF5
	.byte	0x1
	.byte	0x9b
	.4byte	0x1429
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"bp_pwm_setup"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x1689
	.uleb128 0x1c
	.4byte	.LASF7
	.byte	0x1
	.byte	0xfe
	.4byte	0x109
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1f
	.4byte	.LASF1
	.byte	0x1
	.byte	0xff
	.4byte	0x109
	.uleb128 0x17
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x100
	.4byte	0x109
	.uleb128 0x20
	.asciz	"pwm_divisor"
	.byte	0x1
	.2byte	0x101
	.4byte	0x109
	.uleb128 0x20
	.asciz	"pwm_period_float"
	.byte	0x1
	.2byte	0x102
	.4byte	0x1689
	.uleb128 0x20
	.asciz	"valid_arguments"
	.byte	0x1
	.2byte	0x103
	.4byte	0x1692
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"float"
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x21
	.byte	0x1
	.asciz	"bp_frequency_counter_setup"
	.byte	0x1
	.2byte	0x17c
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0x171f
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x17d
	.4byte	0x14e
	.uleb128 0x1a
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x17e
	.4byte	0x14e
	.byte	0xc
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x22
	.asciz	"write_marker"
	.byte	0x1
	.2byte	0x1f7
	.4byte	.L54
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"bp_measure_frequency"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	0x129
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1773
	.uleb128 0x17
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x204
	.4byte	0x129
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.asciz	"bp_aux_pin_set_high_impedance"
	.byte	0x1
	.2byte	0x365
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"bp_aux_pin_set_high"
	.byte	0x1
	.2byte	0x386
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"bp_aux_pin_set_low"
	.byte	0x1
	.2byte	0x3ad
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"bp_aux_pin_read"
	.byte	0x1
	.2byte	0x3d4
	.byte	0x1
	.4byte	0x1692
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"bp_servo_setup"
	.byte	0x1
	.2byte	0x402
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x1878
	.uleb128 0x17
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x403
	.4byte	0x109
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x404
	.4byte	0x109
	.uleb128 0x19
	.asciz	"keep_asking"
	.byte	0x1
	.2byte	0x405
	.4byte	0x1692
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x17
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x406
	.4byte	0x1689
	.uleb128 0x1e
	.4byte	0x13db
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF8
	.byte	0x3
	.byte	0xfa
	.4byte	0x1885
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x2ae
	.uleb128 0x28
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x10d
	.4byte	0x1898
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x3c6
	.uleb128 0x29
	.asciz	"TMR2"
	.byte	0x3
	.2byte	0x379
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x109
	.uleb128 0x29
	.asciz	"TMR3HLD"
	.byte	0x3
	.2byte	0x37b
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR2"
	.byte	0x3
	.2byte	0x37f
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR3"
	.byte	0x3
	.2byte	0x381
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"T2CON"
	.byte	0x3
	.2byte	0x383
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x399
	.4byte	0x18fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x4ba
	.uleb128 0x29
	.asciz	"TMR4"
	.byte	0x3
	.2byte	0x3b4
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"TMR5HLD"
	.byte	0x3
	.2byte	0x3b6
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR4"
	.byte	0x3
	.2byte	0x3ba
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR5"
	.byte	0x3
	.2byte	0x3bc
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"T4CON"
	.byte	0x3
	.2byte	0x3be
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x3d4
	.4byte	0x195d
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x5af
	.uleb128 0x29
	.asciz	"IC1BUF"
	.byte	0x3
	.2byte	0x3f9
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC1CON"
	.byte	0x3
	.2byte	0x3fb
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x411
	.4byte	0x1992
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x6dc
	.uleb128 0x29
	.asciz	"IC2BUF"
	.byte	0x3
	.2byte	0x418
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC2CON"
	.byte	0x3
	.2byte	0x41a
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x430
	.4byte	0x19c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x80a
	.uleb128 0x29
	.asciz	"OC5RS"
	.byte	0x3
	.2byte	0x4ff
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"OC5R"
	.byte	0x3
	.2byte	0x501
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"OC5CON"
	.byte	0x3
	.2byte	0x503
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x6de
	.4byte	0x1a0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x89d
	.uleb128 0x28
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x1a1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x920
	.uleb128 0x28
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x715
	.4byte	0x1a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xa9f
	.uleb128 0x28
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x72b
	.4byte	0x1a43
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xbee
	.uleb128 0x28
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x1a56
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xd34
	.uleb128 0x28
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x80c
	.4byte	0x1a69
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xe41
	.uleb128 0x28
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x98f
	.4byte	0x1a7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xf97
	.uleb128 0x28
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x9c3
	.4byte	0x1a8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x10e0
	.uleb128 0x28
	.4byte	.LASF22
	.byte	0x3
	.2byte	0xb31
	.4byte	0x1aa2
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x1234
	.uleb128 0x2a
	.4byte	0x18e
	.4byte	0x1ab7
	.uleb128 0x2b
	.4byte	0x119
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2c
	.asciz	"cmdbuf"
	.byte	0x5
	.byte	0x19
	.4byte	0x1aa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x132b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.asciz	"state"
	.byte	0x1
	.byte	0x54
	.4byte	0x13c8
	.byte	0x5
	.byte	0x3
	.4byte	_state
	.uleb128 0x26
	.4byte	.LASF8
	.byte	0x3
	.byte	0xfa
	.4byte	0x1885
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF9
	.byte	0x3
	.2byte	0x10d
	.4byte	0x1898
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"TMR2"
	.byte	0x3
	.2byte	0x379
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"TMR3HLD"
	.byte	0x3
	.2byte	0x37b
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR2"
	.byte	0x3
	.2byte	0x37f
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR3"
	.byte	0x3
	.2byte	0x381
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"T2CON"
	.byte	0x3
	.2byte	0x383
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x399
	.4byte	0x18fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"TMR4"
	.byte	0x3
	.2byte	0x3b4
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"TMR5HLD"
	.byte	0x3
	.2byte	0x3b6
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR4"
	.byte	0x3
	.2byte	0x3ba
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PR5"
	.byte	0x3
	.2byte	0x3bc
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"T4CON"
	.byte	0x3
	.2byte	0x3be
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x3d4
	.4byte	0x195d
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC1BUF"
	.byte	0x3
	.2byte	0x3f9
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC1CON"
	.byte	0x3
	.2byte	0x3fb
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x411
	.4byte	0x1992
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC2BUF"
	.byte	0x3
	.2byte	0x418
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"IC2CON"
	.byte	0x3
	.2byte	0x41a
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x430
	.4byte	0x19c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"OC5RS"
	.byte	0x3
	.2byte	0x4ff
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"OC5R"
	.byte	0x3
	.2byte	0x501
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"OC5CON"
	.byte	0x3
	.2byte	0x503
	.4byte	0x18ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x6de
	.4byte	0x1a0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x1a1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x715
	.4byte	0x1a30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x72b
	.4byte	0x1a43
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x1a56
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x80c
	.4byte	0x1a69
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x98f
	.4byte	0x1a7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x9c3
	.4byte	0x1a8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF22
	.byte	0x3
	.2byte	0xb31
	.4byte	0x1aa2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"cmdbuf"
	.byte	0x5
	.byte	0x19
	.4byte	0x1aa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x132b
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xfa
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1cfe
	.4byte	0x1546
	.asciz	"bp_update_pwm"
	.4byte	0x15bc
	.asciz	"bp_update_duty_cycle"
	.4byte	0x15f2
	.asciz	"bp_pwm_setup"
	.4byte	0x169b
	.asciz	"bp_frequency_counter_setup"
	.4byte	0x171f
	.asciz	"bp_measure_frequency"
	.4byte	0x1773
	.asciz	"bp_aux_pin_set_high_impedance"
	.4byte	0x17a1
	.asciz	"bp_aux_pin_set_high"
	.4byte	0x17c5
	.asciz	"bp_aux_pin_set_low"
	.4byte	0x17e8
	.asciz	"bp_aux_pin_read"
	.4byte	0x180c
	.asciz	"bp_servo_setup"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x256
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1cfe
	.4byte	0xe9
	.asciz	"uint8_t"
	.4byte	0x109
	.asciz	"uint16_t"
	.4byte	0x129
	.asciz	"uint32_t"
	.4byte	0x14e
	.asciz	"uint64_t"
	.4byte	0x1a0
	.asciz	"tagIFS0BITS"
	.4byte	0x2ae
	.asciz	"IFS0BITS"
	.4byte	0x2be
	.asciz	"tagIFS1BITS"
	.4byte	0x3c6
	.asciz	"IFS1BITS"
	.4byte	0x49b
	.asciz	"tagT2CONBITS"
	.4byte	0x4ba
	.asciz	"T2CONBITS"
	.4byte	0x590
	.asciz	"tagT4CONBITS"
	.4byte	0x5af
	.asciz	"T4CONBITS"
	.4byte	0x6bc
	.asciz	"tagIC1CONBITS"
	.4byte	0x6dc
	.asciz	"IC1CONBITS"
	.4byte	0x7ea
	.asciz	"tagIC2CONBITS"
	.4byte	0x80a
	.asciz	"IC2CONBITS"
	.4byte	0x81d
	.asciz	"tagTRISABITS"
	.4byte	0x89d
	.asciz	"TRISABITS"
	.4byte	0x8af
	.asciz	"tagPORTABITS"
	.4byte	0x920
	.asciz	"PORTABITS"
	.4byte	0x932
	.asciz	"tagTRISBBITS"
	.4byte	0xa9f
	.asciz	"TRISBBITS"
	.4byte	0xab1
	.asciz	"tagPORTBBITS"
	.4byte	0xbee
	.asciz	"PORTBBITS"
	.4byte	0xd13
	.asciz	"tagAD1CON1BITS"
	.4byte	0xd34
	.asciz	"AD1CON1BITS"
	.4byte	0xd48
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xe41
	.asciz	"AD1PCFGBITS"
	.4byte	0xf77
	.asciz	"tagRPINR3BITS"
	.4byte	0xf97
	.asciz	"RPINR3BITS"
	.4byte	0x10c0
	.asciz	"tagRPINR7BITS"
	.4byte	0x10e0
	.asciz	"RPINR7BITS"
	.4byte	0x1215
	.asciz	"tagRPOR5BITS"
	.4byte	0x1234
	.asciz	"RPOR5BITS"
	.4byte	0x132b
	.asciz	"mode_configuration_t"
	.4byte	0x1382
	.asciz	"aux_mode_t"
	.4byte	0x13c8
	.asciz	"aux_state_t"
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
.LASF18:
	.asciz	"AD1CON1bits"
.LASF3:
	.asciz	"counter_high"
.LASF13:
	.asciz	"IC2CONbits"
.LASF6:
	.asciz	"period"
.LASF17:
	.asciz	"PORTBbits"
.LASF22:
	.asciz	"RPOR5bits"
.LASF10:
	.asciz	"T2CONbits"
.LASF16:
	.asciz	"TRISBbits"
.LASF8:
	.asciz	"IFS0bits"
.LASF12:
	.asciz	"IC1CONbits"
.LASF0:
	.asciz	"pwm_frequency"
.LASF23:
	.asciz	"cmdstart"
.LASF14:
	.asciz	"TRISAbits"
.LASF19:
	.asciz	"AD1PCFGbits"
.LASF9:
	.asciz	"IFS1bits"
.LASF5:
	.asciz	"duty_cycle"
.LASF4:
	.asciz	"frequency"
.LASF7:
	.asciz	"pwm_period"
.LASF11:
	.asciz	"T4CONbits"
.LASF1:
	.asciz	"pwm_duty_cycle"
.LASF15:
	.asciz	"PORTAbits"
.LASF24:
	.asciz	"mode_configuration"
.LASF21:
	.asciz	"RPINR7bits"
.LASF20:
	.asciz	"RPINR3bits"
.LASF2:
	.asciz	"counter_low"
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
