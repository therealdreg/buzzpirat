	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\1wire.c"
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
	.type	_update_crc8,@function
_update_crc8:
.LFB42:
	.file 1 "../1wire.c"
	.loc 1 1184 0
	.set ___PA___,1
	.loc 1 1185 0
	mov	#_onewire_state,w1
	xor.b	w0,[w1],w0
	ze	w0,w0
	mov	#_CRC_TABLE,w2
	mov.b	[w2+w0],w0
	mov.b	w0,[w1]
	.loc 1 1187 0
	return	
	.set ___PA___,0
.LFE42:
	.size	_update_crc8, .-_update_crc8
	.align	2
	.type	_perform_bus_reset,@function
_perform_bus_reset:
.LFB37:
	.loc 1 937 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI0:
	.loc 1 944 0
	bset.b	_TRISBbits+1,#1
	.loc 1 945 0
	mov	#_mode_configuration,w0
	mov.b	#1,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,86
	bra	nz,.L3
	.loc 1 947 0
	mov	#1,w0
	call	_bp_delay_us
.L3:
	.loc 1 949 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 950 0
	bclr.b	_TRISBbits+1,#1
	.loc 1 957 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L4
	.loc 1 958 0
	mov	#500,w0
	call	_bp_delay_us
	bra	.L5
.L4:
	.loc 1 960 0
	mov	#70,w0
	call	_bp_delay_us
.L5:
	.loc 1 964 0
	bset.b	_TRISBbits+1,#1
	.loc 1 966 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L6
	.loc 1 967 0
	mov	#65,w0
	call	_bp_delay_us
	bra	.L7
.L6:
	.loc 1 969 0
	mov	#6,w0
	call	_bp_delay_us
.L7:
	.loc 1 975 0
	mov	#2,w8
	.loc 1 973 0
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,50
	bra	nz,.L8
	.loc 1 940 0
	clr	w8
.L8:
	.loc 1 979 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L9
	.loc 1 980 0
	mov	#500,w0
	call	_bp_delay_us
	bra	.L10
.L9:
	.loc 1 982 0
	mov	#32,w0
	call	_bp_delay_us
.L10:
	.loc 1 986 0
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,39
	bra	nz,.L11
	.loc 1 988 0
	mov	#1,w8
.L11:
	.loc 1 992 0
	mov	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE37:
	.size	_perform_bus_reset, .-_perform_bus_reset
	.align	2
	.type	_onewire_internal_bit_io,@function
_onewire_internal_bit_io:
.LFB44:
	.loc 1 1306 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI1:
	mov.b	w0,w8
	.loc 1 1307 0
	bset.b	_TRISBbits+1,#1
	.loc 1 1308 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 1309 0
	bclr.b	_TRISBbits+1,#1
	.loc 1 1312 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L15
	.loc 1 1313 0
	mov	#4,w0
	call	_bp_delay_us
	bra	.L16
.L15:
	.loc 1 1315 0
	mov	#1,w0
	call	_bp_delay_us
.L16:
	.loc 1 1317 0
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L17
	.loc 1 1318 0
	bset.b	_TRISBbits+1,#1
.L17:
	.loc 1 1321 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	nz,.L18
	.loc 1 1322 0
	mov	#8,w0
	call	_bp_delay_us
.L18:
	.loc 1 1334 0
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L19
	.loc 1 1335 0
	mov	_PORTBbits,w8
	sl	w8,#6,w8
	lsr	w8,#15,w8
	.loc 1 1337 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L20
	.loc 1 1338 0
	mov	#32,w0
	call	_bp_delay_us
	bra	.L21
.L20:
	.loc 1 1340 0
	mov	#6,w0
	call	_bp_delay_us
	bra	.L21
.L19:
	.loc 1 1344 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L22
	.loc 1 1345 0
	mov	#25,w0
	call	_bp_delay_us
	bra	.L23
.L22:
	.loc 1 1347 0
	mov	#4,w0
	call	_bp_delay_us
.L23:
	.loc 1 1349 0
	bset.b	_TRISBbits+1,#1
	.loc 1 1351 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L24
	.loc 1 1352 0
	mov	#7,w0
	call	_bp_delay_us
	bra	.L21
.L24:
	.loc 1 1354 0
	mov	#2,w0
	call	_bp_delay_us
.L21:
	.loc 1 1360 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,61
	bra	nz,.L25
	.loc 1 1361 0
	mov	#5,w0
	call	_bp_delay_us
.L25:
	.loc 1 1365 0
	mov.b	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE44:
	.size	_onewire_internal_bit_io, .-_onewire_internal_bit_io
	.align	2
	.type	_onewire_internal_byte_io,@function
_onewire_internal_byte_io:
.LFB45:
	.loc 1 1367 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov.b	w0,w8
	.loc 1 1367 0
	mov.b	#8,w9
.L28:
	.loc 1 1383 0
	ze	w8,w8
	and	w8,#1,w0
	call	_onewire_internal_bit_io
	.loc 1 1384 0
	lsr	w8,w8
	.loc 1 1385 0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L27
	.loc 1 1386 0
	bset.b	w8,#7
.L27:
	dec.b	w9,w9
	.loc 1 1382 0
	.set ___BP___,88
	bra	nz,.L28
	.loc 1 1390 0
	mov	#_mode_configuration,w0
	cp0.b	[w0]
	.set ___BP___,61
	bra	nz,.L29
	.loc 1 1391 0
	mov	#8,w0
	call	_bp_delay_us
.L29:
	.loc 1 1395 0
	mov.b	w8,w0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE45:
	.size	_onewire_internal_byte_io, .-_onewire_internal_byte_io
	.align	2
	.type	_perform_device_search,@function
_perform_device_search:
.LFB41:
	.loc 1 1037 0
	.set ___PA___,1
	add	w15,#4,w15
.LCFI3:
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	mov.d	w12,[w15++]
.LCFI6:
	mov	w14,[w15++]
.LCFI7:
	.loc 1 1053 0
	mov	#_onewire_state,w0
	clr.b	[w0]
	.loc 1 1057 0
	mov	#_onewire_state+93,w0
	mov.b	[w0],w0
	and.b	w0,#2,w0
	.set ___BP___,71
	bra	nz,.L48
	.loc 1 1061 0
	call	_perform_bus_reset
	cp0	w0
	.set ___BP___,38
	bra	z,.L33
	.loc 1 1062 0
	clr.b	w0
	mov	#_onewire_state+1,w1
	mov.b	w0,[w1]
	.loc 1 1063 0
	mov	#_onewire_state+2,w1
	mov.b	w0,[w1]
	.loc 1 1064 0
	mov	#_onewire_state+92,w0
	bclr	[w0],#9
	.loc 1 1066 0
	clr.b	w0
	bra	.L34
.L33:
	.loc 1 1071 0
	mov	#_onewire_state+92,w0
	mov.b	[w0],w0
	call	_onewire_internal_byte_io
	.loc 1 1051 0
	mov.b	#1,w8
	.loc 1 1050 0
	clr.b	w9
	.loc 1 1049 0
	mov.b	w9,[w15-16]
	.loc 1 1048 0
	mov.b	w8,w10
	.loc 1 1127 0
	mov	#_onewire_state+2,w13
	mov	#_onewire_state,w12
	.loc 1 1096 0
	mov	#_onewire_state+1,w14
