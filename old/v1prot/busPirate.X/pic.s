	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\pic.c"
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
	.type	_write_zero,@function
_write_zero:
.LFB32:
	.file 1 "../pic.c"
	.loc 1 232 0
	.set ___PA___,1
	.loc 1 233 0
	mov	#25,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 234 0
	mov	#25,w1
	mov	#512,w0
	call	_bitbang_set_pins_low
	.loc 1 235 0
	mov	#50,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 236 0
	return	
	.set ___PA___,0
.LFE32:
	.size	_write_zero, .-_write_zero
	.align	2
	.type	_write_bits,@function
_write_bits:
.LFB31:
	.loc 1 220 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov.d	w12,[w15++]
.LCFI2:
	mov	w0,w13
.LBB25:
	.loc 1 223 0
	ze	w1,w12
	.set ___BP___,9
	bra	z,.L2
	clr	w9
	.loc 1 221 0
	mov.b	#1,w8
	.loc 1 224 0
	mov	#256,w10
	.loc 1 225 0
	mov	#512,w11
.L4:
	.loc 1 224 0
	mov	#25,w1
	mov	w10,w0
	call	_bitbang_set_pins_high
	.loc 1 225 0
	ze	w8,w0
	and	w0,w13,w1
	xor	w0,w1,w0
	dec	w0,w0
	lsr	w0,#15,w0
	mov	#25,w2
	mov	w11,w1
	call	_bitbang_set_pins
	.loc 1 226 0
	mov	#25,w1
	mov	w10,w0
	call	_bitbang_set_pins_low
	.loc 1 227 0
	mov	#25,w1
	mov	w11,w0
	call	_bitbang_set_pins_low
	.loc 1 228 0
	add.b	w8,w8,w8
	.loc 1 223 0
	inc	w9,w9
	sub	w9,w12,[w15]
	.set ___BP___,91
	bra	ltu,.L4
.L2:
.LBE25:
	.loc 1 230 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE31:
	.size	_write_bits, .-_write_bits
	.align	2
	.type	_read_bits,@function
_read_bits:
.LFB29:
	.loc 1 180 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	mov.d	w10,[w15++]
.LCFI4:
	mov.d	w12,[w15++]
.LCFI5:
.LBB26:
	.loc 1 183 0
	ze	w0,w12
	.loc 1 181 0
	clr	w9
	.loc 1 183 0
	.set ___BP___,9
	bra	z,.L7
	.loc 1 186 0
	ze	w0,w0
	dec	w0,w0
	mov	#1,w13
	sl	w13,w0,w13
	.loc 1 183 0
	mov	w9,w8
	.loc 1 181 0
	mov	w8,w9
	.loc 1 184 0
	mov	#50,w10
	mov	#256,w11
.L8:
	mov	w10,w1
	mov	w11,w0
	call	_bitbang_set_pins_high
	.loc 1 185 0
	lsr	w9,w9
	.loc 1 186 0
	mov	#512,w0
	call	_bitbang_read_pin
	ze	w0,w0
	sl	w0,w13,w0
	.loc 1 185 0
	ior	w9,w0,w9
	.loc 1 187 0
	mov	w10,w1
	mov	w11,w0
	call	_bitbang_set_pins_low
	.loc 1 183 0
	inc	w8,w8
	sub	w8,w12,[w15]
	.set ___BP___,91
	bra	ltu,.L8
.L7:
.LBE26:
	.loc 1 190 0
	mov	#50,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 191 0
	mov	#50,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 192 0
	mov	#20,w1
	mov	#512,w0
	call	_bitbang_set_pins_low
	.loc 1 195 0
	mov	w9,w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_read_bits, .-_read_bits
	.section	.const,psv,page
.LC0:
	.asciz	")"
	.section	.text,code
	.align	2
	.global	_pic_setup_prepare	; export
	.type	_pic_setup_prepare,@function
_pic_setup_prepare:
.LFB24:
	.loc 1 132 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI6:
	.loc 1 133 0
	call	_consumewhitechars
	.loc 1 134 0
	call	_getint
	mov	w0,w8
	.loc 1 135 0
	call	_consumewhitechars
	.loc 1 136 0
	call	_getint
	.loc 1 138 0
	dec	w8,w8
	sub	w8,#1,[w15]
	.set ___BP___,73
	bra	gtu,.L12
	.loc 1 140 0
	sub	w0,#3,[w15]
	.set ___BP___,100
	bra	leu,.L13
