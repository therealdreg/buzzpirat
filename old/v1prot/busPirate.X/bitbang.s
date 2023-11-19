	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\bitbang.c"
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
	.global	_bitbang_setup	; export
	.type	_bitbang_setup,@function
_bitbang_setup:
.LFB24:
	.file 1 "../bitbang.c"
	.loc 1 96 0
	.set ___PA___,1
	.loc 1 97 0
	mov	#512,w2
	sub.b	w0,#3,[w15]
	.set ___BP___,80
	bra	nz,.L2
	mov	#128,w2
.L2:
	mov	w2,_miso_pin
	.loc 1 100 0
	sub	w1,#3,[w15]
	.set ___BP___,50
	bra	leu,.L3
	mov	#3,w1
.L3:
	.loc 1 98 0
	add	w1,w1,w1
	mov	#_BITBANG_DELAYS,w0
	add	w1,w0,w1
	mov	w1,_delay_profile
	.loc 1 101 0
	return	
	.set ___PA___,0
.LFE24:
	.size	_bitbang_setup, .-_bitbang_setup
	.align	2
	.global	_bitbang_set_pins_high	; export
	.type	_bitbang_set_pins_high,@function
_bitbang_set_pins_high:
.LFB37:
	.loc 1 246 0
	.set ___PA___,1
	.loc 1 247 0
	mov	#_mode_configuration+2,w2
	mov.b	[w2],w2
	and.b	w2,#16,w2
	.set ___BP___,50
	bra	nz,.L6
	.loc 1 249 0
	ior	_LATB
	.loc 1 252 0
	com	w0,w0
	and	_TRISB,WREG
	mov	w0,_TRISB
	bra	.L7
.L6:
	.loc 1 255 0
	ior	_TRISB
.L7:
	.loc 1 259 0
	cp0	w1
	.set ___BP___,61
	bra	z,.L5
	.loc 1 260 0
	mov	w1,w0
	call	_bp_delay_us
.L5:
	.loc 1 262 0
	return	
	.set ___PA___,0
.LFE37:
	.size	_bitbang_set_pins_high, .-_bitbang_set_pins_high
	.align	2
	.global	_bitbang_set_pins_low	; export
	.type	_bitbang_set_pins_low,@function
_bitbang_set_pins_low:
.LFB38:
	.loc 1 264 0
	.set ___PA___,1
	.loc 1 266 0
	com	w0,w2
	mov	_LATB,w3
	and	w3,w2,w0
	mov	w0,_LATB
	.loc 1 269 0
	mov	_TRISB,w0
	and	w0,w2,w2
	mov	w2,_TRISB
	.loc 1 272 0
	cp0	w1
	.set ___BP___,61
	bra	z,.L9
	.loc 1 273 0
	mov	w1,w0
	call	_bp_delay_us
.L9:
	.loc 1 275 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_bitbang_set_pins_low, .-_bitbang_set_pins_low
	.align	2
	.global	_bitbang_advance_clock_ticks	; export
	.type	_bitbang_advance_clock_ticks,@function
_bitbang_advance_clock_ticks:
.LFB32:
	.loc 1 223 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov	w10,[w15++]
.LCFI1:
	mov	w0,w10
	.loc 1 226 0
	cp0	w10
	.set ___BP___,9
	bra	z,.L11
	clr	w8
	.loc 1 227 0
	mov	#256,w9
.L13:
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	w9,w0
	call	_bitbang_set_pins_high
	.loc 1 228 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	w9,w0
	call	_bitbang_set_pins_low
	.loc 1 226 0
	inc	w8,w8
	sub	w10,w8,[w15]
	.set ___BP___,91
	bra	gtu,.L13
.L11:
	.loc 1 230 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE32:
	.size	_bitbang_advance_clock_ticks, .-_bitbang_advance_clock_ticks
	.align	2
	.global	_bitbang_i2c_stop	; export
	.type	_bitbang_i2c_stop,@function
_bitbang_i2c_stop:
.LFB26:
	.loc 1 133 0
	.set ___PA___,1
	.loc 1 135 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#768,w0
	call	_bitbang_set_pins_low
	.loc 1 138 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 141 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#512,w0
	call	_bitbang_set_pins_high
	.loc 1 142 0
	return	
	.set ___PA___,0