.L46:
	.loc 1 1077 0
	mov.b	#1,w0
	call	_onewire_internal_bit_io
	mov.b	w0,w11
	.loc 1 1078 0
	mov.b	#1,w0
	call	_onewire_internal_bit_io
	.loc 1 1080 0
	cp0.b	w11
	.set ___BP___,50
	bra	z,.L35
	cp0.b	w0
	.set ___BP___,95
	bra	z,.L39
	bra	.L36
.L35:
	.loc 1 1087 0
	cp0.b	w0
	.set ___BP___,45
	bra	nz,.L39
	.loc 1 1096 0
	mov.b	[w14],w0
	sub.b	w10,w0,[w15]
	.set ___BP___,50
	bra	geu,.L40
	.loc 1 1098 0
	ze	w9,w0
	add	w12,w0,w0
	mov.b	[w0+3],w11
	and.b	w8,w11,w11
	.loc 1 1097 0
	ze	w11,w11
	neg	w11,w11
	lsr	w11,#15,w11
	bra	.L41
.L40:
	.loc 1 1103 0
	xor.b	w10,w0,w11
	ze	w11,w11
	dec	w11,w11
	lsr	w11,#15,w11
.L41:
	.loc 1 1109 0
	cp0.b	w11
	.set ___BP___,50
	bra	nz,.L39
	.loc 1 1114 0
	sub.b	w10,#8,[w15]
	.set ___BP___,50
	bra	gtu,.L42
	.loc 1 1115 0
	mov.b	w10,[w13]
	bra	.L42
.L39:
	.loc 1 1124 0
	sub.b	w11,#1,[w15]
	.set ___BP___,67
	bra	nz,.L43
	.loc 1 1125 0
	ze	w9,w0
	add	w13,w0,w1
	add	w12,w0,w0
	mov.b	[w0+3],w0
	ior.b	w0,w8,w0
	mov.b	w0,[w1+1]
	bra	.L44
.L43:
	.loc 1 1127 0
	ze	w9,w0
	add	w13,w0,w1
	add	w12,w0,w0
	com.b	w8,w2
	mov.b	[w0+3],w0
	and.b	w0,w2,w0
	mov.b	w0,[w1+1]
.L44:
	.loc 1 1132 0
	ze	w11,w11
	neg	w11,w0
	lsr	w0,#15,w0
	call	_onewire_internal_bit_io
	.loc 1 1136 0
	inc.b	w10,w10
	.loc 1 1137 0
	add.b	w8,w8,w8
	.loc 1 1141 0
	.set ___BP___,71
	bra	nz,.L45
	.loc 1 1145 0
	ze	w9,w0
	add	w12,w0,w0
	mov.b	[w0+3],w0
	call	_update_crc8
	.loc 1 1146 0
	inc.b	w9,w9
	.loc 1 1147 0
	mov.b	#1,w8
.L45:
	.loc 1 1152 0
	sub.b	w9,#7,[w15]
	.set ___BP___,86
	bra	leu,.L46
.L36:
	.loc 1 1156 0
	mov.b	#64,w0
	sub.b	w10,w0,[w15]
	.set ___BP___,50
	bra	leu,.L48
	mov	#_onewire_state,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L48
	.loc 1 1160 0
	mov	#_onewire_state+1,w0
	mov.b	[w15-16],w1
	mov.b	w1,[w0]
	.loc 1 1162 0
	cp0.b	w1
	.set ___BP___,50
	bra	nz,.L47
	.loc 1 1163 0
	mov	#_onewire_state+92,w0
	bset	[w0],#9
	bra	.L47
.L48:
	.loc 1 1175 0
	clr.b	w0
	mov	#_onewire_state+1,w1
	mov.b	w0,[w1]
	.loc 1 1176 0
	mov	#_onewire_state+2,w1
	mov.b	w0,[w1]
	.loc 1 1177 0
	mov	#_onewire_state+92,w0
	bclr	[w0],#9
	.loc 1 1178 0
	clr.b	w0
.L34:
	.loc 1 1182 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.L42:
	.loc 1 1048 0
	mov.b	w10,[w15-16]
	bra	.L43
.L47:
	.loc 1 1174 0
	mov	#_onewire_state+3,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	z,.L48
	mov.b	#1,w0
	bra	.L34
.LFE41:
	.size	_perform_device_search, .-_perform_device_search
	.align	2
	.type	_device_find_first,@function
_device_find_first:
.LFB39:
	.loc 1 1027 0
	.set ___PA___,1
	.loc 1 1028 0
	clr.b	w0
	mov	#_onewire_state+1,w1
	mov.b	w0,[w1]
	.loc 1 1029 0
	mov	#_onewire_state+2,w1
	mov.b	w0,[w1]
	.loc 1 1030 0
	mov	#_onewire_state+92,w0
	bclr	[w0],#9
	.loc 1 1032 0
	call	_perform_device_search
	.loc 1 1033 0
	return	
	.set ___PA___,0
.LFE39:
	.size	_device_find_first, .-_device_find_first
	.align	2
	.type	_device_find_next,@function
_device_find_next:
.LFB40:
	.loc 1 1035 0
	.set ___PA___,1
	.loc 1 1035 0
	call	_perform_device_search
	return	
	.set ___PA___,0
.LFE40:
	.size	_device_find_next, .-_device_find_next
	.section	.const,psv,page
.LC0:
	.byte	0
	.section	.text,code
	.align	2
	.type	_lookup_device_model,@function
_lookup_device_model:
.LFB38:
	.loc 1 996 0
	.set ___PA___,1
	.loc 1 997 0
	mov.b	#34,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L57
	.set ___BP___,50
	bra	gtu,.L60
	sub.b	w0,#4,[w15]
	.set ___BP___,29
	bra	z,.L55
	sub.b	w0,#16,[w15]
	.set ___BP___,71
	bra	nz,.L54
	bra	.L62
.L60:
	mov.b	#40,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L58
	mov.b	#45,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L54
	bra	.L63
.L62:
	.loc 1 999 0
	mov	#tbloffset(_BPMSG1022_str),w0
	mov	#tblpage(_BPMSG1022_str),w1
	call	_bp_message_write_buffer
	.loc 1 1000 0
	bra	.L61
.L58:
	.loc 1 1003 0
	mov	#tbloffset(_BPMSG1023_str),w0
	mov	#tblpage(_BPMSG1023_str),w1
	call	_bp_message_write_buffer
	.loc 1 1004 0
	bra	.L61
.L57:
	.loc 1 1007 0
	mov	#tbloffset(_BPMSG1024_str),w0
	mov	#tblpage(_BPMSG1024_str),w1
	call	_bp_message_write_buffer
	.loc 1 1008 0
	bra	.L61
.L55:
	.loc 1 1011 0
	mov	#tbloffset(_BPMSG1025_str),w0
	mov	#tblpage(_BPMSG1025_str),w1
	call	_bp_message_write_buffer
	.loc 1 1012 0
	bra	.L61
.L63:
	.loc 1 1015 0
	mov	#tbloffset(_BPMSG1026_str),w0
	mov	#tblpage(_BPMSG1026_str),w1
	call	_bp_message_write_buffer
	.loc 1 1016 0
	bra	.L61
.L54:
	.loc 1 1019 0
	mov	#tbloffset(_BPMSG1027_str),w0
	mov	#tblpage(_BPMSG1027_str),w1
	call	_bp_message_write_buffer