.L12:
	.loc 1 141 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 142 0
	mov	#tbloffset(_MSG_PIC_MODE_PROMPT_str),w0
	mov	#tblpage(_MSG_PIC_MODE_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 143 0
	clr	w3
	mov	#2,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_mode_info,w8
	dec.b	w0,w0
	and.b	w0,#1,w0
	mov.b	[w8],w1
	bclr.b	w1,#0
	ior.b	w1,w0,[w8]
	.loc 1 144 0
	mov	#tbloffset(_MSG_PIC_DELAY_PROMPT_str),w0
	mov	#tblpage(_MSG_PIC_DELAY_PROMPT_str),w1
	call	_bp_message_write_line
	.loc 1 145 0
	clr	w3
	mov	#3,w2
	mov	w3,w1
	mov	#1,w0
	call	_getnumber
	and.b	w0,#3,w0
	add.b	w0,w0,w0
	mov.b	#-7,w1
	and.b	w1,[w8],w1
	ior.b	w1,w0,[w8]
	bra	.L14
.L13:
	.loc 1 147 0
	mov	#tbloffset(_MSG_PIC_MODE_HEADER_str),w0
	mov	#tblpage(_MSG_PIC_MODE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 148 0
	mov	#_mode_info,w0
	mov.b	[w0],w0
	and.b	w0,#8,w1
	mov.b	#4,w0
	.set ___BP___,50
	bra	nz,.L15
	mov.b	#6,w0
.L15:
	call	_bp_write_dec_byte
	.loc 1 149 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 150 0
	mov	_mode_info,w0
	lsr	w0,w0
	and.b	w0,#3,w0
	call	_bp_write_dec_byte
	.loc 1 151 0
	mov	#.LC0,w0
	call	_bp_write_line
.L14:
	.loc 1 155 0
	mov	#_mode_configuration+2,w0
	.loc 1 156 0
	mov.b	#48,w1
	ior.b	w1,[w0],[w0]
	.loc 1 159 0
	mov	#100,w1
	mov	#768,w0
	call	_bitbang_set_pins_low
	.loc 1 160 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE24:
	.size	_pic_setup_prepare, .-_pic_setup_prepare
	.align	2
	.global	_pic_setup_execute	; export
	.type	_pic_setup_execute,@function
_pic_setup_execute:
.LFB25:
	.loc 1 162 0
	.set ___PA___,1
	.loc 1 162 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#5
	return	
	.set ___PA___,0
.LFE25:
	.size	_pic_setup_execute, .-_pic_setup_execute
	.align	2
	.global	_pic_cleanup	; export
	.type	_pic_cleanup,@function
_pic_cleanup:
.LFB26:
	.loc 1 164 0
	.set ___PA___,1
	.loc 1 164 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#5
	return	
	.set ___PA___,0
.LFE26:
	.size	_pic_cleanup, .-_pic_cleanup
	.section	.const,psv,page
.LC1:
	.byte	0
	.section	.text,code
	.align	2
	.global	_pic_start	; export
	.type	_pic_start,@function
_pic_start:
.LFB27:
	.loc 1 166 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI7:
	.loc 1 167 0
	mov	#_mode_info,w8
	bset.b	[w8],#3
	.loc 1 168 0
	mov	#tbloffset(_MSG_PIC_MODE_COMMAND_str),w0
	mov	#tblpage(_MSG_PIC_MODE_COMMAND_str),w1
	call	_bp_message_write_buffer
	.loc 1 169 0
	mov.b	[w8],w8
	and.b	w8,#8,w1
	mov.b	#52,w0
	.set ___BP___,61
	bra	nz,.L20
	mov.b	#54,w0
.L20:
	call	_user_serial_transmit_character
	.loc 1 170 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#5
	.loc 1 171 0
	mov	#.LC1,w0
	call	_bp_write_line
	.loc 1 172 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_pic_start, .-_pic_start
	.align	2
	.global	_pic_stop	; export
	.type	_pic_stop,@function
_pic_stop:
.LFB28:
	.loc 1 174 0
	.set ___PA___,1
	.loc 1 175 0
	mov	#_mode_info,w0
	bclr.b	[w0],#3
	.loc 1 176 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#5
	.loc 1 177 0
	mov	#tbloffset(_MSG_PIC_MODE_DATA_str),w0
	mov	#tblpage(_MSG_PIC_MODE_DATA_str),w1
	call	_bp_message_write_line
	.loc 1 178 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_pic_stop, .-_pic_stop
	.align	2
	.global	_pic_read	; export
	.type	_pic_read,@function
_pic_read:
.LFB30:
	.loc 1 197 0
	.set ___PA___,1
	.loc 1 198 0
	mov	#_mode_info,w0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	.set ___BP___,79
	bra	z,.L24
	.loc 1 199 0
	mov	#tbloffset(_MSG_PIC_NO_READ_str),w0
	mov	#tblpage(_MSG_PIC_NO_READ_str),w1
	call	_bp_message_write_line
	.loc 1 200 0
	clr	w0
	bra	.L25
