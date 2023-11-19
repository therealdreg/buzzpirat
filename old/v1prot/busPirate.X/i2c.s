	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\i2c.c"
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
	.type	_handle_pending_ack,@function
_handle_pending_ack:
.LFB35:
	.file 1 "../i2c.c"
	.loc 1 917 0
	.set ___PA___,1
	.loc 1 918 0
	mov	#_i2c_state,w1
	mov.b	[w1],w1
	and.b	w1,#1,w1
	.set ___BP___,61
	bra	nz,.L2
	.loc 1 919 0
	call	_bitbang_write_bit
.L2:
	.loc 1 925 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#1
	.loc 1 926 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_handle_pending_ack, .-_handle_pending_ack
	.align	2
	.type	_i2c_write_then_read,@function
_i2c_write_then_read:
.LFB37:
	.loc 1 1107 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov.d	w12,[w15++]
.LCFI2:
	.loc 1 1109 0
	call	_user_serial_read_big_endian_word
	mov	w0,w9
	.loc 1 1112 0
	call	_user_serial_read_big_endian_word
	mov	w0,w12
	.loc 1 1124 0
	clr.b	w0
	.loc 1 1123 0
	mov	#4096,w1
	sub	w9,w1,[w15]
	.set ___BP___,39
	bra	gtu,.L4
	.loc 1 1128 0
	clr	w8
.LBB2:
	.loc 1 1158 0
	mov	#_bus_pirate_configuration,w11
.LBE2:
	.loc 1 1128 0
	cp0	w9
	.set ___BP___,50
	bra	nz,.L18
	cp0	w12
	.set ___BP___,61
	bra	nz,.L22
	bra	.L4
.L18:
.LBB3:
	.loc 1 1158 0
	add	w8,[w11],w10
	call	_user_serial_read_byte
	mov.b	w0,[w10]
	.loc 1 1157 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L18
.LBE3:
	.loc 1 1162 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0],w10
	.loc 1 1165 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 1168 0
	clr	w8
.L7:
.LBB4:
	.loc 1 1169 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0+w8],w0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 1171 0
	call	_bitbang_read_bit
	cp0.b	w0
	.set ___BP___,4
	bra	nz,.L16
	.loc 1 1168 0
	inc	w8,w8
	sub	w9,w8,[w15]
	.set ___BP___,95
	bra	gtu,.L7
.LBE4:
	.loc 1 1179 0
	cp0	w12
	.set ___BP___,100
	bra	z,.L8
.L12:
	sub	w9,#1,[w15]
	.set ___BP___,47
	bra	leu,.L9
	.loc 1 1181 0
	mov	#1,w0
	call	_bitbang_i2c_start
	.loc 1 1184 0
	bset.b	w10,#0
	ze	w10,w0
	call	_bitbang_write_value
	.loc 1 1186 0
	call	_bitbang_read_bit
	mov.b	w0,w1
	.loc 1 1188 0
	clr.b	w0
	.loc 1 1186 0
	cp0.b	w1
	.set ___BP___,61
	bra	z,.L9
	bra	.L4
.L11:
.LBB5:
	.loc 1 1215 0
	add	w8,[w11],w9
	call	_bitbang_read_value
	mov.b	w0,[w9]
	.loc 1 1218 0
	mov.b	w13,w0
	sub	w8,w10,[w15]
	.set ___BP___,50
	bra	geu,.L10
	clr.b	w0
.L10:
	call	_bitbang_write_bit
	.loc 1 1213 0
	inc	w8,w8
	sub	w12,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L11
.L8:
.LBE5:
	.loc 1 1222 0
	call	_bitbang_i2c_stop
	.loc 1 1225 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1228 0
	mov	w12,w1
	mov	_bus_pirate_configuration,w0
	call	_bp_write_buffer
	.loc 1 1232 0
	mov.b	#1,w0
	bra	.L4
.L16:
.LBB6:
	.loc 1 1173 0
	clr.b	w0
.L4:
.LBE6:
	.loc 1 1233 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.L22:
	.loc 1 1162 0
	mov	_bus_pirate_configuration,w0
	mov.b	[w0],w10
	.loc 1 1165 0
	clr	w0
	call	_bitbang_i2c_start
	bra	.L12
.L9:
	.loc 1 1193 0
	dec	w12,w10
	.loc 1 1213 0
	clr	w8
.LBB7:
	.loc 1 1215 0
	mov	#_bus_pirate_configuration,w11
	.loc 1 1218 0
	mov.b	#1,w13
	bra	.L11
.LBE7:
.LFE37:
	.size	_i2c_write_then_read, .-_i2c_write_then_read
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_i2c_sniffer,@function
_i2c_sniffer:
.LFB34:
	.loc 1 813 0
	.set ___PA___,1
	add	w15,#6,w15
.LCFI3:
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	mov.d	w12,[w15++]
.LCFI6:
	mov	w14,[w15++]
.LCFI7:
	mov.b	w0,w14
	.loc 1 815 0
	call	_user_serial_ringbuffer_setup
	.loc 1 817 0
	bset.b	_TRISBbits+1,#1
	.loc 1 818 0
	bset.b	_TRISBbits+1,#0
	.loc 1 819 0
	bclr.b	_PORTBbits+1,#0
	.loc 1 820 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 823 0
	bset.b	_CNEN2bits,#5
	.loc 1 824 0
	bset.b	_CNEN2bits,#6
	.loc 1 827 0
	bclr.b	_IFS1bits,#3
	.loc 1 829 0
	mov	_PORTBbits,w11
	sl	w11,#6,w11
	lsr	w11,#15,w11
	.loc 1 830 0
	mov	_PORTBbits,w8
	sl	w8,#7,w8
	lsr	w8,#15,w8
	.loc 1 836 0
	clr.b	w0
	mov.b	w0,[w15-17]
	.loc 1 835 0
	mov.b	w0,[w15-16]
	.loc 1 834 0
	mov.b	w0,w12
	.loc 1 905 0
	mov.b	#1,w13
	.loc 1 904 0
	mov.b	w13,[w15-18]
	bra	.L43