.L61:
	.loc 1 1022 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 1023 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_lookup_device_model, .-_lookup_device_model
	.section	.const,psv,page
.LC1:
	.asciz	"."
	.section	.text,code
	.align	2
	.type	_print_device_information,@function
_print_device_information:
.LFB33:
	.loc 1 749 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI8:
	mov.d	w10,[w15++]
.LCFI9:
	mov	w0,w8
	mov	w1,w11
	.loc 1 753 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 754 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 755 0
	mov	#.LC1,w0
	call	_bp_write_string
	mov	w11,w9
	.loc 1 758 0
	clr	w8
	.loc 1 760 0
	mov.b	#32,w10
.L65:
	.loc 1 759 0
	ze	[w9++],w0
	call	_bp_write_formatted_integer
	.loc 1 760 0
	mov.b	w10,w0
	call	_user_serial_transmit_character
	.loc 1 758 0
	inc	w8,w8
	sub	w8,#8,[w15]
	.set ___BP___,88
	bra	nz,.L65
	.loc 1 764 0
	mov	#tbloffset(_MSG_1WIRE_LOOKUP_ID_HEADER_str),w0
	mov	#tblpage(_MSG_1WIRE_LOOKUP_ID_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 766 0
	mov.b	[w11],w0
	call	_lookup_device_model
	.loc 1 768 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_print_device_information, .-_print_device_information
	.align	2
	.global	_onewire_read	; export
	.type	_onewire_read,@function
_onewire_read:
.LFB24:
	.loc 1 703 0
	.set ___PA___,1
	.loc 1 703 0
	setm.b	w0
	call	_onewire_internal_byte_io
	ze	w0,w0
	return	
	.set ___PA___,0
.LFE24:
	.size	_onewire_read, .-_onewire_read
	.align	2
	.global	_onewire_write	; export
	.type	_onewire_write,@function
_onewire_write:
.LFB25:
	.loc 1 705 0
	.set ___PA___,1
	.loc 1 706 0
	call	_onewire_internal_byte_io
	.loc 1 709 0
	mov	#256,w0
	return	
	.set ___PA___,0
.LFE25:
	.size	_onewire_write, .-_onewire_write
	.align	2
	.global	_onewire_read_bit	; export
	.type	_onewire_read_bit,@function
_onewire_read_bit:
.LFB26:
	.loc 1 711 0
	.set ___PA___,1
	.loc 1 711 0
	mov.b	#1,w0
	call	_onewire_internal_bit_io
	return	
	.set ___PA___,0
.LFE26:
	.size	_onewire_read_bit, .-_onewire_read_bit
	.align	2
	.global	_onewire_clock_pulse	; export
	.type	_onewire_clock_pulse,@function
_onewire_clock_pulse:
.LFB27:
	.loc 1 713 0
	.set ___PA___,1
	.loc 1 713 0
	mov	_onewire_state+92,w0
	sl	w0,#7,w0
	lsr	w0,#15,w0
	call	_onewire_internal_bit_io
	return	
	.set ___PA___,0
.LFE27:
	.size	_onewire_clock_pulse, .-_onewire_clock_pulse
	.align	2
	.global	_onewire_data_state	; export
	.type	_onewire_data_state,@function
_onewire_data_state:
.LFB28:
	.loc 1 715 0
	.set ___PA___,1
	.loc 1 715 0
	mov	_onewire_state+92,w0
	lsr	w0,#8,w0
	and	w0,#1,w0
	return	
	.set ___PA___,0
.LFE28:
	.size	_onewire_data_state, .-_onewire_data_state
	.align	2
	.global	_onewire_data_low	; export
	.type	_onewire_data_low,@function
_onewire_data_low:
.LFB29:
	.loc 1 717 0
	.set ___PA___,1
.LBB6:
.LBB7:
	.loc 1 1398 0
	mov	#_onewire_state+92,w0
	bclr	[w0],#8
	.loc 1 1399 0
	mov	#tbloffset(_MSG_1WIRE_NEXT_CLOCK_ALERT_str),w0
	mov	#tblpage(_MSG_1WIRE_NEXT_CLOCK_ALERT_str),w1
	call	_bp_message_write_line
.LBE7:
.LBE6:
	.loc 1 717 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_onewire_data_low, .-_onewire_data_low
	.align	2
	.global	_onewire_data_high	; export
	.type	_onewire_data_high,@function
_onewire_data_high:
.LFB30:
	.loc 1 719 0
	.set ___PA___,1
.LBB8:
.LBB9:
	.loc 1 1398 0
	mov	#_onewire_state+92,w0
	bset	[w0],#8
	.loc 1 1399 0
	mov	#tbloffset(_MSG_1WIRE_NEXT_CLOCK_ALERT_str),w0
	mov	#tblpage(_MSG_1WIRE_NEXT_CLOCK_ALERT_str),w1
	call	_bp_message_write_line
.LBE9:
.LBE8:
	.loc 1 719 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_onewire_data_high, .-_onewire_data_high
	.align	2
	.global	_onewire_setup_prepare	; export
	.type	_onewire_setup_prepare,@function
_onewire_setup_prepare:
.LFB31:
	.loc 1 721 0
	.set ___PA___,1
	.loc 1 725 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#4
	.loc 1 728 0
	call	_consumewhitechars
	.loc 1 729 0
	call	_getint
	.loc 1 730 0
	dec	w0,w1
	sub	w1,#1,[w15]
	.set ___BP___,63
	bra	gtu,.L75
	.loc 1 731 0
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
	bra	.L76
.L75:
	.loc 1 733 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 734 0
	mov	#tbloffset(_MSG_1WIRE_SPEED_PROMPT_str),w0
	mov	#tblpage(_MSG_1WIRE_SPEED_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 735 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_configuration,w1
	dec.b	w0,[w1]
.L76:
	.loc 1 739 0
	mov	#_onewire_state+11,w0
	clr.b	[w0]
	.loc 1 740 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_onewire_setup_prepare, .-_onewire_setup_prepare
	.align	2
	.global	_onewire_setup_execute	; export
	.type	_onewire_setup_execute,@function
_onewire_setup_execute:
.LFB32:
	.loc 1 742 0
	.set ___PA___,1
	.loc 1 744 0
	bset.b	_TRISBbits+1,#1
	.loc 1 745 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 746 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_onewire_setup_execute, .-_onewire_setup_execute
	.align	2
	.global	_onewire_pins_state	; export
	.type	_onewire_pins_state,@function
_onewire_pins_state:
.LFB35:
	.loc 1 914 0
	.set ___PA___,1
	.loc 1 914 0
	mov	#tbloffset(_MSG_1WIRE_PINS_STATE_str),w0
	mov	#tblpage(_MSG_1WIRE_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE35:
	.size	_onewire_pins_state, .-_onewire_pins_state
	.align	2
	.global	_onewire_reset	; export
	.type	_onewire_reset,@function
_onewire_reset:
.LFB36:
	.loc 1 916 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI10:
	.loc 1 919 0
	call	_perform_bus_reset
	mov	w0,w8
	.loc 1 920 0
	mov	#tbloffset(_MSG_1WIRE_BUS_RESET_str),w0
	mov	#tblpage(_MSG_1WIRE_BUS_RESET_str),w1
	call	_bp_message_write_buffer
	.loc 1 922 0
	cp0	w8
	.set ___BP___,61
	bra	nz,.L80
	.loc 1 923 0
	mov	#tbloffset(_BPMSG1185_str),w0
	mov	#tblpage(_BPMSG1185_str),w1
	call	_bp_message_write_line
	.loc 1 924 0
	bra	.L79