.L24:
	.loc 1 203 0
	mov	_mode_info,w0
	and	w0,#1,w0
	.set ___BP___,50
	bra	z,.L27
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L29
	bra	.L30
.L27:
	.loc 1 205 0
	mov	#512,w0
	call	_bitbang_read_pin
	.loc 1 206 0
	mov	#50,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 207 0
	mov	#50,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 208 0
	mov.b	#14,w0
	call	_read_bits
	bra	.L25
.L30:
	.loc 1 211 0
	mov	#512,w0
	call	_bitbang_read_pin
	.loc 1 212 0
	mov.b	#16,w0
	call	_read_bits
	bra	.L25
.L29:
	.loc 1 215 0
	mov	#tbloffset(_MSG_PIC_UNKNOWN_MODE_str),w0
	mov	#tblpage(_MSG_PIC_UNKNOWN_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 216 0
	clr	w0
.L25:
	.loc 1 218 0
	return	
	.set ___PA___,0
.LFE30:
	.size	_pic_read, .-_pic_read
	.align	2
	.global	_pic_write	; export
	.type	_pic_write,@function
_pic_write:
.LFB33:
	.loc 1 238 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI8:
	mov	w0,w8
	.loc 1 239 0
	mov	#_mode_info,w0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	.set ___BP___,50
	bra	z,.L32
	.loc 1 240 0
	mov	_mode_info,w0
	and	w0,#1,w0
	.set ___BP___,50
	bra	z,.L34
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L41
	bra	.L43
.L34:
	.loc 1 242 0
	mov.b	#6,w1
	mov	w8,w0
	call	_write_bits
	.loc 1 243 0
	bra	.L36
.L43:
	.loc 1 246 0
	mov.b	#4,w1
	mov	w8,w0
	call	_write_bits
	.loc 1 247 0
	bra	.L36
.L41:
	.loc 1 250 0
	mov	#tbloffset(_MSG_PIC_UNKNOWN_MODE_str),w0
	mov	#tblpage(_MSG_PIC_UNKNOWN_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 251 0
	clr	w0
	bra	.L37
.L36:
	.loc 1 254 0
	mov	_mode_info,w0
	lsr	w0,w0
	and	w0,#3,w0
	call	_bp_delay_ms
	.loc 1 274 0
	mov	#256,w0
	bra	.L37
.L32:
	.loc 1 256 0
	mov	_mode_info,w0
	and	w0,#1,w0
	.set ___BP___,50
	bra	z,.L39
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L42
	bra	.L44
.L39:
	.loc 1 258 0
	call	_write_zero
	.loc 1 259 0
	mov.b	#14,w1
	mov	w8,w0
	call	_write_bits
	.loc 1 260 0
	call	_write_zero
	.loc 1 274 0
	mov	#256,w0
	.loc 1 261 0
	bra	.L37
.L44:
	.loc 1 264 0
	mov.b	#16,w1
	mov	w8,w0
	call	_write_bits
	.loc 1 274 0
	mov	#256,w0
	.loc 1 265 0
	bra	.L37
.L42:
	.loc 1 268 0
	mov	#tbloffset(_MSG_PIC_UNKNOWN_MODE_str),w0
	mov	#tblpage(_MSG_PIC_UNKNOWN_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 269 0
	clr	w0
.L37:
	.loc 1 275 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE33:
	.size	_pic_write, .-_pic_write
	.align	2
	.global	_pic_run_macro	; export
	.type	_pic_run_macro,@function
_pic_run_macro:
.LFB34:
	.loc 1 277 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	.loc 1 278 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L47
	sub	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L55
	bra	.L57
.L47:
	.loc 1 280 0
	mov	#tbloffset(_MSG_PIC_MACRO_MENU_str),w0
	mov	#tblpage(_MSG_PIC_MACRO_MENU_str),w1
	call	_bp_message_write_line
	.loc 1 281 0
	bra	.L45
.L57:
	.loc 1 284 0
	mov	_mode_info,w0
	btst	w0,#0
	.set ___BP___,50
	bra	nz,.L56
.LBB27:
	.loc 1 286 0
	mov	#_bus_pirate_configuration+10,w0
	bset	[w0],#0
	.loc 1 287 0
	call	_pic_start
	.loc 1 288 0
	clr	w0
	call	_pic_write
	.loc 1 289 0
	call	_pic_stop
	.loc 1 291 0
	clr	w0
	call	_pic_write
	.loc 1 292 0
	call	_pic_start
	.loc 1 293 0
	clr	w8