.L37:
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	bra	.L43
.L38:
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	bra	.L43
.L39:
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
	bra	.L43
.L40:
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
.L43:
	.loc 1 839 0
	btst.b	_IFS1bits,#3
	.set ___BP___,50
	bra	nz,.L25
	.loc 1 843 0
	call	_user_serial_ringbuffer_process
	.loc 1 845 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L43
	.loc 1 846 0
	call	_user_serial_read_byte
	.loc 1 909 0
	bclr.b	_CNEN2bits,#5
	.loc 1 910 0
	bclr.b	_CNEN2bits,#6
	.loc 1 912 0
	cp0.b	w14
	.set ___BP___,61
	bra	z,.L23
	bra	.L44
.L25:
	.loc 1 854 0
	bclr.b	_IFS1bits,#3
	.loc 1 857 0
	mov	_PORTBbits,w10
	sl	w10,#6,w10
	lsr	w10,#15,w10
	.loc 1 858 0
	mov	_PORTBbits,w9
	sl	w9,#7,w9
	lsr	w9,#15,w9
	.loc 1 861 0
	cp0.b	w12
	.set ___BP___,50
	bra	z,.L29
	cp0.b	w8
	.set ___BP___,50
	bra	nz,.L30
	cp0.b	w9
	.set ___BP___,50
	bra	z,.L29
	.loc 1 862 0
	mov.b	[w15-16],w2
	sub.b	w2,#7,[w15]
	.set ___BP___,50
	bra	gtu,.L31
	.loc 1 863 0
	mov.b	[w15-17],w1
	add.b	w1,w1,w0
	ior.b	w0,w10,w0
	mov.b	w0,[w15-17]
	.loc 1 864 0
	inc.b	w2,w2
	mov.b	w2,[w15-16]
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 905 0
	mov.b	w13,w8
	bra	.L43
.L31:
	.loc 1 866 0
	cp0.b	w14
	.set ___BP___,50
	bra	z,.L32
	.loc 1 868 0
	mov.b	[w15-17],w0
	call	_bp_write_hex_byte_to_ringbuffer
	bra	.L33
.L32:
	.loc 1 871 0
	mov.b	#92,w0
	call	_user_serial_ringbuffer_append
	.loc 1 872 0
	mov.b	[w15-17],w0
	call	_user_serial_ringbuffer_append
.L33:
	.loc 1 876 0
	mov.b	#43,w0
	cp0.b	w10
	.set ___BP___,50
	bra	z,.L34
	mov.b	#45,w0
.L34:
	call	_user_serial_ringbuffer_append
	.loc 1 905 0
	mov.b	w9,w8
	.loc 1 904 0
	mov.b	w10,w11
	.loc 1 880 0
	clr.b	w2
	mov.b	w2,[w15-16]
	bra	.L43
.L29:
	.loc 1 884 0
	cp0.b	w8
	.set ___BP___,70
	bra	z,.L37
.L30:
	cp0.b	w9
	.set ___BP___,50
	bra	z,.L38
	.loc 1 886 0
	cp0.b	w11
	.set ___BP___,50
	bra	z,.L35
	cp0.b	w10
	.set ___BP___,71
	bra	nz,.L39
	.loc 1 890 0
	mov.b	#91,w0
	call	_user_serial_ringbuffer_append
	.loc 1 888 0
	clr.b	w0
	mov.b	w0,[w15-16]
	.loc 1 887 0
	mov.b	w13,w12
	.loc 1 905 0
	mov.b	[w15-18],w8
	.loc 1 904 0
	mov.b	w0,w11
	.loc 1 890 0
	bra	.L43
.L35:
	.loc 1 893 0
	cp0.b	w10
	.set ___BP___,71
	bra	z,.L40
	.loc 1 897 0
	mov.b	#93,w0
	call	_user_serial_ringbuffer_append
	.loc 1 895 0
	clr.b	w1
	mov.b	w1,[w15-16]
	.loc 1 894 0
	mov.b	w1,w12
	.loc 1 905 0
	mov.b	w13,w8
	.loc 1 904 0
	mov.b	[w15-18],w11
	bra	.L43
.L44:
	.loc 1 913 0
	mov	#.LC0,w0
	call	_bp_write_line
.L23:
	.loc 1 915 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#6
	return	
	.set ___PA___,0
.LFE34:
	.size	_i2c_sniffer, .-_i2c_sniffer
	.align	2
	.global	_i2c_read	; export
	.type	_i2c_read,@function
_i2c_read:
.LFB24:
	.loc 1 189 0
	.set ___PA___,1
	.loc 1 192 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L46
	.loc 1 193 0
	clr.b	w0
	call	_handle_pending_ack
	.loc 1 194 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 195 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 196 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
.L46:
	.loc 1 199 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w1
	.loc 1 205 0
	clr.b	w0
	.loc 1 199 0
	.set ___BP___,61
	bra	nz,.L47
	.loc 1 200 0
	call	_bitbang_read_value
.L47:
	.loc 1 208 0
	mov	#_i2c_state,w1
	bset.b	[w1],#1
	.loc 1 209 0
	ze	w0,w0
	.loc 1 210 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_i2c_read, .-_i2c_read
	.align	2
	.global	_i2c_write	; export
	.type	_i2c_write,@function
_i2c_write:
.LFB25:
	.loc 1 212 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI8:
	mov	w0,w8
	.loc 1 213 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L50
	.loc 1 214 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 215 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 216 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 217 0
	clr.b	w0
	call	_handle_pending_ack
.L50:
	.loc 1 220 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,71
	bra	nz,.L51
	.loc 1 221 0
	mov	w8,w0
	call	_bitbang_write_value
	.loc 1 222 0
	call	_bitbang_read_bit
	ze	w0,w8