.LFE26:
	.size	_bitbang_i2c_stop, .-_bitbang_i2c_stop
	.align	2
	.global	_bitbang_i2c_start	; export
	.type	_bitbang_i2c_start,@function
_bitbang_i2c_start:
.LFB25:
	.loc 1 103 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI2:
	mov	w0,w8
	.loc 1 106 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#768,w0
	call	_bitbang_set_pins_high
	.loc 1 108 0
	sub	w8,#1,[w15]
	.set ___BP___,86
	bra	nz,.L17
	.loc 1 110 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#512,w0
	call	_bitbang_set_pins_high
	.loc 1 113 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
.L17:
	.loc 1 118 0
	mov.b	#1,w0
	.loc 1 117 0
	btst.b	_PORTBbits+8/8,#8%8
	.set ___BP___,39
	bra	z,.L18
	btst.b	_PORTBbits+9/8,#9%8
	.set ___BP___,61
	bra	z,.L18
	.loc 1 122 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#512,w0
	call	_bitbang_set_pins_low
	.loc 1 125 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 128 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#512,w0
	call	_bitbang_set_pins_high
	.loc 1 130 0
	clr.b	w0
.L18:
	.loc 1 131 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE25:
	.size	_bitbang_i2c_start, .-_bitbang_i2c_start
	.align	2
	.global	_bitbang_set_pins	; export
	.type	_bitbang_set_pins,@function
_bitbang_set_pins:
.LFB39:
	.loc 1 278 0
	.set ___PA___,1
	.loc 1 279 0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L22
	.loc 1 280 0
	com	w1,w1
	mov	_LATB,w3
	and	w3,w1,w0
	mov	w0,_LATB
	.loc 1 281 0
	mov	_TRISB,w0
	and	w0,w1,w1
	mov	w1,_TRISB
	bra	.L23
.L22:
	.loc 1 283 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w0
	.set ___BP___,50
	bra	nz,.L24
	.loc 1 284 0
	mov	w1,w0
	ior	_LATB
	.loc 1 285 0
	com	w1,w1
	mov	_TRISB,w3
	and	w3,w1,w1
	mov	w1,_TRISB
	bra	.L23
.L24:
	.loc 1 287 0
	mov	w1,w0
	ior	_TRISB
.L23:
	.loc 1 292 0
	cp0	w2
	.set ___BP___,61
	bra	z,.L21
	.loc 1 293 0
	mov	w2,w0
	call	_bp_delay_us
.L21:
	.loc 1 295 0
	return	
	.set ___PA___,0
.LFE39:
	.size	_bitbang_set_pins, .-_bitbang_set_pins
	.align	2
	.global	_bitbang_set_cs	; export
	.type	_bitbang_set_cs,@function
_bitbang_set_cs:
.LFB35:
	.loc 1 240 0
	.set ___PA___,1
	.loc 1 241 0
	mov	_delay_profile,w1
	ze	[w1],w2
	mov	#64,w1
	call	_bitbang_set_pins
	.loc 1 242 0
	return	
	.set ___PA___,0
.LFE35:
	.size	_bitbang_set_cs, .-_bitbang_set_cs
	.align	2
	.global	_bitbang_set_clk	; export
	.type	_bitbang_set_clk,@function
_bitbang_set_clk:
.LFB34:
	.loc 1 236 0
	.set ___PA___,1
	.loc 1 237 0
	mov	_delay_profile,w1
	ze	[w1],w2
	mov	#256,w1
	call	_bitbang_set_pins
	.loc 1 238 0
	return	
	.set ___PA___,0
.LFE34:
	.size	_bitbang_set_clk, .-_bitbang_set_clk
	.align	2
	.global	_bitbang_set_mosi	; export
	.type	_bitbang_set_mosi,@function
_bitbang_set_mosi:
.LFB33:
	.loc 1 232 0
	.set ___PA___,1
	.loc 1 233 0
	mov	_delay_profile,w1
	ze	[w1],w2
	mov	#512,w1
	call	_bitbang_set_pins
	.loc 1 234 0
	return	
	.set ___PA___,0
.LFE33:
	.size	_bitbang_set_mosi, .-_bitbang_set_mosi
	.align	2
	.global	_bitbang_write_bit	; export
	.type	_bitbang_write_bit,@function