.LBB28:
	.loc 1 294 0
	mov	#6,w9
.L52:
	mov	w9,w0
	call	_pic_write
	.loc 1 293 0
	inc	w8,w8
	sub	w8,#6,[w15]
	.set ___BP___,85
	bra	nz,.L52
.LBE28:
	.loc 1 296 0
	mov	#4,w0
	call	_pic_write
	.loc 1 297 0
	call	_pic_stop
	.loc 1 298 0
	call	_pic_read
	mov	w0,w8
	.loc 1 299 0
	mov	#_bus_pirate_configuration+10,w0
	bclr	[w0],#0
	.loc 1 300 0
	mov	#tbloffset(_MSG_PIC_DEVICE_ID_str),w0
	mov	#tblpage(_MSG_PIC_DEVICE_ID_str),w1
	call	_bp_message_write_buffer
	.loc 1 301 0
	lsr	w8,#5,w0
	call	_bp_write_hex_word
	.loc 1 302 0
	mov	#tbloffset(_MSG_PIC_REVISION_ID_str),w0
	mov	#tblpage(_MSG_PIC_REVISION_ID_str),w1
	call	_bp_message_write_buffer
	.loc 1 303 0
	and.b	w8,#31,w0
	call	_bp_write_hex_byte
	.loc 1 304 0
	mov	#.LC1,w0
	call	_bp_write_line
	.loc 1 305 0
	bra	.L53
.L56:
.LBE27:
	.loc 1 310 0
	mov	#tbloffset(_MSG_PIC_MACRO_NOT_IMPLEMENTED_str),w0
	mov	#tblpage(_MSG_PIC_MACRO_NOT_IMPLEMENTED_str),w1
	call	_bp_message_write_line
.L53:
	.loc 1 313 0
	mov	#tbloffset(_MSG_PIC_EXIT_MODE_str),w0
	mov	#tblpage(_MSG_PIC_EXIT_MODE_str),w1
	call	_bp_message_write_line
	.loc 1 314 0
	bra	.L45
.L55:
	.loc 1 317 0
	mov	#tbloffset(_MSG_UNKNOWN_MACRO_ERROR_str),w0
	mov	#tblpage(_MSG_UNKNOWN_MACRO_ERROR_str),w1
	call	_bp_message_write_line
.L45:
	.loc 1 320 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE34:
	.size	_pic_run_macro, .-_pic_run_macro
	.align	2
	.global	_pic_print_pins_state	; export
	.type	_pic_print_pins_state,@function
_pic_print_pins_state:
.LFB35:
	.loc 1 322 0
	.set ___PA___,1
	.loc 1 322 0
	mov	#tbloffset(_MSG_PIC_PINS_STATE_str),w0
	mov	#tblpage(_MSG_PIC_PINS_STATE_str),w1
	call	_bp_message_write_line
	return	
	.set ___PA___,0
.LFE35:
	.size	_pic_print_pins_state, .-_pic_print_pins_state
	.align	2
	.global	_binary_io_enter_pic_mode	; export
	.type	_binary_io_enter_pic_mode,@function
_binary_io_enter_pic_mode:
.LFB36:
	.loc 1 342 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	.loc 1 343 0
	mov	#tbloffset(_MSG_PIC_MODE_IDENTIFIER_str),w0
	mov	#tblpage(_MSG_PIC_MODE_IDENTIFIER_str),w1
	call	_bp_message_write_buffer
	.loc 1 346 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#4
	.loc 1 349 0
	mov	#100,w1
	mov	#768,w0
	call	_bitbang_set_pins_low
	.loc 1 350 0
	mov	#_mode_info,w0
	.loc 1 352 0
	mov.b	#-16,w1
	and.b	w1,[w0],w1
	bset.b	w1,#2
	mov.b	w1,[w0]
.LBB29:
.LBB30:
	.loc 1 424 0
	mov	w0,w10
.LBE30:
	.loc 1 368 0
	mov	#tbloffset(_MSG_PIC_MODE_IDENTIFIER_str),w8
	mov	#tblpage(_MSG_PIC_MODE_IDENTIFIER_str),w9
.L85:
	.loc 1 355 0
	call	_user_serial_read_byte
	.loc 1 358 0
	ze	w0,w11
	mov	w11,w1
	and	#192,w1
	mov	#64,w2
	sub	w1,w2,[w15]
	.set ___BP___,29
	bra	z,.L63
	.set ___BP___,50
	bra	gt,.L66
	cp0	w1
	.set ___BP___,50
	bra	z,.L62
	bra	.L85