.L51:
	.loc 1 230 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 231 0
	cp0	w8
	.set ___BP___,61
	bra	nz,.L52
	.loc 1 232 0
	mov	#tbloffset(_MSG_ACK_str),w0
	mov	#tblpage(_MSG_ACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 233 0
	mov	#768,w0
	bra	.L53
.L52:
	.loc 1 236 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 237 0
	mov	#256,w0
.L53:
	.loc 1 238 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE25:
	.size	_i2c_write, .-_i2c_write
	.align	2
	.global	_i2c_start	; export
	.type	_i2c_start,@function
_i2c_start:
.LFB26:
	.loc 1 240 0
	.set ___PA___,1
	.loc 1 243 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L55
	.loc 1 244 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 245 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 247 0
	mov.b	#1,w0
	call	_handle_pending_ack
.L55:
	.loc 1 252 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L56
	.loc 1 253 0
	clr	w0
	call	_bitbang_i2c_start
	cp0.b	w0
	.set ___BP___,61
	bra	z,.L56
	.loc 1 255 0
	mov	#tbloffset(_MSG_WARNING_HEADER_str),w0
	mov	#tblpage(_MSG_WARNING_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 256 0
	mov	#tbloffset(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w0
	mov	#tblpage(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w1
	call	_bp_message_write_buffer
	.loc 1 257 0
	mov	#.LC0,w0
	call	_bp_write_line
.L56:
	.loc 1 265 0
	mov	#tbloffset(_MSG_I2C_START_BIT_str),w0
	mov	#tblpage(_MSG_I2C_START_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 266 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_i2c_start, .-_i2c_start
	.align	2
	.global	_i2c_stop	; export
	.type	_i2c_stop,@function
_i2c_stop:
.LFB27:
	.loc 1 268 0
	.set ___PA___,1
	.loc 1 269 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	z,.L58
	.loc 1 270 0
	mov	#tbloffset(_MSG_NACK_str),w0
	mov	#tblpage(_MSG_NACK_str),w1
	call	_bp_message_write_buffer
	.loc 1 271 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 273 0
	mov.b	#1,w0
	call	_handle_pending_ack
.L58:
	.loc 1 276 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L59
	.loc 1 277 0
	call	_bitbang_i2c_stop
.L59:
	.loc 1 284 0
	mov	#tbloffset(_MSG_I2C_STOP_BIT_str),w0
	mov	#tblpage(_MSG_I2C_STOP_BIT_str),w1
	call	_bp_message_write_line
	.loc 1 285 0
	return	
	.set ___PA___,0
.LFE27:
	.size	_i2c_stop, .-_i2c_stop
	.section	.const,psv,page
.LC1:
	.asciz	" )"
	.section	.text,code
	.align	2
	.global	_i2c_print_settings	; export
	.type	_i2c_print_settings,@function
_i2c_print_settings:
.LFB28:
	.loc 1 287 0
	.set ___PA___,1
	.loc 1 288 0
	mov	#tbloffset(_BPMSG1068_str),w0
	mov	#tblpage(_BPMSG1068_str),w1
	call	_bp_message_write_buffer
	.loc 1 292 0
	clr.b	w0
	call	_bp_write_dec_byte
	.loc 1 294 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 295 0
	mov	#_mode_configuration,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 296 0
	mov	#.LC1,w0
	call	_bp_write_line
	.loc 1 297 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_i2c_print_settings, .-_i2c_print_settings
	.align	2
	.global	_i2c_setup_prepare	; export
	.type	_i2c_setup_prepare,@function
_i2c_setup_prepare:
.LFB29:
	.loc 1 299 0
	.set ___PA___,1
	.loc 1 309 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#0
	.loc 1 312 0
	call	_consumewhitechars
	.loc 1 313 0
	call	_getint
	.loc 1 323 0
	dec	w0,w1
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	gtu,.L62
	.loc 1 324 0
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	.loc 1 329 0
	cp0	w0
	.set ___BP___,100
	bra	nz,.L63
.L62:
	.loc 1 330 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 336 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#0
	.loc 1 340 0
	mov	#tbloffset(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_SOFTWARE_MODE_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 341 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	bra	.L65
.L63:
	.loc 1 353 0
	mov	_bus_pirate_configuration+4,w1
	mov	#12291,w0
	sub	w1,w0,[w15]
	.set ___BP___,71
	bra	gtu,.L67
	.loc 1 354 0
	mov	#tbloffset(_BPMSG1066_str),w0
	mov	#tblpage(_BPMSG1066_str),w1
	call	_bp_message_write_buffer
.L67:
	.loc 1 357 0
	call	_i2c_print_settings
	.loc 1 359 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#1
.L65:
	.loc 1 362 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#4
	.loc 1 363 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_i2c_setup_prepare, .-_i2c_setup_prepare
	.align	2
	.global	_i2c_setup_execute	; export
	.type	_i2c_setup_execute,@function
_i2c_setup_execute:
.LFB30:
	.loc 1 365 0
	.set ___PA___,1
	.loc 1 366 0
	mov	#_i2c_state,w0
	mov.b	[w0],w0
	and.b	w0,#1,w0
	.set ___BP___,61
	bra	nz,.L68
	.loc 1 367 0
	bset.b	_TRISBbits+1,#1
	.loc 1 368 0
	bset.b	_TRISBbits+1,#0
	.loc 1 369 0
	bclr.b	_PORTBbits+1,#0
	.loc 1 370 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 371 0
	mov	#_mode_configuration,w0
	ze	[w0],w1
	mov.b	#2,w0
	call	_bitbang_setup
.L68:
	.loc 1 377 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_i2c_setup_execute, .-_i2c_setup_execute
	.align	2
	.global	_i2c_cleanup	; export
	.type	_i2c_cleanup,@function