_bitbang_write_bit:
.LFB31:
	.loc 1 214 0
	.set ___PA___,1
	.loc 1 216 0
	mov	_delay_profile,w1
	ze	[w1],w2
	mov	#512,w1
	call	_bitbang_set_pins
	.loc 1 219 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 220 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 221 0
	return	
	.set ___PA___,0
.LFE31:
	.size	_bitbang_write_bit, .-_bitbang_write_bit
	.align	2
	.global	_bitbang_write_value	; export
	.type	_bitbang_write_value,@function
_bitbang_write_value:
.LFB28:
	.loc 1 164 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI3:
	mov.d	w10,[w15++]
.LCFI4:
	mov	w12,[w15++]
.LCFI5:
	.loc 1 169 0
	mov	#_mode_configuration+1,w1
	mov.b	[w1],w1
	ze	w1,w2
	dec	w2,w2
	mov	#1,w10
	sl	w10,w2,w10
	.loc 1 171 0
	cp0.b	w1
	.set ___BP___,9
	bra	z,.L30
	.loc 1 170 0
	mov	w0,w8
	.loc 1 171 0
	clr	w9
	.loc 1 172 0
	mov	#512,w11
	.loc 1 171 0
	mov	#_mode_configuration+1,w12
.L32:
	.loc 1 172 0
	mov	_delay_profile,w0
	ze	[w0],w2
	and	w8,w10,w0
	btsc	w0,#15
	neg	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
	mov	w11,w1
	call	_bitbang_set_pins
	.loc 1 173 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 174 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 175 0
	add	w8,w8,w8
	.loc 1 171 0
	inc	w9,w9
	ze	[w12],w0
	sub	w0,w9,[w15]
	.set ___BP___,91
	bra	gtu,.L32
.L30:
	.loc 1 177 0
	mov	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE28:
	.size	_bitbang_write_value, .-_bitbang_write_value
	.align	2
	.global	_bitbang_read_pin	; export
	.type	_bitbang_read_pin,@function
_bitbang_read_pin:
.LFB40:
	.loc 1 297 0
	.set ___PA___,1
	.loc 1 298 0
	ior	_TRISB
	.loc 1 299 0
	nop	
	.loc 1 300 0
	nop	
	.loc 1 301 0
	nop	
	.loc 1 302 0
	and	_PORTB,WREG
	btsc	w0,#15
	neg	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
	.loc 1 303 0
	return	
	.set ___PA___,0
.LFE40:
	.size	_bitbang_read_pin, .-_bitbang_read_pin
	.align	2
	.global	_bitbang_read_miso	; export
	.type	_bitbang_read_miso,@function
_bitbang_read_miso:
.LFB36:
	.loc 1 244 0
	.set ___PA___,1
	.loc 1 244 0
	mov	_miso_pin,w0
	call	_bitbang_read_pin
	return	
	.set ___PA___,0
.LFE36:
	.size	_bitbang_read_miso, .-_bitbang_read_miso
	.align	2
	.global	_bitbang_read_bit	; export
	.type	_bitbang_read_bit,@function
_bitbang_read_bit:
.LFB30:
	.loc 1 196 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI6:
	.loc 1 200 0
	mov	_miso_pin,w0
	call	_bitbang_read_pin
	.loc 1 203 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 206 0
	mov	_miso_pin,w0
	call	_bitbang_read_pin
	mov.b	w0,w8
	.loc 1 209 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 212 0
	mov.b	w8,w0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE30:
	.size	_bitbang_read_bit, .-_bitbang_read_bit
	.align	2
	.global	_bitbang_read_value	; export
	.type	_bitbang_read_value,@function
_bitbang_read_value:
.LFB29:
	.loc 1 179 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI7:
	mov.d	w10,[w15++]
.LCFI8:
	.loc 1 184 0
	mov	#512,w0
	call	_bitbang_read_pin
	.loc 1 185 0
	clr	w8
	.loc 1 187 0
	mov	#_mode_configuration+1,w0
	cp0.b	[w0]
	.set ___BP___,9
	bra	z,.L38
	mov	w8,w9
	.loc 1 188 0
	mov	#256,w10
	.loc 1 187 0
	mov	w0,w11
.L39:
	.loc 1 188 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	w10,w0
	call	_bitbang_set_pins_high
	.loc 1 189 0
	add	w8,w8,w8
	mov	#512,w0
	call	_bitbang_read_pin
	ze	w0,w0
	ior	w8,w0,w8
	.loc 1 190 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	w10,w0
	call	_bitbang_set_pins_low
	.loc 1 187 0
	inc	w9,w9
	ze	[w11],w0
	sub	w0,w9,[w15]
	.set ___BP___,91
	bra	gtu,.L39