.L80:
	.loc 1 927 0
	mov	#tbloffset(_MSG_WARNING_HEADER_str),w0
	mov	#tblpage(_MSG_WARNING_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 928 0
	sub	w8,#1,[w15]
	.set ___BP___,72
	bra	nz,.L82
	.loc 1 929 0
	mov	#tbloffset(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w0
	mov	#tblpage(_MSG_WARNING_SHORT_OR_NO_PULLUP_str),w1
	call	_bp_message_write_buffer
	bra	.L83
.L82:
	.loc 1 931 0
	mov	#tbloffset(_MSG_1WIRE_NO_DEVICE_DETECTED_str),w0
	mov	#tblpage(_MSG_1WIRE_NO_DEVICE_DETECTED_str),w1
	call	_bp_message_write_buffer
.L83:
	.loc 1 934 0
	mov	#.LC0,w0
	call	_bp_write_line
.L79:
	.loc 1 935 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE36:
	.size	_onewire_reset, .-_onewire_reset
	.section	.const,psv,page
.LC2:
	.asciz	": "
	.section	.text,code
	.align	2
	.global	_onewire_run_macro	; export
	.type	_onewire_run_macro,@function
_onewire_run_macro:
.LFB34:
	.loc 1 770 0
	.set ___PA___,1
	lnk	#8
.LCFI11:
	mov.d	w8,[w15++]
.LCFI12:
	mov.d	w10,[w15++]
.LCFI13:
	mov	w0,w8
	.loc 1 779 0
	dec	w8,w1
	mov	#48,w0
	sub	w1,w0,[w15]
	.set ___BP___,50
	bra	gtu,.L85
.LBB10:
	.loc 1 782 0
	dec	w8,w9
	.loc 1 784 0
	mov	#_onewire_state+11,w0
	ze	[w0],w0
	sub	w9,w0,[w15]
	.set ___BP___,61
	bra	ltu,.L86
	.loc 1 786 0
	mov	#tbloffset(_MSG_1WIRE_NO_DEVICE_str),w0
	mov	#tblpage(_MSG_1WIRE_NO_DEVICE_str),w1
	call	_bp_message_write_line
	.loc 1 787 0
	bra	.L84
.L86:
	.loc 1 795 0
	mov	#tbloffset(_MSG_1WIRE_ADDRESS_MACRO_HEADER_str),w0
	mov	#tblpage(_MSG_1WIRE_ADDRESS_MACRO_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 796 0
	inc.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 797 0
	mov	#.LC2,w0
	call	_bp_write_string
	.loc 1 770 0
	mul.su	w9,#10,w8
	mov	#_onewire_state+11,w0
	add	w8,w0,w8
.LBE10:
	.loc 1 798 0
	clr	w9
.LBB11:
	.loc 1 801 0
	mov.b	#32,w10
.L88:
	.loc 1 799 0
	ze	[++w8],w0
	call	_bp_write_formatted_integer
	.loc 1 801 0
	mov.b	w10,w0
	call	_user_serial_transmit_character
	.loc 1 802 0
	mov.b	[w8],w0
	call	_onewire_internal_byte_io
	.loc 1 798 0
	inc	w9,w9
	sub	w9,#8,[w15]
	.set ___BP___,88
	bra	nz,.L88
	.loc 1 804 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 805 0
	bra	.L84
.L85:
.LBE11:
	.loc 1 810 0
	mov	#85,w0
	sub	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L92
	.set ___BP___,50
	bra	gtu,.L95
	cp0	w8
	.set ___BP___,50
	bra	z,.L90
	mov	#51,w0
	sub	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L89
	bra	.L109
.L95:
	mov	#236,w0
	sub	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L94
	mov	#240,w0
	sub	w8,w0,[w15]
	.set ___BP___,29
	bra	z,.L94
	mov	#204,w0
	sub	w8,w0,[w15]
	.set ___BP___,71
	bra	nz,.L89
	bra	.L110
.L90:
.LBB12:
	.loc 1 815 0
	mov	#tbloffset(_MSG_1WIRE_MACRO_MENU_HEADER_str),w0
	mov	#tblpage(_MSG_1WIRE_MACRO_MENU_HEADER_str),w1
	call	_bp_message_write_line
	.loc 1 816 0
	mov	#tbloffset(_MSG_1WIRE_MACRO_TABLE_HEADER_str),w0
	mov	#tblpage(_MSG_1WIRE_MACRO_TABLE_HEADER_str),w1
	call	_bp_message_write_line
	.loc 1 823 0
	mov	#_onewire_state+11,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	nz,.L96
	.loc 1 824 0
	mov	#tbloffset(_MSG_1WIRE_NO_DEVICE_str),w0
	mov	#tblpage(_MSG_1WIRE_NO_DEVICE_str),w1
	call	_bp_message_write_line
	bra	.L97
.L96:
	mov	#_onewire_state+12,w9
	.loc 1 823 0
	clr	w8
	.loc 1 826 0
	mov	#_onewire_state+11,w10
.L98:
	.loc 1 827 0
	inc	w8,w8
	mov.d	w8,w0
	call	_print_device_information
	add	w9,#10,w9
	.loc 1 826 0
	ze	[w10],w0
	sub	w0,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L98
.L97:
	.loc 1 832 0
	mov	#tbloffset(_MSG_1WIRE_MACRO_LIST_str),w0
	mov	#tblpage(_MSG_1WIRE_MACRO_LIST_str),w1
	call	_bp_message_write_line
	.loc 1 833 0
	bra	.L84
.L94:
.LBE12:
.LBB13:
	.loc 1 841 0
	mov	#_onewire_state+92,w0
	mov.b	w8,[w0]
	.loc 1 842 0
	mov	#236,w0
	sub	w8,w0,[w15]
	.set ___BP___,72
	bra	nz,.L99
	.loc 1 843 0
	mov	#tbloffset(_MSG_1WIRE_ALARM_MACRO_NAME_str),w0
	mov	#tblpage(_MSG_1WIRE_ALARM_MACRO_NAME_str),w1
	call	_bp_message_write_line
	bra	.L100
.L99:
	.loc 1 845 0
	mov	#tbloffset(_MSG_1WIRE_SEARCH_MACRO_NAME_str),w0
	mov	#tblpage(_MSG_1WIRE_SEARCH_MACRO_NAME_str),w1
	call	_bp_message_write_line
.L100:
	.loc 1 848 0
	mov	#tbloffset(_MSG_1WIRE_MACRO_TABLE_HEADER_str),w0
	mov	#tblpage(_MSG_1WIRE_MACRO_TABLE_HEADER_str),w1
	call	_bp_message_write_line
	.loc 1 853 0
	call	_device_find_first
	.loc 1 854 0
	mov	#_onewire_state+11,w1
	clr.b	[w1]
	.loc 1 856 0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L101
	.loc 1 852 0
	clr	w8
	.loc 1 865 0
	mov	w1,w9
	mov	#_onewire_state,w10