.L66:
	mov	#128,w2
	sub	w1,w2,[w15]
	.set ___BP___,29
	bra	z,.L64
	mov	#192,w2
	sub	w1,w2,[w15]
	.set ___BP___,71
	bra	nz,.L85
	bra	.L88
.L62:
	.loc 1 361 0
	mov	w11,w1
	and	#240,w1
	.set ___BP___,50
	bra	z,.L68
	.loc 1 408 0
	clr.b	w0
	.loc 1 361 0
	sub	w1,#16,[w15]
	.set ___BP___,71
	bra	nz,.L67
	bra	.L89
.L68:
	.loc 1 363 0
	sub.b	w0,#2,[w15]
	.set ___BP___,29
	bra	z,.L72
	.set ___BP___,50
	bra	gtu,.L75
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L59
	sub.b	w0,#1,[w15]
	.set ___BP___,71
	bra	nz,.L84
	bra	.L90
.L75:
	sub.b	w0,#3,[w15]
	.set ___BP___,29
	bra	z,.L73
	sub.b	w0,#7,[w15]
	.set ___BP___,50
	bra	gtu,.L84
	bra	.L91
.L90:
	.loc 1 368 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 360 0
	mov.b	#1,w0
	.loc 1 369 0
	bra	.L67
.L72:
	.loc 1 372 0
	bclr.b	[w10],#0
	.loc 1 360 0
	mov.b	#1,w0
	.loc 1 373 0
	bra	.L67
.L73:
	.loc 1 376 0
	bset.b	[w10],#0
	.loc 1 360 0
	mov.b	#1,w0
	.loc 1 377 0
	bra	.L67
.L91:
	.loc 1 383 0
	and.b	w0,#3,w0
	add.b	w0,w0,w0
	mov.b	#-7,w1
	and.b	w1,[w10],w1
	ior.b	w1,w0,[w10]
	.loc 1 360 0
	mov.b	#1,w0
	.loc 1 384 0
	bra	.L67
.L89:
	.loc 1 392 0
	btst	w11,#3
	.set ___BP___,71
	bra	z,.L76
	.loc 1 393 0
	lsr	w11,#2,w0
	and	w0,#1,w0
	mov	#5,w2
	mov	#1024,w1
	call	_bitbang_set_pins
	.loc 1 394 0
	lsr	w11,w0
	and	w0,#1,w0
	mov	#5,w2
	mov	#128,w1
	call	_bitbang_set_pins
	.loc 1 395 0
	and	w11,#1,w0
	mov	#5,w2
	mov	#64,w1
	call	_bitbang_set_pins
	.loc 1 360 0
	mov.b	#1,w0
	bra	.L67
.L76:
	.loc 1 397 0
	btst	w11,#2
	.set ___BP___,50
	bra	z,.L77
	.loc 1 398 0
	mov	#50,w1
	mov	#100,w0
	call	_bp_update_pwm
	bra	.L78
.L77:
	.loc 1 400 0
	clr	w1
	mov	w1,w0
	call	_bp_update_pwm
.L78:
.LBB31:
.LBB32:
	.file 2 "../hardware.h"
	.loc 2 105 0
	btst	w11,#1
	.set ___BP___,50
	bra	z,.L79
.LBB33:
.LBB34:
	.loc 2 91 0
	bclr.b	_TRISAbits,#0
	.loc 2 92 0
	bset.b	_PORTAbits,#0
	bra	.L80
.L79:
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.L80:
.LBE36:
.LBE35:
.LBE32:
.LBE31:
.LBB37:
.LBB38:
	.loc 2 83 0
	btst	w11,#0
	.set ___BP___,50
	bra	z,.L81
.LBB39:
.LBB40:
	.loc 2 73 0
	bset.b	_TRISBbits+1,#3
	.loc 2 74 0
	bclr.b	_PORTBbits+1,#3
	.loc 1 360 0
	mov.b	#1,w0
	bra	.L67
.L81:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 2 78 0
	bclr.b	_PORTBbits+1,#3
	.loc 2 79 0
	bclr.b	_TRISBbits+1,#3
	.loc 1 360 0
	mov.b	#1,w0
	bra	.L67
.L84:
.LBE42:
.LBE41:
.LBE38:
.LBE37:
	.loc 1 387 0
	clr.b	w0
.L67:
	.loc 1 412 0
	call	_user_serial_transmit_character
	.loc 1 414 0
	bra	.L85
.L63:
	.loc 1 417 0
	bset.b	[w10],#3
	.loc 1 418 0
	and	#63,w0
	call	_pic_write
	.loc 1 419 0
	bclr.b	[w10],#3
	.loc 1 420 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 421 0
	bra	.L85