.L38:
	.loc 1 194 0
	mov	w8,w0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE29:
	.size	_bitbang_read_value, .-_bitbang_read_value
	.align	2
	.global	_bitbang_read_with_write	; export
	.type	_bitbang_read_with_write,@function
_bitbang_read_with_write:
.LFB27:
	.loc 1 144 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	mov.d	w10,[w15++]
.LCFI10:
	mov.d	w12,[w15++]
.LCFI11:
	.loc 1 150 0
	mov	#_mode_configuration+1,w1
	mov.b	[w1],w1
	ze	w1,w2
	dec	w2,w2
	mov	#1,w11
	sl	w11,w2,w11
	.loc 1 152 0
	clr	w9
	.loc 1 153 0
	cp0.b	w1
	.set ___BP___,9
	bra	z,.L43
	.loc 1 151 0
	mov	w0,w8
	.loc 1 153 0
	mov	w9,w10
	.loc 1 154 0
	mov	#512,w12
	.loc 1 153 0
	mov	#_mode_configuration+1,w13
.L44:
	.loc 1 154 0
	mov	_delay_profile,w0
	ze	[w0],w2
	and	w8,w11,w0
	btsc	w0,#15
	neg	w0,w0
	neg	w0,w0
	lsr	w0,#15,w0
	mov	w12,w1
	call	_bitbang_set_pins
	.loc 1 155 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_high
	.loc 1 156 0
	add	w9,w9,w9
	mov	#128,w0
	call	_bitbang_read_pin
	ze	w0,w0
	ior	w9,w0,w9
	.loc 1 157 0
	add	w8,w8,w8
	.loc 1 158 0
	mov	_delay_profile,w0
	mov.b	[w0+1],w1
	ze	w1,w1
	mov	#256,w0
	call	_bitbang_set_pins_low
	.loc 1 153 0
	inc	w10,w10
	ze	[w13],w0
	sub	w0,w10,[w15]
	.set ___BP___,91
	bra	gtu,.L44
.L43:
	.loc 1 162 0
	mov	w9,w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_bitbang_read_with_write, .-_bitbang_read_with_write
	.section	.bss,bss
	.align	2
	.type	_miso_pin,@object
	.size	_miso_pin, 2
_miso_pin:
	.skip	2
	.align	2
	.type	_delay_profile,@object
	.size	_delay_profile, 2
_delay_profile:
	.skip	2
	.section	.const,psv,page
	.type	_BITBANG_DELAYS,@object
	.size	_BITBANG_DELAYS, 8
_BITBANG_DELAYS:
	.byte 20
	.byte 80
	.byte 1
	.byte 8
	.byte 1
	.byte 3
	.byte 0
	.byte 0
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI3-.LFB28
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
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI6-.LFB30
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI7-.LFB29
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI9-.LFB27
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
	.byte	0x8c
	.uleb128 0x6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE32:
	.section	.text,code