_i2c_cleanup:
.LFB31:
	.loc 1 379 0
	.set ___PA___,1
	.loc 1 381 0
	mov	#_i2c_state,w0
	bclr.b	[w0],#1
	.loc 1 402 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_i2c_cleanup, .-_i2c_cleanup
	.align	2
	.global	_i2c_macro	; export
	.type	_i2c_macro,@function
_i2c_macro:
.LFB32:
	.loc 1 404 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	mov.d	w10,[w15++]
.LCFI10:
	mov.d	w12,[w15++]
.LCFI11:
	mov	w14,[w15++]
.LCFI12:
	mov	w0,w14
	.loc 1 407 0
	sub	w14,#1,[w15]
	.set ___BP___,29
	bra	z,.L74
	.set ___BP___,50
	bra	ltu,.L73
	sub	w14,#2,[w15]
	.set ___BP___,71
	bra	nz,.L87
	bra	.L88
.L73:
	.loc 1 410 0
	mov	#tbloffset(_BPMSG1069_str),w0
	mov	#tblpage(_BPMSG1069_str),w1
	call	_bp_message_write_buffer
	.loc 1 411 0
	bra	.L71
.L74:
	.loc 1 415 0
	clr	w1
	mov	#768,w0
	call	_bitbang_set_pins_high
	.loc 1 416 0
	mov	#tbloffset(_BPMSG1070_str),w0
	mov	#tblpage(_BPMSG1070_str),w1
	call	_bp_message_write_line
	.loc 1 421 0
	btst.b	_PORTBbits+8/8,#8%8
	.set ___BP___,20
	bra	z,.L77
	clr	w12
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,61
	bra	nz,.L78
.L77:
	.loc 1 423 0
	mov	#tbloffset(_MSG_WARNING_HEADER_str),w0
	mov	#tblpage(_MSG_WARNING_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 424 0
	mov	#tbloffset(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w0
	mov	#tblpage(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w1
	call	_bp_message_write_buffer
	.loc 1 425 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 426 0
	bra	.L71
.L78:
	.loc 1 430 0
	mov	#_i2c_state,w13
	.loc 1 459 0
	mov	#tbloffset(_MSG_I2C_READ_ADDRESS_END_str),w8
	mov	#tblpage(_MSG_I2C_READ_ADDRESS_END_str),w9
	.loc 1 448 0
	mov	#tbloffset(_MSG_I2C_WRITE_ADDRESS_END_str),w10
	mov	#tblpage(_MSG_I2C_WRITE_ADDRESS_END_str),w11
.L85:
	.loc 1 430 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,71
	bra	nz,.L79
	.loc 1 431 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 432 0
	mov	w12,w0
	call	_bitbang_write_value
	.loc 1 433 0
	call	_bitbang_read_bit
	ze	w0,w14
.L79:
	.loc 1 442 0
	cp0	w14
	.set ___BP___,71
	bra	nz,.L80
	.loc 1 443 0
	mov	w12,w0
	call	_bp_write_formatted_integer
	.loc 1 444 0
	mov.b	#40,w0
	call	_user_serial_transmit_character
	.loc 1 445 0
	asr	w12,w0
	call	_bp_write_formatted_integer
	.loc 1 447 0
	btst	w12,#0
	.set ___BP___,71
	bra	nz,.L81
	.loc 1 448 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	bra	.L80
.L81:
	.loc 1 450 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,71
	bra	nz,.L82
	.loc 1 451 0
	call	_bitbang_read_value
	.loc 1 452 0
	mov.b	#1,w0
	call	_bitbang_write_bit
.L82:
	.loc 1 459 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
.L80:
	.loc 1 463 0
	mov.b	[w13],w1
	and.b	w1,#1,w0
	.set ___BP___,71
	bra	nz,.L83
	.loc 1 464 0
	call	_bitbang_i2c_stop
.L83:
	.loc 1 429 0
	inc	w12,w12
	mov	#256,w0
	sub	w12,w0,[w15]
	.set ___BP___,99
	bra	nz,.L85
	.loc 1 471 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 473 0
	bra	.L71
.L88:
	.loc 1 476 0
	call	_i2c_cleanup
	.loc 1 478 0
	mov	#tbloffset(_MSG_SNIFFER_MESSAGE_str),w0
	mov	#tblpage(_MSG_SNIFFER_MESSAGE_str),w1
	call	_bp_message_write_line
	.loc 1 479 0
	mov	#tbloffset(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w0
	mov	#tblpage(_MSG_ANY_KEY_TO_EXIT_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 480 0
	mov.b	#1,w0
	call	_i2c_sniffer
	.loc 1 489 0
	bra	.L71
.L87:
	.loc 1 540 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L71:
	.loc 1 543 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE32:
	.size	_i2c_macro, .-_i2c_macro
	.align	2
	.global	_i2c_pins_state	; export
	.type	_i2c_pins_state,@function
_i2c_pins_state:
.LFB33:
	.loc 1 545 0
	.set ___PA___,1
	.loc 1 545 0
	mov	#tbloffset(_MSG_I2C_PINS_STATE_str),w0
	mov	#tblpage(_MSG_I2C_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE33:
	.size	_i2c_pins_state, .-_i2c_pins_state
	.align	2
	.global	_binary_io_enter_i2c_mode	; export
	.type	_binary_io_enter_i2c_mode,@function
_binary_io_enter_i2c_mode:
.LFB36:
	.loc 1 944 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI13:
	mov.d	w10,[w15++]
.LCFI14:
	mov.d	w12,[w15++]
.LCFI15:
	.loc 1 948 0
	bset.b	_TRISBbits+1,#1
	.loc 1 949 0
	bset.b	_TRISBbits+1,#0
	.loc 1 950 0
	bclr.b	_PORTBbits+1,#0
	.loc 1 951 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 954 0
	bclr.b	_TRISBbits,#6
	.loc 1 956 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w1
	bset.b	w1,#4
	.loc 1 957 0
	bclr.b	w1,#3
	mov.b	w1,[w0]
	.loc 1 958 0
	mov	#3,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 959 0
	mov	#tbloffset(_MSG_I2C_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_I2C_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	.loc 1 962 0
	mov	#_inByte.5645,w11
	.loc 1 964 0
	mov	#_rawCommand.5646,w12
	.loc 1 1043 0
	mov	#_mode_configuration+2,w13
	.loc 1 974 0
	mov	#tbloffset(_MSG_I2C_MODE_IDENTIFIER_str),w8
	mov	#tblpage(_MSG_I2C_MODE_IDENTIFIER_str),w9
	.loc 1 1074 0
	mov	#_i.5647,w10