.L103:
	.loc 1 860 0
	inc	w8,w8
	mov	#_onewire_state+3,w1
	mov	w8,w0
	call	_print_device_information
	.loc 1 864 0
	dec	w8,w0
	sub	w0,#9,[w15]
	.set ___BP___,50
	bra	gtu,.L102
	.loc 1 865 0
	ze	[w9],w0
	mul.su	w0,#10,w0
	add	w0,#12,w0
	add	w10,w0,w1
	mov	#_onewire_state+3,w2
	
	repeat	#8-1
	mov.b	[w2++],[w1++]
		
	.loc 1 867 0
	inc.b	[w9],[w9]
.L102:
	.loc 1 872 0
	call	_device_find_next
	.loc 1 856 0
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L103
.L101:
	.loc 1 875 0
	mov	#tbloffset(_MSG_1WIRE_MACRO_TABLE_TRAILER_str),w0
	mov	#tblpage(_MSG_1WIRE_MACRO_TABLE_TRAILER_str),w1
	call	_bp_message_write_line
	.loc 1 876 0
	bra	.L84
.L109:
.LBE13:
.LBB14:
	.loc 1 883 0
	call	_onewire_reset
	.loc 1 884 0
	mov	#tbloffset(_MSG_1WIRE_READ_ROM_MACRO_NAME_str),w0
	mov	#tblpage(_MSG_1WIRE_READ_ROM_MACRO_NAME_str),w1
	call	_bp_message_write_buffer
	.loc 1 885 0
	mov.b	#51,w0
	call	_onewire_internal_byte_io
	sub	w15,#17,w8
	.loc 1 770 0
	sub	w15,#9,w9
	.loc 1 887 0
	setm.b	w10
	.loc 1 889 0
	mov.b	#32,w11
.L104:
	.loc 1 887 0
	mov.b	w10,w0
	call	_onewire_internal_byte_io
	mov.b	w0,[++w8]
	.loc 1 888 0
	ze	w0,w0
	call	_bp_write_formatted_integer
	.loc 1 889 0
	mov.b	w11,w0
	call	_user_serial_transmit_character
	.loc 1 886 0
	sub	w8,w9,[w15]
	.set ___BP___,88
	bra	nz,.L104
	.loc 1 891 0
	mov	#.LC0,w0
	call	_bp_write_line
	.loc 1 892 0
	mov.b	[w15-16],w0
	call	_lookup_device_model
	.loc 1 893 0
	bra	.L84
.L92:
.LBE14:
	.loc 1 897 0
	call	_onewire_reset
	.loc 1 898 0
	mov	#tbloffset(_MSG_1WIRE_MATCH_ROM_MACRO_NAME_str),w0
	mov	#tblpage(_MSG_1WIRE_MATCH_ROM_MACRO_NAME_str),w1
	call	_bp_message_write_line
	.loc 1 899 0
	mov.b	#85,w0
	call	_onewire_internal_byte_io
	.loc 1 900 0
	bra	.L84
.L110:
	.loc 1 903 0
	call	_onewire_reset
	.loc 1 904 0
	mov	#tbloffset(_MSG_1WIRE_SKIP_ROM_MACRO_NAME_str),w0
	mov	#tblpage(_MSG_1WIRE_SKIP_ROM_MACRO_NAME_str),w1
	call	_bp_message_write_line
	.loc 1 905 0
	mov.b	#-52,w0
	call	_onewire_internal_byte_io
	.loc 1 906 0
	bra	.L84
.L89:
	.loc 1 909 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L84:
	.loc 1 912 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE34:
	.size	_onewire_run_macro, .-_onewire_run_macro
	.align	2
	.global	_binary_io_enter_1wire_mode	; export
	.type	_binary_io_enter_1wire_mode,@function
_binary_io_enter_1wire_mode:
.LFB43:
	.loc 1 1189 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI14:
	mov.d	w10,[w15++]
.LCFI15:
	mov.d	w12,[w15++]
.LCFI16:
	mov	w14,[w15++]
.LCFI17:
	.loc 1 1193 0
	bset.b	_TRISBbits+1,#1
	.loc 1 1194 0
	bclr.b	_PORTBbits+1,#1
	.loc 1 1195 0
	bclr.b	_TRISBbits,#6
	.loc 1 1199 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w1
	bset.b	w1,#4
	.loc 1 1203 0
	bclr.b	w1,#3
	mov.b	w1,[w0]
	.loc 1 1207 0
	mov	#tbloffset(_MSG_1WIRE_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_1WIRE_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
.LBB15:
	.loc 1 1249 0
	mov	#_onewire_state+3,w13
.LBE15:
	.loc 1 1220 0
	mov	#tbloffset(_MSG_1WIRE_MODE_IDENTIFIER_str),w10
	mov	#tblpage(_MSG_1WIRE_MODE_IDENTIFIER_str),w11
	.loc 1 1284 0
	mov	#_mode_configuration,w14
.L138:
	.loc 1 1210 0
	call	_user_serial_read_byte
	mov.b	w0,w8
	.loc 1 1211 0
	ze	w8,w0
	lsr	w0,#4,w0
	.loc 1 1213 0
	sub	w0,#1,[w15]
	.set ___BP___,29
	bra	z,.L115
	cp0	w0
	.set ___BP___,50
	bra	z,.L114
	sub	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L116
	sub	w0,#4,[w15]
	.set ___BP___,71
	bra	nz,.L139
	bra	.L141
.L114:
	.loc 1 1215 0
	sub.b	w8,#2,[w15]
	.set ___BP___,29
	bra	z,.L121
	.set ___BP___,50
	bra	gtu,.L124
	cp0.b	w8
	.set ___BP___,50
	bra	z,.L111
	sub.b	w8,#1,[w15]
	.set ___BP___,71
	bra	nz,.L118
	bra	.L142
.L124:
	sub.b	w8,#4,[w15]
	.set ___BP___,29
	bra	z,.L122
	.set ___BP___,50
	bra	ltu,.L118
	sub.b	w8,#8,w0
	sub.b	w0,#1,[w15]
	.set ___BP___,50
	bra	gtu,.L118
	bra	.L143
.L142:
	.loc 1 1220 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	.loc 1 1221 0
	bra	.L138
.L121:
	.loc 1 1224 0
	call	_perform_bus_reset
	.loc 1 1225 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1226 0
	bra	.L138
.L122:
	.loc 1 1229 0
	setm.b	w0
	call	_onewire_internal_byte_io
	call	_user_serial_transmit_character
	.loc 1 1230 0
	bra	.L138
.L143:
.LBB16:
	.loc 1 1237 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1239 0
	mov.b	#-16,w0
	sub.b	w8,#9,[w15]
	.set ___BP___,72
	bra	nz,.L126
	mov.b	#-20,w0
.L126:
	mov	#_onewire_state+92,w1
	mov.b	w0,[w1]
	.loc 1 1246 0
	call	_device_find_first
	.loc 1 1247 0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L127
	.loc 1 1249 0
	mov	#8,w8
.L133:
	mov	w8,w1
	mov	w13,w0
	call	_bp_write_buffer
	.loc 1 1251 0
	call	_device_find_next
	.loc 1 1247 0
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L133
.L127:
	.loc 1 1239 0
	mov	#8,w8
	.loc 1 1257 0
	setm.b	w9
.L129:
	mov.b	w9,w0
	call	_user_serial_transmit_character
	dec	w8,w8
	.loc 1 1256 0
	.set ___BP___,88
	bra	nz,.L129
	bra	.L138
.L118:
.LBE16:
	.loc 1 1264 0
	clr.b	w0
	call	_user_serial_transmit_character
	.loc 1 1265 0
	bra	.L138