.Letext0:
	.file 2 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 3 "../bitbang.h"
	.file 4 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 5 "../base.h"
	.section	.debug_info,info
	.4byte	0x1006
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../bitbang.c"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x1b
	.4byte	0x1bb
	.uleb128 0x5
	.asciz	"BITBANG_SPEED_5KHZ"
	.sleb128 0
	.uleb128 0x5
	.asciz	"BITBANG_SPEED_50KHZ"
	.sleb128 1
	.uleb128 0x5
	.asciz	"BITBANG_SPEED_100KHZ"
	.sleb128 2
	.uleb128 0x5
	.asciz	"BITBANG_SPEED_MAXIMUM"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bp_bitbang_speed_t"
	.byte	0x3
	.byte	0x2f
	.4byte	0x158
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0x34
	.4byte	0x211
	.uleb128 0x5
	.asciz	"BITBANG_I2C_START_ONE_SHOT"
	.sleb128 0
	.uleb128 0x5
	.asciz	"BITBANG_I2C_RESTART"
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.asciz	"bp_bitbang_i2c_start_type_t"
	.byte	0x3
	.byte	0x3e
	.4byte	0x1d5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x2
	.byte	0xdd
	.4byte	0x119
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"char"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0x6
	.asciz	"tagTRISABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6d7
	.4byte	0x2ea
	.uleb128 0x7
	.asciz	"TRISA0"
	.byte	0x4
	.2byte	0x6d8
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA1"
	.byte	0x4
	.2byte	0x6d9
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA2"
	.byte	0x4
	.2byte	0x6da
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA3"
	.byte	0x4
	.2byte	0x6db
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISA4"
	.byte	0x4
	.2byte	0x6dc
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"TRISABITS"
	.byte	0x4
	.2byte	0x6dd
	.4byte	0x26a
	.uleb128 0x6
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6e2
	.4byte	0x36d
	.uleb128 0x7
	.asciz	"RA0"
	.byte	0x4
	.2byte	0x6e3
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA1"
	.byte	0x4
	.2byte	0x6e4
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA2"
	.byte	0x4
	.2byte	0x6e5
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA3"
	.byte	0x4
	.2byte	0x6e6
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RA4"
	.byte	0x4
	.2byte	0x6e7
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"PORTABITS"
	.byte	0x4
	.2byte	0x6e8
	.4byte	0x2fc
	.uleb128 0x6
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x703
	.4byte	0x4ec
	.uleb128 0x7
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0x704
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB1"
	.byte	0x4
	.2byte	0x705
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB2"
	.byte	0x4
	.2byte	0x706
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB3"
	.byte	0x4
	.2byte	0x707
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB4"
	.byte	0x4
	.2byte	0x708
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB5"
	.byte	0x4
	.2byte	0x709
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB6"
	.byte	0x4
	.2byte	0x70a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB7"
	.byte	0x4
	.2byte	0x70b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB8"
	.byte	0x4
	.2byte	0x70c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB9"
	.byte	0x4
	.2byte	0x70d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB10"
	.byte	0x4
	.2byte	0x70e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB11"
	.byte	0x4
	.2byte	0x70f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB12"
	.byte	0x4
	.2byte	0x710
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB13"
	.byte	0x4
	.2byte	0x711
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB14"
	.byte	0x4
	.2byte	0x712
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"TRISB15"
	.byte	0x4
	.2byte	0x713
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"TRISBBITS"
	.byte	0x4
	.2byte	0x714
	.4byte	0x37f
	.uleb128 0x6
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x719
	.4byte	0x63b
	.uleb128 0x7
	.asciz	"RB0"
	.byte	0x4
	.2byte	0x71a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB1"
	.byte	0x4
	.2byte	0x71b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB2"
	.byte	0x4
	.2byte	0x71c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB3"
	.byte	0x4
	.2byte	0x71d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB4"
	.byte	0x4
	.2byte	0x71e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB5"
	.byte	0x4
	.2byte	0x71f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB6"
	.byte	0x4
	.2byte	0x720
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB7"
	.byte	0x4
	.2byte	0x721
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB8"
	.byte	0x4
	.2byte	0x722
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB9"
	.byte	0x4
	.2byte	0x723
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB10"
	.byte	0x4
	.2byte	0x724
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB11"
	.byte	0x4
	.2byte	0x725
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB12"
	.byte	0x4
	.2byte	0x726
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB13"
	.byte	0x4
	.2byte	0x727
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB14"
	.byte	0x4
	.2byte	0x728
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"RB15"
	.byte	0x4
	.2byte	0x729
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"PORTBBITS"
	.byte	0x4
	.2byte	0x72a
	.4byte	0x4fe
	.uleb128 0x9
	.byte	0x2
	.byte	0x4
	.2byte	0x78d
	.4byte	0x6de
	.uleb128 0x7
	.asciz	"DONE"
	.byte	0x4
	.2byte	0x78e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SAMP"
	.byte	0x4
	.2byte	0x78f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ASAM"
	.byte	0x4
	.2byte	0x790
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC"
	.byte	0x4
	.2byte	0x792
	.4byte	0x109
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM"
	.byte	0x4
	.2byte	0x793
	.4byte	0x109
	.byte	0x2
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADSIDL"
	.byte	0x4
	.2byte	0x795
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"ADON"
	.byte	0x4
	.2byte	0x797
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.byte	0x4
	.2byte	0x799
	.4byte	0x74c
	.uleb128 0x7
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0x79b
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC1"
	.byte	0x4
	.2byte	0x79c
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"SSRC2"
	.byte	0x4
	.2byte	0x79d
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM0"
	.byte	0x4
	.2byte	0x79e
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"FORM1"
	.byte	0x4
	.2byte	0x79f
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.byte	0x4
	.2byte	0x78c
	.4byte	0x760
	.uleb128 0xb
	.4byte	0x64d
	.uleb128 0xb
	.4byte	0x6de
	.byte	0x0
	.uleb128 0x6
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x78b
	.4byte	0x781
	.uleb128 0xc
	.4byte	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0x7a2
	.4byte	0x760
	.uleb128 0x6
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x7fd
	.4byte	0x88e
	.uleb128 0x7
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0x7fe
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG1"
	.byte	0x4
	.2byte	0x7ff
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG2"
	.byte	0x4
	.2byte	0x800
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG3"
	.byte	0x4
	.2byte	0x801
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG4"
	.byte	0x4
	.2byte	0x802
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG5"
	.byte	0x4
	.2byte	0x803
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG9"
	.byte	0x4
	.2byte	0x805
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG10"
	.byte	0x4
	.2byte	0x806
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG11"
	.byte	0x4
	.2byte	0x807
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG12"
	.byte	0x4
	.2byte	0x808
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.asciz	"PCFG15"
	.byte	0x4
	.2byte	0x80a
	.4byte	0x109
	.byte	0x2
	.byte	0x1
	.byte	0x0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.asciz	"AD1PCFGBITS"
	.byte	0x4
	.2byte	0x80b
	.4byte	0x795
	.uleb128 0xd
	.byte	0x3
	.byte	0x5
	.byte	0x38
	.4byte	0x987
	.uleb128 0xe
	.asciz	"speed"
	.byte	0x5
	.byte	0x39
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"numbits"
	.byte	0x5
	.byte	0x3a
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.asciz	"alternate_aux"
	.byte	0x5
	.byte	0x3f
	.4byte	0xe9
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"periodicService"
	.byte	0x5
	.byte	0x41
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"little_endian"
	.byte	0x5
	.byte	0x47
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"high_impedance"
	.byte	0x5
	.byte	0x4c
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"int16"
	.byte	0x5
	.byte	0x51
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"write_with_read"
	.byte	0x5
	.byte	0x56
	.4byte	0xe9
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.asciz	"command_error"
	.byte	0x5
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
	.byte	0x5
	.byte	0x5d
	.4byte	0x8a2
	.uleb128 0xd
	.byte	0x2
	.byte	0x1
	.byte	0x3b
	.4byte	0x9cd
	.uleb128 0xe
	.asciz	"settle"
	.byte	0x1
	.byte	0x40
	.4byte	0x9cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.asciz	"clock"
	.byte	0x1
	.byte	0x45
	.4byte	0x9cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x10
	.4byte	0xe9
	.uleb128 0x3
	.asciz	"bitbang_delays_t"
	.byte	0x1
	.byte	0x46
	.4byte	0x9a3
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_setup"
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5f
	.4byte	0xa31
	.uleb128 0x12
	.asciz	"bitbang_pins"
	.byte	0x1
	.byte	0x60
	.4byte	0xf8
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.asciz	"speed"
	.byte	0x1
	.byte	0x60
	.4byte	0xa31
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x10
	.4byte	0x1bb
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_set_pins_high"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0xa7d
	.uleb128 0x12
	.asciz	"pins"
	.byte	0x1
	.byte	0xf6
	.4byte	0xa7d
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.asciz	"delay"
	.byte	0x1
	.byte	0xf6
	.4byte	0xa7d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x10
	.4byte	0x109
	.uleb128 0x13
	.byte	0x1
	.asciz	"bitbang_set_pins_low"
	.byte	0x1
	.2byte	0x108
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0xacb
	.uleb128 0x14
	.asciz	"pins"
	.byte	0x1
	.2byte	0x108
	.4byte	0xa7d
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.asciz	"delay"
	.byte	0x1
	.2byte	0x108
	.4byte	0xa7d
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_advance_clock_ticks"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5f
	.4byte	0xb18
	.uleb128 0x12
	.asciz	"ticks"
	.byte	0x1
	.byte	0xdf
	.4byte	0xa7d
	.byte	0x1
	.byte	0x5a
	.uleb128 0x15
	.asciz	"tick"
	.byte	0x1
	.byte	0xe0
	.4byte	0x24a
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.asciz	"bitbang_i2c_stop"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"bitbang_i2c_start"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	0xb70
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0xb70
	.uleb128 0x12
	.asciz	"type"
	.byte	0x1
	.byte	0x67
	.4byte	0x211
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x13
	.byte	0x1
	.asciz	"bitbang_set_pins"
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0xbd1
	.uleb128 0x18
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x115
	.4byte	0xbd1
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.asciz	"pins_mask"
	.byte	0x1
	.2byte	0x115
	.4byte	0xa7d
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.asciz	"delay"
	.byte	0x1
	.2byte	0x116
	.4byte	0xa7d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x10
	.4byte	0xb70
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_set_cs"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0xc06
	.uleb128 0x19
	.4byte	.LASF0
	.byte	0x1
	.byte	0xf0
	.4byte	0xbd1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_set_clk"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.4byte	0xc37
	.uleb128 0x19
	.4byte	.LASF0
	.byte	0x1
	.byte	0xec
	.4byte	0xbd1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_set_mosi"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0xc69
	.uleb128 0x19
	.4byte	.LASF0
	.byte	0x1
	.byte	0xe8
	.4byte	0xbd1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_write_bit"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5f
	.4byte	0xc9c
	.uleb128 0x19
	.4byte	.LASF0
	.byte	0x1
	.byte	0xd6
	.4byte	0xbd1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.asciz	"bitbang_write_value"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0xcfc
	.uleb128 0x12
	.asciz	"value"
	.byte	0x1
	.byte	0xa4
	.4byte	0xa7d
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF1
	.byte	0x1
	.byte	0xa5
	.4byte	0x109
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.byte	0xa6
	.4byte	0x109
	.byte	0x1
	.byte	0x5a
	.uleb128 0x15
	.asciz	"count"
	.byte	0x1
	.byte	0xa7
	.4byte	0x24a
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.asciz	"bitbang_read_pin"
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xb70
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0xd38
	.uleb128 0x14
	.asciz	"pin_bit"
	.byte	0x1
	.2byte	0x129
	.4byte	0xa7d
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"bitbang_read_miso"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	0xb70
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"bitbang_read_bit"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	0xb70
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0xd99
	.uleb128 0x15
	.asciz	"bit_value"
	.byte	0x1
	.byte	0xc5
	.4byte	0xb70
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"bitbang_read_value"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0x109
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.4byte	0xde2
	.uleb128 0x15
	.asciz	"count"
	.byte	0x1
	.byte	0xb4
	.4byte	0x24a
	.byte	0x1
	.byte	0x59
	.uleb128 0x15
	.asciz	"value"
	.byte	0x1
	.byte	0xb5
	.4byte	0x109
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"bitbang_read_with_write"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x109
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0xe59
	.uleb128 0x12
	.asciz	"value"
	.byte	0x1
	.byte	0x90
	.4byte	0xa7d
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.asciz	"count"
	.byte	0x1
	.byte	0x91
	.4byte	0x24a
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	.LASF1
	.byte	0x1
	.byte	0x92
	.4byte	0x109
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.4byte	.LASF2
	.byte	0x1
	.byte	0x93
	.4byte	0x109
	.byte	0x1
	.byte	0x5b
	.uleb128 0x15
	.asciz	"input"
	.byte	0x1
	.byte	0x94
	.4byte	0x109
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x6de
	.4byte	0xe67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x2ea
	.uleb128 0x1d
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x6e9
	.4byte	0xe7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x36d
	.uleb128 0x1f
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x109
	.uleb128 0x1d
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x715
	.4byte	0xea2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x4ec
	.uleb128 0x1f
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0x718
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF6
	.byte	0x4
	.2byte	0x72b
	.4byte	0xec5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x63b
	.uleb128 0x1f
	.asciz	"LATB"
	.byte	0x4
	.2byte	0x72e
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x7a3
	.4byte	0xee7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x781
	.uleb128 0x1d
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x80c
	.4byte	0xefa
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x88e
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0x36
	.4byte	0x987
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	0x9d2
	.4byte	0xf1c
	.uleb128 0x22
	.4byte	0x119
	.byte	0x3
	.byte	0x0
	.uleb128 0x15
	.asciz	"BITBANG_DELAYS"
	.byte	0x1
	.byte	0x4f
	.4byte	0xf38
	.byte	0x5
	.byte	0x3
	.4byte	_BITBANG_DELAYS
	.uleb128 0x10
	.4byte	0xf0c
	.uleb128 0x15
	.asciz	"miso_pin"
	.byte	0x1
	.byte	0x58
	.4byte	0x109
	.byte	0x5
	.byte	0x3
	.4byte	_miso_pin
	.uleb128 0x15
	.asciz	"delay_profile"
	.byte	0x1
	.byte	0x5e
	.4byte	0xf6e
	.byte	0x5
	.byte	0x3
	.4byte	_delay_profile
	.uleb128 0x23
	.byte	0x2
	.4byte	0xf74
	.uleb128 0x10
	.4byte	0x9d2
	.uleb128 0x1d
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x6de
	.4byte	0xe67
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x6e9
	.4byte	0xe7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x715
	.4byte	0xea2
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0x718
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF6
	.byte	0x4
	.2byte	0x72b
	.4byte	0xec5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.asciz	"LATB"
	.byte	0x4
	.2byte	0x72e
	.4byte	0xe8f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x7a3
	.4byte	0xee7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x80c
	.4byte	0xefa
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF9
	.byte	0x1
	.byte	0x36
	.4byte	0x987
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x190
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x100a
	.4byte	0x9ea
	.asciz	"bitbang_setup"
	.4byte	0xa36
	.asciz	"bitbang_set_pins_high"
	.4byte	0xa82
	.asciz	"bitbang_set_pins_low"
	.4byte	0xacb
	.asciz	"bitbang_advance_clock_ticks"
	.4byte	0xb18
	.asciz	"bitbang_i2c_stop"
	.4byte	0xb38
	.asciz	"bitbang_i2c_start"
	.4byte	0xb79
	.asciz	"bitbang_set_pins"
	.4byte	0xbd6
	.asciz	"bitbang_set_cs"
	.4byte	0xc06
	.asciz	"bitbang_set_clk"
	.4byte	0xc37
	.asciz	"bitbang_set_mosi"
	.4byte	0xc69
	.asciz	"bitbang_write_bit"
	.4byte	0xc9c
	.asciz	"bitbang_write_value"
	.4byte	0xcfc
	.asciz	"bitbang_read_pin"
	.4byte	0xd38
	.asciz	"bitbang_read_miso"
	.4byte	0xd5d
	.asciz	"bitbang_read_bit"
	.4byte	0xd99
	.asciz	"bitbang_read_value"
	.4byte	0xde2
	.asciz	"bitbang_read_with_write"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x159
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x100a
	.4byte	0xe9
	.asciz	"uint8_t"
	.4byte	0x109
	.asciz	"uint16_t"
	.4byte	0x1bb
	.asciz	"bp_bitbang_speed_t"
	.4byte	0x211
	.asciz	"bp_bitbang_i2c_start_type_t"
	.4byte	0x24a
	.asciz	"size_t"
	.4byte	0x26a
	.asciz	"tagTRISABITS"
	.4byte	0x2ea
	.asciz	"TRISABITS"
	.4byte	0x2fc
	.asciz	"tagPORTABITS"
	.4byte	0x36d
	.asciz	"PORTABITS"
	.4byte	0x37f
	.asciz	"tagTRISBBITS"
	.4byte	0x4ec
	.asciz	"TRISBBITS"
	.4byte	0x4fe
	.asciz	"tagPORTBBITS"
	.4byte	0x63b
	.asciz	"PORTBBITS"
	.4byte	0x760
	.asciz	"tagAD1CON1BITS"
	.4byte	0x781
	.asciz	"AD1CON1BITS"
	.4byte	0x795
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x88e
	.asciz	"AD1PCFGBITS"
	.4byte	0x987
	.asciz	"mode_configuration_t"
	.4byte	0x9d2
	.asciz	"bitbang_delays_t"
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
	.asciz	"PORTAbits"
.LASF7:
	.asciz	"AD1CON1bits"
.LASF5:
	.asciz	"TRISBbits"
.LASF8:
	.asciz	"AD1PCFGbits"
.LASF6:
	.asciz	"PORTBbits"
.LASF9:
	.asciz	"mode_configuration"
.LASF1:
	.asciz	"temporary"
.LASF0:
	.asciz	"state"
.LASF2:
	.asciz	"bit_index"
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