.L126:
	.loc 1 962 0
	call	_user_serial_read_byte
	mov.b	w0,[w11]
	.loc 1 964 0
	ze	w0,w2
	lsr	w2,#4,w2
	mov.b	w2,[w12]
	.loc 1 966 0
	sub.b	w2,#1,[w15]
	.set ___BP___,29
	bra	z,.L94
	.set ___BP___,50
	bra	ltu,.L93
	sub.b	w2,#4,[w15]
	.set ___BP___,29
	bra	z,.L95
	sub.b	w2,#6,[w15]
	.set ___BP___,71
	bra	nz,.L127
	bra	.L128
.L93:
	.loc 1 968 0
	ze	w0,w0
	clr	w1
	sub	w0,#15,[w15]
	subb	w1,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L97
	
.SS108:	bra	w0
	.align	2
	.set	___PA___,0
.L108:
.SH108:
	bra	.L90
	bra	.L99
	bra	.L100
	bra	.L101
	bra	.L102
	bra	.L97
	bra	.L103
	bra	.L104
	bra	.L105
	bra	.L106
	bra	.L97
	bra	.L97
	bra	.L97
	bra	.L97
	bra	.L97
	bra	.L107
	.set	___PA___,1
.SE108:
.L99:
	.loc 1 974 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 975 0
	bra	.L126
.L100:
	.loc 1 978 0
	clr	w0
	call	_bitbang_i2c_start
	.loc 1 979 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 980 0
	bra	.L126
.L101:
	.loc 1 983 0
	call	_bitbang_i2c_stop
	.loc 1 984 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 985 0
	bra	.L126
.L102:
	.loc 1 988 0
	call	_bitbang_read_value
	call	_user_serial_transmit_character
	.loc 1 989 0
	bra	.L126
.L103:
	.loc 1 992 0
	clr.b	w0
	call	_bitbang_write_bit
	.loc 1 993 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 994 0
	bra	.L126
.L104:
	.loc 1 997 0
	mov.b	#1,w0
	call	_bitbang_write_bit
	.loc 1 998 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 999 0
	bra	.L126
.L105:
	.loc 1 1002 0
	call	_i2c_write_then_read
	cp0.b	w0
	.set ___BP___,71
	bra	nz,.L126
	.loc 1 1003 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L126
.L106:
	.loc 1 1009 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
.L110:
	.loc 1 1013 0
	btst.b	_U1STAbits,#0
	.set ___BP___,86
	bra	z,.L110
	.loc 1 1016 0
	mov	_U1RXREG,w1
	mov.b	w1,w0
	mov.b	w1,[w11]
	.loc 1 1024 0
	sub.b	w1,#2,[w15]
	.set ___BP___,29
	bra	z,.L114
	.set ___BP___,50
	bra	gtu,.L118
	cp0.b	w1
	.set ___BP___,50
	bra	z,.L112
	sub.b	w1,#1,[w15]
	.set ___BP___,71
	bra	nz,.L120
	bra	.L129
.L118:
	sub.b	w1,#16,[w15]
	.set ___BP___,29
	bra	z,.L116
	mov.b	#32,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L117
	sub.b	w0,#3,[w15]
	.set ___BP___,71
	bra	nz,.L120
	bra	.L130
.L112:
	.loc 1 1027 0
	call	_bp_aux_pin_set_low
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1028 0
	bra	.L111
.L129:
	.loc 1 1031 0
	call	_bp_aux_pin_set_high
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1032 0
	bra	.L111
.L114:
	.loc 1 1035 0
	call	_bp_aux_pin_set_high_impedance
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1036 0
	bra	.L111
.L130:
	.loc 1 1039 0
	call	_bp_aux_pin_read
	ze	w0,w0
	.loc 1 1040 0
	bra	.L111
.L116:
	.loc 1 1043 0
	mov.b	#-4,w0
	and.b	w0,[w13],[w13]
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1044 0
	bra	.L111
.L117:
	.loc 1 1047 0
	mov.b	#-4,w0
	and.b	w0,[w13],w0
	bset.b	w0,#0
	mov.b	w0,[w13]
	.loc 1 1023 0
	mov	#1,w0
	.loc 1 1048 0
	bra	.L111
.L120:
	.loc 1 1023 0
	mov	#1,w0
.L111:
	.loc 1 1055 0
	call	_user_serial_transmit_character
	.loc 1 1056 0
	bra	.L126
.L107:
	.loc 1 1059 0
	clr.b	w0
	call	_i2c_sniffer
	.loc 1 1060 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1061 0
	bra	.L126
.L97:
	.loc 1 1064 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1065 0
	bra	.L126
.L94:
	.loc 1 1070 0
	and.b	w0,#15,w0
	.loc 1 1071 0
	inc.b	w0,[w11]
	.loc 1 1072 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1074 0
	clr.b	[w10]
	cp0.b	[w11]
	.set ___BP___,9
	bra	z,.L126
.L122:
	.loc 1 1076 0
	call	_user_serial_read_byte
	.loc 1 1075 0
	ze	w0,w0
	call	_bitbang_write_value
	.loc 1 1078 0
	call	_bitbang_read_bit
	.loc 1 1077 0
	call	_user_serial_transmit_character
	.loc 1 1074 0
	inc.b	[w10],w0
	mov.b	w0,[w10]
	subr.b	w0,[w11],[w15]
	.set ___BP___,91
	bra	gtu,.L122
	bra	.L126