.L115:
.LBB17:
	.loc 1 1272 0
	and.b	w8,#15,w8
	.loc 1 1273 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1272 0
	inc.b	w8,w8
	.loc 1 1275 0
	ze	w8,w9
	.set ___BP___,9
	bra	z,.L138
	clr	w8
	.loc 1 1277 0
	mov.b	#1,w12
.L130:
	.loc 1 1276 0
	call	_user_serial_read_byte
	call	_onewire_internal_byte_io
	.loc 1 1277 0
	mov.b	w12,w0
	call	_user_serial_transmit_character
	.loc 1 1275 0
	inc	w8,w8
	sub	w8,w9,[w15]
	.set ___BP___,91
	bra	ltu,.L130
	bra	.L138
.L116:
.LBE17:
	.loc 1 1284 0
	and.b	w8,#1,[w14]
	.loc 1 1285 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1286 0
	bra	.L138
.L141:
	.loc 1 1289 0
	mov.b	w8,w0
	call	_bp_binary_io_peripherals_set
	.loc 1 1290 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 1291 0
	bra	.L138
.L139:
	.loc 1 1300 0
	clr.b	w0
	call	_user_serial_transmit_character
	bra	.L138
.L111:
	.loc 1 1304 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE43:
	.size	_binary_io_enter_1wire_mode, .-_binary_io_enter_1wire_mode
	.section	.data,data
	.align	2
	.type	_onewire_state,@object
	.size	_onewire_state, 94
_onewire_state:
	.skip	92
	.byte -16
	.skip	1
	.section	.const,psv,page
	.type	_CRC_TABLE,@object
	.size	_CRC_TABLE, 256