.L64:
.LBB43:
	.loc 1 424 0
	bset.b	[w10],#3
	.loc 1 425 0
	and	#63,w0
	call	_pic_write
	.loc 1 426 0
	bclr.b	[w10],#3
	.loc 1 427 0
	call	_user_serial_read_byte
	.loc 1 428 0
	sl	w0,#8,w11
	.loc 1 429 0
	call	_user_serial_read_byte
	ze	w0,w0
	ior	w0,w11,w0
	.loc 1 430 0
	call	_pic_write
	.loc 1 431 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 432 0
	bra	.L85
.L88:
.LBE43:
.LBB44:
	.loc 1 436 0
	bset.b	[w10],#3
	.loc 1 437 0
	and	#63,w0
	call	_pic_write
	.loc 1 438 0
	bclr.b	[w10],#3
	.loc 1 439 0
	mov.b	#1,w0
	call	_user_serial_transmit_character
	.loc 1 440 0
	call	_pic_read
	mov	w0,w11
	.loc 1 441 0
	lsr	w11,#8,w0
	call	_user_serial_transmit_character
	.loc 1 442 0
	mov.b	w11,w0
	call	_user_serial_transmit_character
	bra	.L85
.L59:
.LBE44:
.LBE29:
	.loc 1 447 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE36:
	.size	_binary_io_enter_pic_mode, .-_binary_io_enter_pic_mode
	.section	.bss,bss
	.align	2
	.type	_mode_info,@object
	.size	_mode_info, 1
_mode_info:
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
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
	.byte	0x8c
	.uleb128 0x6
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI6-.LFB24
	.byte	0x13
	.sleb128 -3
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
	.byte	0x4
	.4byte	.LCFI7-.LFB27
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI8-.LFB33
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
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
	.4byte	.LCFI10-.LFB36
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE24:
	.section	.text,code