.L128:
	.loc 1 1084 0
	and.b	w0,#3,w0
	mov.b	w0,[w11]
	.loc 1 1085 0
	ze	w0,w1
	mov.b	#2,w0
	call	_bitbang_setup
	.loc 1 1086 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1087 0
	bra	.L126
.L95:
	.loc 1 1090 0
	call	_bp_binary_io_peripherals_set
	.loc 1 1091 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1092 0
	bra	.L126
.L127:
	.loc 1 1101 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L126
.L90:
	.loc 1 1105 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE36:
	.size	_binary_io_enter_i2c_mode, .-_binary_io_enter_i2c_mode
	.section	.bss,bss
	.type	_i.5647,@object
	.size	_i.5647, 1
_i.5647:
	.skip	1
	.type	_rawCommand.5646,@object
	.size	_rawCommand.5646, 1
_rawCommand.5646:
	.skip	1
	.type	_inByte.5645,@object
	.size	_inByte.5645, 1
_inByte.5645:
	.skip	1
	.align	2
	.type	_i2c_state,@object
	.size	_i2c_state, 1
_i2c_state:
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI0-.LFB37
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
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI3-.LFB34
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -7
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -9
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -11
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI8-.LFB25
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
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
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI13-.LFB36
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -8
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE26:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.file 5 "../bitbang.h"
	.file 6 "../core.h"
	.section	.debug_info,info
	.4byte	0x14b8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../i2c.c"
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
	.asciz	"tagCNEN2BITS"
	.byte	0x2
	.byte	0x3
	.byte	0x9b
	.4byte	0x240
	.uleb128 0x5
	.asciz	"CN16IE"
	.byte	0x3
	.byte	0x9c
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN21IE"
	.byte	0x3
	.byte	0x9e
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN22IE"
	.byte	0x3
	.byte	0x9f
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN23IE"
	.byte	0x3
	.byte	0xa0
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN24IE"
	.byte	0x3
	.byte	0xa1
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN27IE"
	.byte	0x3
	.byte	0xa3
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN29IE"
	.byte	0x3
	.byte	0xa5
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CN30IE"
	.byte	0x3
	.byte	0xa6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"CNEN2BITS"
	.byte	0x3
	.byte	0xa7
	.4byte	0x18a
	.uleb128 0x4
	.asciz	"tagIFS1BITS"
	.byte	0x2
	.byte	0x3
	.byte	0xfe
	.4byte	0x359
	.uleb128 0x5
	.asciz	"SI2C1IF"
	.byte	0x3
	.byte	0xff
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x251
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x5c9
	.4byte	0x492
	.uleb128 0x6
	.asciz	"URXDA"
	.byte	0x3
	.2byte	0x5ca
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"OERR"
	.byte	0x3
	.2byte	0x5cb
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"FERR"
	.byte	0x3
	.2byte	0x5cc
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"PERR"
	.byte	0x3
	.2byte	0x5cd
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"RIDLE"
	.byte	0x3
	.2byte	0x5ce
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"ADDEN"
	.byte	0x3
	.2byte	0x5cf
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"URXISEL"
	.byte	0x3
	.2byte	0x5d0
	.4byte	0x105
	.byte	0x2
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"TRMT"
	.byte	0x3
	.2byte	0x5d1
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXBF"
	.byte	0x3
	.2byte	0x5d2
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXEN"
	.byte	0x3
	.2byte	0x5d3
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXBRK"
	.byte	0x3
	.2byte	0x5d4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXISEL0"
	.byte	0x3
	.2byte	0x5d6
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXINV"
	.byte	0x3
	.2byte	0x5d7
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"UTXISEL1"
	.byte	0x3
	.2byte	0x5d8
	.4byte	0x105
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
	.2byte	0x5da
	.4byte	0x4ca
	.uleb128 0x6
	.asciz	"URXISEL0"
	.byte	0x3
	.2byte	0x5dc
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.asciz	"URXISEL1"
	.byte	0x3
	.2byte	0x5dd
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x5c8
	.4byte	0x4de
	.uleb128 0xa
	.4byte	0x36a
	.uleb128 0xa
	.4byte	0x492
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagU1STABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x5c7
	.4byte	0x4fd
	.uleb128 0xc
	.4byte	0x4ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"U1STABITS"
	.byte	0x3
	.2byte	0x5e0
	.4byte	0x4de
	.uleb128 0xb
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6d7
	.4byte	0x58f
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x7
	.asciz	"TRISABITS"
	.byte	0x3
	.2byte	0x6dd
	.4byte	0x50f
	.uleb128 0xb
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x612
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x7
	.asciz	"PORTABITS"
	.byte	0x3
	.2byte	0x6e8
	.4byte	0x5a1
	.uleb128 0xb
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0x791
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x7
	.asciz	"TRISBBITS"
	.byte	0x3
	.2byte	0x714
	.4byte	0x624
	.uleb128 0xb
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0x8e0
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x7
	.asciz	"PORTBBITS"
	.byte	0x3
	.2byte	0x72a
	.4byte	0x7a3
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0x983
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x8
	.byte	0x2
	.byte	0x3
	.2byte	0x799
	.4byte	0x9f1
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x9
	.byte	0x2
	.byte	0x3
	.2byte	0x78c
	.4byte	0xa05
	.uleb128 0xa
	.4byte	0x8f2
	.uleb128 0xa
	.4byte	0x983
	.byte	0x0
	.uleb128 0xb
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0xa26
	.uleb128 0xc
	.4byte	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0xa05
	.uleb128 0xb
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0xb33
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x7
	.asciz	"AD1PCFGBITS"
	.byte	0x3
	.2byte	0x80b
	.4byte	0xa3a
	.uleb128 0xd
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0xc2c
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
	.uleb128 0x5
	.asciz	"write_with_read"
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
	.4byte	0xb47
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.byte	0x1b
	.4byte	0xcab
	.uleb128 0x10
	.asciz	"BITBANG_SPEED_5KHZ"
	.sleb128 0
	.uleb128 0x10
	.asciz	"BITBANG_SPEED_50KHZ"
	.sleb128 1
	.uleb128 0x10
	.asciz	"BITBANG_SPEED_100KHZ"
	.sleb128 2
	.uleb128 0x10
	.asciz	"BITBANG_SPEED_MAXIMUM"
	.sleb128 3
	.byte	0x0
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.byte	0x34
	.4byte	0xce7
	.uleb128 0x10
	.asciz	"BITBANG_I2C_START_ONE_SHOT"
	.sleb128 0
	.uleb128 0x10
	.asciz	"BITBANG_I2C_RESTART"
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.byte	0xb4
	.4byte	0xd75
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
	.byte	0x6
	.byte	0xe9
	.4byte	0xcf0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.byte	0xee
	.4byte	0xdbe
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
	.byte	0x6
	.byte	0xf7
	.4byte	0xd9d
	.uleb128 0xd
	.byte	0xc
	.byte	0x6
	.byte	0xf9
	.4byte	0xecf
	.uleb128 0xe
	.asciz	"terminal_input"
	.byte	0x6
	.byte	0xfa
	.4byte	0xecf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"device_type"
	.byte	0x6
	.byte	0xfb
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.asciz	"device_revision"
	.byte	0x6
	.byte	0xfc
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.asciz	"hardware_version"
	.byte	0x6
	.byte	0xfd
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.asciz	"terminal_speed"
	.byte	0x6
	.byte	0xfe
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.asciz	"display_mode"
	.byte	0x6
	.byte	0xff
	.4byte	0xdbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.asciz	"bus_mode"
	.byte	0x6
	.2byte	0x100
	.4byte	0xd75
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.asciz	"quiet"
	.byte	0x6
	.2byte	0x101
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.asciz	"overflow"
	.byte	0x6
	.2byte	0x102
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.asciz	"basic"
	.byte	0x6
	.2byte	0x104
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x12
	.byte	0x2
	.4byte	0xe5
	.uleb128 0x7
	.asciz	"bus_pirate_configuration_t"
	.byte	0x6
	.2byte	0x106
	.4byte	0xddf
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.byte	0x3b
	.4byte	0xf37
	.uleb128 0x5
	.asciz	"mode"
	.byte	0x1
	.byte	0x44
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"acknowledgment_pending"
	.byte	0x1
	.byte	0x49
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"i2c_state_t"
	.byte	0x1
	.byte	0x54
	.4byte	0xef8
	.uleb128 0x13
	.asciz	"handle_pending_ack"
	.byte	0x1
	.2byte	0x395
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0xf83
	.uleb128 0x14
	.asciz	"bus_bit"
	.byte	0x1
	.2byte	0x395
	.4byte	0xf83
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.4byte	0xce7
	.uleb128 0x16
	.asciz	"i2c_write_then_read"
	.byte	0x1
	.2byte	0x453
	.byte	0x1
	.4byte	0xce7
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0x104f
	.uleb128 0x17
	.asciz	"bytes_to_write"
	.byte	0x1
	.2byte	0x455
	.4byte	0x16a
	.uleb128 0x18
	.asciz	"bytes_to_read"
	.byte	0x1
	.2byte	0x458
	.4byte	0x16a
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.asciz	"i2c_address"
	.byte	0x1
	.2byte	0x46c
	.4byte	0xe5
	.byte	0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1016
	.uleb128 0x18
	.asciz	"index"
	.byte	0x1
	.2byte	0x485
	.4byte	0x16a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x1034
	.uleb128 0x18
	.asciz	"index"
	.byte	0x1
	.2byte	0x490
	.4byte	0x16a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x18
	.asciz	"index"
	.byte	0x1
	.2byte	0x4bd
	.4byte	0x16a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.asciz	"i2c_sniffer"
	.byte	0x1
	.2byte	0x32d
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x1114
	.uleb128 0x14
	.asciz	"interactive_mode"
	.byte	0x1
	.2byte	0x32d
	.4byte	0xce7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.asciz	"old_sda"
	.byte	0x1
	.2byte	0x33d
	.4byte	0xce7
	.byte	0x1
	.byte	0x5b
	.uleb128 0x18
	.asciz	"old_scl"
	.byte	0x1
	.2byte	0x33e
	.4byte	0xce7
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.asciz	"new_sda"
	.byte	0x1
	.2byte	0x33f
	.4byte	0xce7
	.byte	0x1
	.byte	0x5a
	.uleb128 0x18
	.asciz	"new_scl"
	.byte	0x1
	.2byte	0x340
	.4byte	0xce7
	.byte	0x1
	.byte	0x59
	.uleb128 0x18
	.asciz	"collect_data"
	.byte	0x1
	.2byte	0x342
	.4byte	0xce7
	.byte	0x1
	.byte	0x5c
	.uleb128 0x18
	.asciz	"data_bits"
	.byte	0x1
	.2byte	0x343
	.4byte	0xe5
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x18
	.asciz	"data_value"
	.byte	0x1
	.2byte	0x344
	.4byte	0xe5
	.byte	0x2
	.byte	0x7f
	.sleb128 -17
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"i2c_read"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0x1144
	.uleb128 0x1c
	.asciz	"value"
	.byte	0x1
	.byte	0xbe
	.4byte	0xe5
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"i2c_write"
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	0x115
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1171
	.uleb128 0x1d
	.asciz	"c"
	.byte	0x1
	.byte	0xd4
	.4byte	0x115
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"i2c_start"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_stop"
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_print_settings"
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_setup_prepare"
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0x1208
	.uleb128 0x17
	.asciz	"HW"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xc1
	.uleb128 0x18
	.asciz	"speed"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xc1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_setup_execute"
	.byte	0x1
	.2byte	0x16d
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_cleanup"
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"i2c_macro"
	.byte	0x1
	.2byte	0x194
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0x127d
	.uleb128 0x14
	.asciz	"c"
	.byte	0x1
	.2byte	0x194
	.4byte	0x115
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.asciz	"i"
	.byte	0x1
	.2byte	0x195
	.4byte	0xc1
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.asciz	"i2c_pins_state"
	.byte	0x1
	.2byte	0x221
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"binary_io_enter_i2c_mode"
	.byte	0x1
	.2byte	0x3b0
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x1320
	.uleb128 0x18
	.asciz	"inByte"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	_inByte.5645
	.uleb128 0x18
	.asciz	"rawCommand"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	_rawCommand.5646
	.uleb128 0x18
	.asciz	"i"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	_i.5647
	.uleb128 0x17
	.asciz	"fw"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x115
	.uleb128 0x18
	.asciz	"fr"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x115
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF0
	.byte	0x3
	.byte	0xa8
	.4byte	0x132d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x240
	.uleb128 0x23
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x10d
	.4byte	0x1340
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x359
	.uleb128 0x23
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x5e1
	.4byte	0x1353
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x4fd
	.uleb128 0x24
	.asciz	"U1RXREG"
	.byte	0x3
	.2byte	0x5e6
	.4byte	0x136a
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x105
	.uleb128 0x23
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x6de
	.4byte	0x137d
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x58f
	.uleb128 0x23
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x1390
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x612
	.uleb128 0x23
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x715
	.4byte	0x13a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x791
	.uleb128 0x23
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x72b
	.4byte	0x13b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0x8e0
	.uleb128 0x23
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x13c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0xa26
	.uleb128 0x23
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x80c
	.4byte	0x13dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	0xb33
	.uleb128 0x1c
	.asciz	"i2c_state"
	.byte	0x1
	.byte	0x59
	.4byte	0xf37
	.byte	0x5
	.byte	0x3
	.4byte	_i2c_state
	.uleb128 0x21
	.4byte	.LASF9
	.byte	0x1
	.byte	0x60
	.4byte	0xed5
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF10
	.byte	0x1
	.byte	0x61
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF0
	.byte	0x3
	.byte	0xa8
	.4byte	0x132d
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x10d
	.4byte	0x1340
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x5e1
	.4byte	0x1353
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.asciz	"U1RXREG"
	.byte	0x3
	.2byte	0x5e6
	.4byte	0x136a
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x6de
	.4byte	0x137d
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x1390
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x715
	.4byte	0x13a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x72b
	.4byte	0x13b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF7
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x13c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF8
	.byte	0x3
	.2byte	0x80c
	.4byte	0x13dc
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF9
	.byte	0x1
	.byte	0x60
	.4byte	0xed5
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF10
	.byte	0x1
	.byte	0x61
	.4byte	0xc2c
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
	.uleb128 0x14
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xd5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14bc
	.4byte	0x1114
	.asciz	"i2c_read"
	.4byte	0x1144
	.asciz	"i2c_write"
	.4byte	0x1171
	.asciz	"i2c_start"
	.4byte	0x118a
	.asciz	"i2c_stop"
	.4byte	0x11a3
	.asciz	"i2c_print_settings"
	.4byte	0x11c6
	.asciz	"i2c_setup_prepare"
	.4byte	0x1208
	.asciz	"i2c_setup_execute"
	.4byte	0x122a
	.asciz	"i2c_cleanup"
	.4byte	0x1246
	.asciz	"i2c_macro"
	.4byte	0x127d
	.asciz	"i2c_pins_state"
	.4byte	0x129c
	.asciz	"binary_io_enter_i2c_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x1da
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14bc
	.4byte	0xe5
	.asciz	"uint8_t"
	.4byte	0x105
	.asciz	"uint16_t"
	.4byte	0x16a
	.asciz	"size_t"
	.4byte	0x18a
	.asciz	"tagCNEN2BITS"
	.4byte	0x240
	.asciz	"CNEN2BITS"
	.4byte	0x251
	.asciz	"tagIFS1BITS"
	.4byte	0x359
	.asciz	"IFS1BITS"
	.4byte	0x4de
	.asciz	"tagU1STABITS"
	.4byte	0x4fd
	.asciz	"U1STABITS"
	.4byte	0x50f
	.asciz	"tagTRISABITS"
	.4byte	0x58f
	.asciz	"TRISABITS"
	.4byte	0x5a1
	.asciz	"tagPORTABITS"
	.4byte	0x612
	.asciz	"PORTABITS"
	.4byte	0x624
	.asciz	"tagTRISBBITS"
	.4byte	0x791
	.asciz	"TRISBBITS"
	.4byte	0x7a3
	.asciz	"tagPORTBBITS"
	.4byte	0x8e0
	.asciz	"PORTBBITS"
	.4byte	0xa05
	.asciz	"tagAD1CON1BITS"
	.4byte	0xa26
	.asciz	"AD1CON1BITS"
	.4byte	0xa3a
	.asciz	"tagAD1PCFGBITS"
	.4byte	0xb33
	.asciz	"AD1PCFGBITS"
	.4byte	0xc2c
	.asciz	"mode_configuration_t"
	.4byte	0xd75
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0xdbe
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0xed5
	.asciz	"bus_pirate_configuration_t"
	.4byte	0xf37
	.asciz	"i2c_state_t"
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
.LASF0:
	.asciz	"CNEN2bits"
.LASF4:
	.asciz	"PORTAbits"
.LASF7:
	.asciz	"AD1CON1bits"
.LASF5:
	.asciz	"TRISBbits"
.LASF8:
	.asciz	"AD1PCFGbits"
.LASF9:
	.asciz	"bus_pirate_configuration"
.LASF6:
	.asciz	"PORTBbits"
.LASF10:
	.asciz	"mode_configuration"
.LASF2:
	.asciz	"U1STAbits"
.LASF1:
	.asciz	"IFS1bits"
.LASF3:
	.asciz	"TRISAbits"
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