_CRC_TABLE:
	.byte 0
	.byte 94
	.byte -68
	.byte -30
	.byte 97
	.byte 63
	.byte -35
	.byte -125
	.byte -62
	.byte -100
	.byte 126
	.byte 32
	.byte -93
	.byte -3
	.byte 31
	.byte 65
	.byte -99
	.byte -61
	.byte 33
	.byte 127
	.byte -4
	.byte -94
	.byte 64
	.byte 30
	.byte 95
	.byte 1
	.byte -29
	.byte -67
	.byte 62
	.byte 96
	.byte -126
	.byte -36
	.byte 35
	.byte 125
	.byte -97
	.byte -63
	.byte 66
	.byte 28
	.byte -2
	.byte -96
	.byte -31
	.byte -65
	.byte 93
	.byte 3
	.byte -128
	.byte -34
	.byte 60
	.byte 98
	.byte -66
	.byte -32
	.byte 2
	.byte 92
	.byte -33
	.byte -127
	.byte 99
	.byte 61
	.byte 124
	.byte 34
	.byte -64
	.byte -98
	.byte 29
	.byte 67
	.byte -95
	.byte -1
	.byte 70
	.byte 24
	.byte -6
	.byte -92
	.byte 39
	.byte 121
	.byte -101
	.byte -59
	.byte -124
	.byte -38
	.byte 56
	.byte 102
	.byte -27
	.byte -69
	.byte 89
	.byte 7
	.byte -37
	.byte -123
	.byte 103
	.byte 57
	.byte -70
	.byte -28
	.byte 6
	.byte 88
	.byte 25
	.byte 71
	.byte -91
	.byte -5
	.byte 120
	.byte 38
	.byte -60
	.byte -102
	.byte 101
	.byte 59
	.byte -39
	.byte -121
	.byte 4
	.byte 90
	.byte -72
	.byte -26
	.byte -89
	.byte -7
	.byte 27
	.byte 69
	.byte -58
	.byte -104
	.byte 122
	.byte 36
	.byte -8
	.byte -90
	.byte 68
	.byte 26
	.byte -103
	.byte -57
	.byte 37
	.byte 123
	.byte 58
	.byte 100
	.byte -122
	.byte -40
	.byte 91
	.byte 5
	.byte -25
	.byte -71
	.byte -116
	.byte -46
	.byte 48
	.byte 110
	.byte -19
	.byte -77
	.byte 81
	.byte 15
	.byte 78
	.byte 16
	.byte -14
	.byte -84
	.byte 47
	.byte 113
	.byte -109
	.byte -51
	.byte 17
	.byte 79
	.byte -83
	.byte -13
	.byte 112
	.byte 46
	.byte -52
	.byte -110
	.byte -45
	.byte -115
	.byte 111
	.byte 49
	.byte -78
	.byte -20
	.byte 14
	.byte 80
	.byte -81
	.byte -15
	.byte 19
	.byte 77
	.byte -50
	.byte -112
	.byte 114
	.byte 44
	.byte 109
	.byte 51
	.byte -47
	.byte -113
	.byte 12
	.byte 82
	.byte -80
	.byte -18
	.byte 50
	.byte 108
	.byte -114
	.byte -48
	.byte 83
	.byte 13
	.byte -17
	.byte -79
	.byte -16
	.byte -82
	.byte 76
	.byte 18
	.byte -111
	.byte -49
	.byte 45
	.byte 115
	.byte -54
	.byte -108
	.byte 118
	.byte 40
	.byte -85
	.byte -11
	.byte 23
	.byte 73
	.byte 8
	.byte 86
	.byte -76
	.byte -22
	.byte 105
	.byte 55
	.byte -43
	.byte -117
	.byte 87
	.byte 9
	.byte -21
	.byte -75
	.byte 54
	.byte 104
	.byte -118
	.byte -44
	.byte -107
	.byte -53
	.byte 41
	.byte 119
	.byte -12
	.byte -86
	.byte 72
	.byte 22
	.byte -23
	.byte -73
	.byte 85
	.byte 11
	.byte -120
	.byte -42
	.byte 52
	.byte 106
	.byte 43
	.byte 117
	.byte -105
	.byte -55
	.byte 74
	.byte 20
	.byte -10
	.byte -88
	.byte 116
	.byte 42
	.byte -56
	.byte -106
	.byte 21
	.byte 75
	.byte -87
	.byte -9
	.byte -74
	.byte -24
	.byte 10
	.byte 84
	.byte -41
	.byte -119
	.byte 107
	.byte 53
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
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
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
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI1-.LFB44
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
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI2-.LFB45
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
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI3-.LFB41
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI11-.LFB34
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI13-.LCFI11
	.byte	0x8a
	.uleb128 0x9
	.byte	0x88
	.uleb128 0x7
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI14-.LFB43
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
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
.LEFDE42:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 4 "../base.h"
	.section	.debug_info,info
	.4byte	0x12da
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../1wire.c"
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
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0xc1
	.4byte	0x117
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
	.4byte	0x117
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
	.4byte	0x20c
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x3
	.2byte	0x6d8
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x18c
	.uleb128 0x4
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x6e2
	.4byte	0x28f
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x3
	.2byte	0x6e3
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x21e
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x703
	.4byte	0x40e
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x3
	.2byte	0x704
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x2a1
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x719
	.4byte	0x55d
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x3
	.2byte	0x71a
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x420
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.2byte	0x78d
	.4byte	0x600
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x3
	.2byte	0x78e
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x66e
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x3
	.2byte	0x79b
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x682
	.uleb128 0x9
	.4byte	0x56f
	.uleb128 0x9
	.4byte	0x600
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x78b
	.4byte	0x6a3
	.uleb128 0xa
	.4byte	0x66e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x3
	.2byte	0x7a2
	.4byte	0x682
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x7fd
	.4byte	0x7b0
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x3
	.2byte	0x7fe
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x107
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
	.4byte	0x6b7
	.uleb128 0xb
	.byte	0x3
	.byte	0x4
	.byte	0x38
	.4byte	0x8a9
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x4
	.byte	0x39
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x4
	.byte	0x3a
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x4
	.byte	0x3f
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0xe7
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
	.4byte	0x7c4
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x943
	.uleb128 0xf
	.asciz	"MACRO_DUMP_ROSTER"
	.sleb128 0
	.uleb128 0xf
	.asciz	"MACRO_READ_ROM"
	.sleb128 51
	.uleb128 0xf
	.asciz	"MACRO_MATCH_ROM"
	.sleb128 85
	.uleb128 0xf
	.asciz	"MACRO_SKIP_ROM"
	.sleb128 204
	.uleb128 0xf
	.asciz	"MACRO_ALARM_SEARCH"
	.sleb128 236
	.uleb128 0xf
	.asciz	"MACRO_SEARCH_ROM"
	.sleb128 240
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.2byte	0x20a
	.4byte	0x99c
	.uleb128 0xf
	.asciz	"ONEWIRE_BUS_RESET_OK"
	.sleb128 0
	.uleb128 0xf
	.asciz	"ONEWIRE_BUS_RESET_SHORT"
	.sleb128 1
	.uleb128 0xf
	.asciz	"ONEWIRE_BUS_RESET_NO_DEVICE"
	.sleb128 2
	.byte	0x0
	.uleb128 0x6
	.asciz	"onewire_bus_reset_result_t"
	.byte	0x1
	.2byte	0x215
	.4byte	0x943
	.uleb128 0x7
	.byte	0x5e
	.byte	0x1
	.2byte	0x21a
	.4byte	0xabd
	.uleb128 0x10
	.asciz	"crc8"
	.byte	0x1
	.2byte	0x21f
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.asciz	"last_device_discrepancy"
	.byte	0x1
	.2byte	0x224
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.asciz	"last_family_discrepancy"
	.byte	0x1
	.2byte	0x229
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.asciz	"rom_bytes"
	.byte	0x1
	.2byte	0x22e
	.4byte	0xabd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.asciz	"used_roster_entries"
	.byte	0x1
	.2byte	0x233
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x10
	.asciz	"roster_entries"
	.byte	0x1
	.2byte	0x238
	.4byte	0xacd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.asciz	"command_byte"
	.byte	0x1
	.2byte	0x23d
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x5
	.asciz	"data_state"
	.byte	0x1
	.2byte	0x246
	.4byte	0xe7
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.uleb128 0x5
	.asciz	"last_device_flag"
	.byte	0x1
	.2byte	0x24c
	.4byte	0xe7
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x5d
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe7
	.4byte	0xacd
	.uleb128 0x12
	.4byte	0x117
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe7
	.4byte	0xae3
	.uleb128 0x12
	.4byte	0x117
	.byte	0x7
	.uleb128 0x12
	.4byte	0x117
	.byte	0x9
	.byte	0x0
	.uleb128 0x6
	.asciz	"onewire_state_t"
	.byte	0x1
	.2byte	0x24e
	.4byte	0x9bf
	.uleb128 0x13
	.asciz	"onewire_internal_set_data_state"
	.byte	0x1
	.2byte	0x575
	.byte	0x1
	.byte	0x3
	.4byte	0xb34
	.uleb128 0x14
	.asciz	"state"
	.byte	0x1
	.2byte	0x575
	.4byte	0xb34
	.byte	0x0
	.uleb128 0x15
	.4byte	0xb39
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x16
	.asciz	"update_crc8"
	.byte	0x1
	.2byte	0x4a0
	.byte	0x1
	.4byte	0xe7
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0xb76
	.uleb128 0x17
	.asciz	"value"
	.byte	0x1
	.2byte	0x4a0
	.4byte	0xb76
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.4byte	0xe7
	.uleb128 0x16
	.asciz	"perform_bus_reset"
	.byte	0x1
	.2byte	0x3a9
	.byte	0x1
	.4byte	0x99c
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0xbb6
	.uleb128 0x18
	.asciz	"result"
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x99c
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x16
	.asciz	"onewire_internal_bit_io"
	.byte	0x1
	.2byte	0x51a
	.byte	0x1
	.4byte	0xb39
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.4byte	0xbfa
	.uleb128 0x17
	.asciz	"bit_value"
	.byte	0x1
	.2byte	0x51a
	.4byte	0xb39
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x16
	.asciz	"onewire_internal_byte_io"
	.byte	0x1
	.2byte	0x557
	.byte	0x1
	.4byte	0xe7
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.4byte	0xc66
	.uleb128 0x17
	.asciz	"byte_value"
	.byte	0x1
	.2byte	0x557
	.4byte	0xe7
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.asciz	"bit_index"
	.byte	0x1
	.2byte	0x558
	.4byte	0xe7
	.uleb128 0x19
	.asciz	"current_bit"
	.byte	0x1
	.2byte	0x559
	.4byte	0xe7
	.byte	0x0
	.uleb128 0x16
	.asciz	"perform_device_search"
	.byte	0x1
	.2byte	0x40d
	.byte	0x1
	.4byte	0xb39
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0xd4c
	.uleb128 0x18
	.asciz	"id_bit"
	.byte	0x1
	.2byte	0x40e
	.4byte	0xb39
	.byte	0x1
	.byte	0x5b
	.uleb128 0x18
	.asciz	"cmp_id_bit"
	.byte	0x1
	.2byte	0x40f
	.4byte	0xb39
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.asciz	"id_bit_number"
	.byte	0x1
	.2byte	0x411
	.4byte	0xe7
	.byte	0x1
	.byte	0x5a
	.uleb128 0x18
	.asciz	"last_zero"
	.byte	0x1
	.2byte	0x412
	.4byte	0xe7
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x18
	.asciz	"rom_byte_offset"
	.byte	0x1
	.2byte	0x413
	.4byte	0xe7
	.byte	0x1
	.byte	0x59
	.uleb128 0x18
	.asciz	"search_result"
	.byte	0x1
	.2byte	0x414
	.4byte	0xe7
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.asciz	"rom_byte_mask"
	.byte	0x1
	.2byte	0x415
	.4byte	0xe7
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.asciz	"search_direction"
	.byte	0x1
	.2byte	0x416
	.4byte	0xe7
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.uleb128 0x1a
	.asciz	"device_find_first"
	.byte	0x1
	.2byte	0x403
	.byte	0x1
	.4byte	0xb39
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.asciz	"device_find_next"
	.byte	0x1
	.2byte	0x40b
	.byte	0x1
	.4byte	0xb39
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.asciz	"lookup_device_model"
	.byte	0x1
	.2byte	0x3e4
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0xdcd
	.uleb128 0x17
	.asciz	"model"
	.byte	0x1
	.2byte	0x3e4
	.4byte	0xb76
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.asciz	"print_device_information"
	.byte	0x1
	.2byte	0x2ec
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0xe32
	.uleb128 0x17
	.asciz	"roster_id"
	.byte	0x1
	.2byte	0x2ec
	.4byte	0xe32
	.byte	0x1
	.byte	0x58
	.uleb128 0x17
	.asciz	"rom_address"
	.byte	0x1
	.2byte	0x2ed
	.4byte	0xe37
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x16c
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x15
	.4byte	0x16c
	.uleb128 0x1d
	.byte	0x2
	.4byte	0xb76
	.uleb128 0x1e
	.byte	0x1
	.asciz	"onewire_read"
	.byte	0x1
	.2byte	0x2bf
	.byte	0x1
	.4byte	0x107
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"onewire_write"
	.byte	0x1
	.2byte	0x2c1
	.byte	0x1
	.4byte	0x107
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0xe95
	.uleb128 0x17
	.asciz	"value"
	.byte	0x1
	.2byte	0x2c1
	.4byte	0xe95
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x15
	.4byte	0x107
	.uleb128 0x1e
	.byte	0x1
	.asciz	"onewire_read_bit"
	.byte	0x1
	.2byte	0x2c7
	.byte	0x1
	.4byte	0xb39
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"onewire_clock_pulse"
	.byte	0x1
	.2byte	0x2c9
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"onewire_data_state"
	.byte	0x1
	.2byte	0x2cb
	.byte	0x1
	.4byte	0x107
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"onewire_data_low"
	.byte	0x1
	.2byte	0x2cd
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0xf43
	.uleb128 0x22
	.4byte	0xafb
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x23
	.4byte	0xb25
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"onewire_data_high"
	.byte	0x1
	.2byte	0x2cf
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0xf7d
	.uleb128 0x22
	.4byte	0xafb
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x23
	.4byte	0xb25
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"onewire_setup_prepare"
	.byte	0x1
	.2byte	0x2d1
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0xfb8
	.uleb128 0x18
	.asciz	"speed"
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xc3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"onewire_setup_execute"
	.byte	0x1
	.2byte	0x2e6
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"onewire_pins_state"
	.byte	0x1
	.2byte	0x392
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"onewire_reset"
	.byte	0x1
	.2byte	0x394
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0x103b
	.uleb128 0x18
	.asciz	"reset_result"
	.byte	0x1
	.2byte	0x395
	.4byte	0x99c
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"onewire_run_macro"
	.byte	0x1
	.2byte	0x302
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0x1122
	.uleb128 0x17
	.asciz	"macro"
	.byte	0x1
	.2byte	0x302
	.4byte	0xe95
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.asciz	"macro_id"
	.byte	0x1
	.2byte	0x303
	.4byte	0x107
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0x10a6
	.uleb128 0x18
	.asciz	"rom_index"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x16c
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x24
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0x10c2
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x32d
	.4byte	0x16c
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x24
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0x10f1
	.uleb128 0x19
	.asciz	"device_found"
	.byte	0x1
	.2byte	0x346
	.4byte	0xb39
	.uleb128 0x25
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x347
	.4byte	0x16c
	.byte	0x0
	.uleb128 0x26
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x18
	.asciz	"device_address"
	.byte	0x1
	.2byte	0x370
	.4byte	0xabd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x371
	.4byte	0x16c
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"binary_io_enter_1wire_mode"
	.byte	0x1
	.2byte	0x4a5
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.4byte	0x11b4
	.uleb128 0x19
	.asciz	"input_byte"
	.byte	0x1
	.2byte	0x4a6
	.4byte	0xe7
	.uleb128 0x19
	.asciz	"command"
	.byte	0x1
	.2byte	0x4a7
	.4byte	0xe7
	.uleb128 0x24
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0x119b
	.uleb128 0x19
	.asciz	"next"
	.byte	0x1
	.2byte	0x4d2
	.4byte	0xb39
	.uleb128 0x25
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x4d3
	.4byte	0x16c
	.byte	0x0
	.uleb128 0x26
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x4f6
	.4byte	0x16c
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6de
	.4byte	0x11c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x20c
	.uleb128 0x27
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x11d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x28f
	.uleb128 0x27
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x715
	.4byte	0x11e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x40e
	.uleb128 0x27
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x72b
	.4byte	0x11fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x55d
	.uleb128 0x27
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x120e
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x6a3
	.uleb128 0x27
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x80c
	.4byte	0x1221
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x7b0
	.uleb128 0x29
	.4byte	.LASF7
	.byte	0x1
	.byte	0x3d
	.4byte	0x8a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"onewire_state"
	.byte	0x1
	.2byte	0x253
	.4byte	0xae3
	.byte	0x5
	.byte	0x3
	.4byte	_onewire_state
	.uleb128 0x11
	.4byte	0xe7
	.4byte	0x125f
	.uleb128 0x12
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x18
	.asciz	"CRC_TABLE"
	.byte	0x1
	.2byte	0x262
	.4byte	0x1277
	.byte	0x5
	.byte	0x3
	.4byte	_CRC_TABLE
	.uleb128 0x15
	.4byte	0x124f
	.uleb128 0x27
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x6de
	.4byte	0x11c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x6e9
	.4byte	0x11d5
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x715
	.4byte	0x11e8
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x72b
	.4byte	0x11fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF5
	.byte	0x3
	.2byte	0x7a3
	.4byte	0x120e
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF6
	.byte	0x3
	.2byte	0x80c
	.4byte	0x1221
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF7
	.byte	0x1
	.byte	0x3d
	.4byte	0x8a9
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
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1b
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.4byte	0x132
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x12de
	.4byte	0xe3d
	.asciz	"onewire_read"
	.4byte	0xe5e
	.asciz	"onewire_write"
	.4byte	0xe9a
	.asciz	"onewire_read_bit"
	.4byte	0xebf
	.asciz	"onewire_clock_pulse"
	.4byte	0xee3
	.asciz	"onewire_data_state"
	.4byte	0xf0a
	.asciz	"onewire_data_low"
	.4byte	0xf43
	.asciz	"onewire_data_high"
	.4byte	0xf7d
	.asciz	"onewire_setup_prepare"
	.4byte	0xfb8
	.asciz	"onewire_setup_execute"
	.4byte	0xfde
	.asciz	"onewire_pins_state"
	.4byte	0x1001
	.asciz	"onewire_reset"
	.4byte	0x103b
	.asciz	"onewire_run_macro"
	.4byte	0x1122
	.asciz	"binary_io_enter_1wire_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x140
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x12de
	.4byte	0xe7
	.asciz	"uint8_t"
	.4byte	0x107
	.asciz	"uint16_t"
	.4byte	0x16c
	.asciz	"size_t"
	.4byte	0x18c
	.asciz	"tagTRISABITS"
	.4byte	0x20c
	.asciz	"TRISABITS"
	.4byte	0x21e
	.asciz	"tagPORTABITS"
	.4byte	0x28f
	.asciz	"PORTABITS"
	.4byte	0x2a1
	.asciz	"tagTRISBBITS"
	.4byte	0x40e
	.asciz	"TRISBBITS"
	.4byte	0x420
	.asciz	"tagPORTBBITS"
	.4byte	0x55d
	.asciz	"PORTBBITS"
	.4byte	0x682
	.asciz	"tagAD1CON1BITS"
	.4byte	0x6a3
	.asciz	"AD1CON1BITS"
	.4byte	0x6b7
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x7b0
	.asciz	"AD1PCFGBITS"
	.4byte	0x8a9
	.asciz	"mode_configuration_t"
	.4byte	0x99c
	.asciz	"onewire_bus_reset_result_t"
	.4byte	0xae3
	.asciz	"onewire_state_t"
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
	.asciz	"index"
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