.Letext0:
	.file 3 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 4 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 5 "../base.h"
	.file 6 "../core.h"
	.section	.debug_info,info
	.4byte	0x10af
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../pic.c"
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
	.4byte	0xf4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
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
	.byte	0x3
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
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6d7
	.4byte	0x20a
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x4
	.2byte	0x6d8
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISABITS"
	.byte	0x4
	.2byte	0x6dd
	.4byte	0x18a
	.uleb128 0x4
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6e2
	.4byte	0x28d
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x4
	.2byte	0x6e3
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTABITS"
	.byte	0x4
	.2byte	0x6e8
	.4byte	0x21c
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x703
	.4byte	0x40c
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0x704
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"TRISBBITS"
	.byte	0x4
	.2byte	0x714
	.4byte	0x29f
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x719
	.4byte	0x55b
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x4
	.2byte	0x71a
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"PORTBBITS"
	.byte	0x4
	.2byte	0x72a
	.4byte	0x41e
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0x78d
	.4byte	0x5fe
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x4
	.2byte	0x78e
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0x799
	.4byte	0x66c
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0x79b
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.byte	0x4
	.2byte	0x78c
	.4byte	0x680
	.uleb128 0x9
	.4byte	0x56d
	.uleb128 0x9
	.4byte	0x5fe
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x78b
	.4byte	0x6a1
	.uleb128 0xa
	.4byte	0x66c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0x7a2
	.4byte	0x680
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x7fd
	.4byte	0x7ae
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0x7fe
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
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
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1PCFGBITS"
	.byte	0x4
	.2byte	0x80b
	.4byte	0x6b5
	.uleb128 0xb
	.byte	0x3
	.byte	0x5
	.byte	0x38
	.4byte	0x8a7
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x5
	.byte	0x39
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x5
	.byte	0x3a
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x5
	.byte	0x3f
	.4byte	0xe5
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
	.4byte	0xe5
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
	.4byte	0xe5
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
	.4byte	0xe5
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
	.4byte	0xe5
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
	.4byte	0xe5
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
	.byte	0x5
	.byte	0x5d
	.4byte	0x7c2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0xb4
	.4byte	0x951
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
	.byte	0x6
	.byte	0xe9
	.4byte	0x8cc
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0xee
	.4byte	0x99a
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
	.byte	0x6
	.byte	0xf7
	.4byte	0x979
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.byte	0xf9
	.4byte	0xaab
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x6
	.byte	0xfa
	.4byte	0xaab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x6
	.byte	0xfb
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x6
	.byte	0xfc
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x6
	.byte	0xfd
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x6
	.byte	0xfe
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x6
	.byte	0xff
	.4byte	0x99a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.asciz	"bus_mode"
	.byte	0x6
	.2byte	0x100
	.4byte	0x951
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x11
	.byte	0x2
	.4byte	0xe5
	.uleb128 0x6
	.asciz	"bus_pirate_configuration_t"
	.byte	0x6
	.2byte	0x106
	.4byte	0x9bb
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.byte	0x24
	.4byte	0xaff
	.uleb128 0xf
	.asciz	"PIC_MODE_6BITS"
	.sleb128 0
	.uleb128 0xf
	.asciz	"PIC_MODE_4BITS"
	.sleb128 1
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x41
	.4byte	0xb5c
	.uleb128 0xd
	.asciz	"opcode_bits"
	.byte	0x1
	.byte	0x48
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"delay"
	.byte	0x1
	.byte	0x4d
	.4byte	0xe5
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"mode"
	.byte	0x1
	.byte	0x55
	.4byte	0xe5
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.asciz	"reserved"
	.byte	0x1
	.byte	0x5a
	.4byte	0xe5
	.byte	0x1
	.byte	0x4
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.asciz	"pic_mode_t"
	.byte	0x1
	.byte	0x5b
	.4byte	0xaff
	.uleb128 0x12
	.asciz	"bp_enable_pullup"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_enable_voltage_regulator"
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.asciz	"bp_set_voltage_regulator_state"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.4byte	0xc14
	.uleb128 0x14
	.asciz	"state"
	.byte	0x2
	.byte	0x68
	.4byte	0x8c3
	.byte	0x0
	.uleb128 0x13
	.asciz	"bp_set_pullup_state"
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.4byte	0xc3f
	.uleb128 0x14
	.asciz	"state"
	.byte	0x2
	.byte	0x52
	.4byte	0x8c3
	.byte	0x0
	.uleb128 0x15
	.asciz	"write_zero"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.uleb128 0x16
	.asciz	"write_bits"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0xcb9
	.uleb128 0x17
	.asciz	"data"
	.byte	0x1
	.byte	0xdc
	.4byte	0xcb9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.asciz	"bits"
	.byte	0x1
	.byte	0xdc
	.4byte	0xcbe
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.asciz	"mask"
	.byte	0x1
	.byte	0xdd
	.4byte	0xe5
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x18
	.asciz	"index"
	.byte	0x1
	.byte	0xdf
	.4byte	0x16a
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x105
	.uleb128 0x1a
	.4byte	0xe5
	.uleb128 0x1b
	.asciz	"read_bits"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0xd19
	.uleb128 0x17
	.asciz	"bits"
	.byte	0x1
	.byte	0xb4
	.4byte	0xcbe
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.asciz	"data"
	.byte	0x1
	.byte	0xb5
	.4byte	0x105
	.byte	0x1
	.byte	0x59
	.uleb128 0x19
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x18
	.asciz	"index"
	.byte	0x1
	.byte	0xb7
	.4byte	0x16a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"pic_setup_prepare"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0xd6f
	.uleb128 0x18
	.asciz	"mode"
	.byte	0x1
	.byte	0x86
	.4byte	0xc1
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.asciz	"delay"
	.byte	0x1
	.byte	0x88
	.4byte	0xc1
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.asciz	"interactive"
	.byte	0x1
	.byte	0x89
	.4byte	0x8c3
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"pic_setup_execute"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"pic_cleanup"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"pic_start"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.byte	0x1
	.asciz	"pic_stop"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1f
	.byte	0x1
	.asciz	"pic_read"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	0x115
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.byte	0x1
	.asciz	"pic_write"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0x105
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0xe29
	.uleb128 0x17
	.asciz	"value"
	.byte	0x1
	.byte	0xee
	.4byte	0xcb9
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"pic_run_macro"
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0xe8f
	.uleb128 0x22
	.asciz	"macro"
	.byte	0x1
	.2byte	0x115
	.4byte	0xcb9
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x23
	.asciz	"temp"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x105
	.byte	0x1
	.byte	0x58
	.uleb128 0x19
	.4byte	.LBB28
	.4byte	.LBE28
	.uleb128 0x23
	.asciz	"index"
	.byte	0x1
	.2byte	0x125
	.4byte	0x16a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.asciz	"pic_print_pins_state"
	.byte	0x1
	.2byte	0x142
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.uleb128 0x21
	.byte	0x1
	.asciz	"binary_io_enter_pic_mode"
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0xfa1
	.uleb128 0x19
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x23
	.asciz	"command"
	.byte	0x1
	.2byte	0x163
	.4byte	0xe5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.asciz	"ok"
	.byte	0x1
	.2byte	0x164
	.4byte	0x8c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0xf24
	.uleb128 0x26
	.asciz	"temp"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x105
	.byte	0x0
	.uleb128 0x27
	.4byte	0xbde
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0xf55
	.uleb128 0x28
	.4byte	0xc06
	.uleb128 0x29
	.4byte	0xb9b
	.4byte	.LBB33
	.4byte	.LBE33
	.uleb128 0x29
	.4byte	0xbbc
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x0
	.uleb128 0x27
	.4byte	0xc14
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0xf86
	.uleb128 0x28
	.4byte	0xc31
	.uleb128 0x29
	.4byte	0xb6e
	.4byte	.LBB39
	.4byte	.LBE39
	.uleb128 0x29
	.4byte	0xb84
	.4byte	.LBB41
	.4byte	.LBE41
	.byte	0x0
	.uleb128 0x19
	.4byte	.LBB44
	.4byte	.LBE44
	.uleb128 0x23
	.asciz	"temp"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x105
	.byte	0x1
	.byte	0x5b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x6de
	.4byte	0xfaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x20a
	.uleb128 0x2a
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x6e9
	.4byte	0xfc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x28d
	.uleb128 0x2a
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x715
	.4byte	0xfd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x40c
	.uleb128 0x2a
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x72b
	.4byte	0xfe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x55b
	.uleb128 0x2a
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x7a3
	.4byte	0xffb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x6a1
	.uleb128 0x2a
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x80c
	.4byte	0x100e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x7ae
	.uleb128 0x2c
	.4byte	.LASF6
	.byte	0x1
	.byte	0x62
	.4byte	0xab1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF7
	.byte	0x1
	.byte	0x63
	.4byte	0x8a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.asciz	"mode_info"
	.byte	0x1
	.byte	0x68
	.4byte	0xb5c
	.byte	0x5
	.byte	0x3
	.4byte	_mode_info
	.uleb128 0x2a
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x6de
	.4byte	0xfaf
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x6e9
	.4byte	0xfc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x715
	.4byte	0xfd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x72b
	.4byte	0xfe8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x7a3
	.4byte	0xffb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x80c
	.4byte	0x100e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF6
	.byte	0x1
	.byte	0x62
	.4byte	0xab1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF7
	.byte	0x1
	.byte	0x63
	.4byte	0x8a7
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.4byte	0xc8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10b3
	.4byte	0xd19
	.asciz	"pic_setup_prepare"
	.4byte	0xd6f
	.asciz	"pic_setup_execute"
	.4byte	0xd90
	.asciz	"pic_cleanup"
	.4byte	0xdab
	.asciz	"pic_start"
	.4byte	0xdc4
	.asciz	"pic_stop"
	.4byte	0xddc
	.asciz	"pic_read"
	.4byte	0xdf8
	.asciz	"pic_write"
	.4byte	0xe29
	.asciz	"pic_run_macro"
	.4byte	0xe8f
	.asciz	"pic_print_pins_state"
	.4byte	0xeb4
	.asciz	"binary_io_enter_pic_mode"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x17e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10b3
	.4byte	0xe5
	.asciz	"uint8_t"
	.4byte	0x105
	.asciz	"uint16_t"
	.4byte	0x16a
	.asciz	"size_t"
	.4byte	0x18a
	.asciz	"tagTRISABITS"
	.4byte	0x20a
	.asciz	"TRISABITS"
	.4byte	0x21c
	.asciz	"tagPORTABITS"
	.4byte	0x28d
	.asciz	"PORTABITS"
	.4byte	0x29f
	.asciz	"tagTRISBBITS"
	.4byte	0x40c
	.asciz	"TRISBBITS"
	.4byte	0x41e
	.asciz	"tagPORTBBITS"
	.4byte	0x55b
	.asciz	"PORTBBITS"
	.4byte	0x680
	.asciz	"tagAD1CON1BITS"
	.4byte	0x6a1
	.asciz	"AD1CON1BITS"
	.4byte	0x6b5
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x7ae
	.asciz	"AD1PCFGBITS"
	.4byte	0x8a7
	.asciz	"mode_configuration_t"
	.4byte	0x951
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0x99a
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0xab1
	.asciz	"bus_pirate_configuration_t"
	.4byte	0xb5c
	.asciz	"pic_mode_t"
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
.LASF1:
	.asciz	"PORTAbits"
.LASF4:
	.asciz	"AD1CON1bits"
.LASF2:
	.asciz	"TRISBbits"
.LASF7:
	.asciz	"mode_configuration"
.LASF3:
	.asciz	"PORTBbits"
.LASF6:
	.asciz	"bus_pirate_configuration"
.LASF5:
	.asciz	"AD1PCFGbits"
.LASF0:
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
