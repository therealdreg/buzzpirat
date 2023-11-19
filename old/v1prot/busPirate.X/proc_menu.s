	.file "C:\\Users\\dreg\\Desktop\\tmp\\buzzpirat\\buzzpirat\\v1prot\\busPirate.X\\..\\proc_menu.c"
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
	.type	_change_read_display,@function
_change_read_display:
.LFB28:
	.file 1 "../proc_menu.c"
	.loc 1 1052 0
	.set ___PA___,1
	.loc 1 1056 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w1
	mov.b	#120,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,4
	bra	z,.L5
	mov.b	#100,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,4
	bra	z,.L6
	mov.b	#98,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,4
	bra	z,.L7
	.loc 1 1061 0
	clr.b	w0
	.loc 1 1056 0
	mov.b	#119,w2
	sub.b	w1,w2,[w15]
	.set ___BP___,95
	bra	nz,.L4
	mov	#3,w0
	bra	.L2
.L6:
	.loc 1 1055 0
	mov	#1,w0
	bra	.L2
.L7:
	mov	#2,w0
	bra	.L2
.L5:
	clr	w0
.L2:
	.loc 1 1057 0
	inc.b	w0,w0
.L4:
	.loc 1 1062 0
	return	
	.set ___PA___,0
.LFE28:
	.size	_change_read_display, .-_change_read_display
	.section	.const,psv,page
.LC0:
	.asciz	"I\011"
.LC1:
	.asciz	"O\011"
	.section	.text,code
	.align	2
	.type	_print_pin_direction,@function
_print_pin_direction:
.LFB36:
	.loc 1 1685 0
	.set ___PA___,1
	.loc 1 1686 0
	mov	_TRISB,w2
	and	w2,w0,w1
	mov	#.LC1,w0
	.set ___BP___,61
	bra	z,.L10
	mov	#.LC0,w0
.L10:
	call	_bp_write_string
	.loc 1 1687 0
	return	
	.set ___PA___,0
.LFE36:
	.size	_print_pin_direction, .-_print_pin_direction
	.section	.const,psv,page
.LC2:
	.asciz	"H\011"
.LC3:
	.asciz	"L\011"
	.section	.text,code
	.align	2
	.type	_print_pin_state,@function
_print_pin_state:
.LFB37:
	.loc 1 1689 0
	.set ___PA___,1
	.loc 1 1690 0
	mov	_PORTB,w2
	and	w2,w0,w1
	mov	#.LC3,w0
	.set ___BP___,61
	bra	z,.L13
	mov	#.LC2,w0
.L13:
	call	_bp_write_string
	.loc 1 1691 0
	return	
	.set ___PA___,0
.LFE37:
	.size	_print_pin_state, .-_print_pin_state
	.align	2
	.type	_echo_state,@function
_echo_state:
.LFB40:
	.loc 1 1751 0
	.set ___PA___,1
	mov	w0,w1
	.loc 1 1752 0
	mov.b	#48,w0
	cp0	w1
	.set ___BP___,61
	bra	z,.L16
	mov.b	#49,w0
.L16:
	call	_user_serial_transmit_character
	.loc 1 1753 0
	return	
	.set ___PA___,0
.LFE40:
	.size	_echo_state, .-_echo_state
	.align	2
	.type	_handle_right_arrow,@function
_handle_right_arrow:
.LFB46:
	.loc 1 1929 0
	.set ___PA___,1
	.loc 1 1930 0
	mov	_menu_state,w0
	mov	_cmdend,w1
	sub	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L19
	.loc 1 1931 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 1932 0
	bra	.L18
.L19:
	.loc 1 1934 0
	inc	w0,w0
	mov	#127,w2
	mov	#_menu_state,w1
	and	w0,w2,[w1]
	.loc 1 1935 0
	mov	#tbloffset(_MSG_CURSOR_RIGHT_str),w0
	mov	#tblpage(_MSG_CURSOR_RIGHT_str),w1
	call	_bp_message_write_buffer
.L18:
	.loc 1 1936 0
	return	
	.set ___PA___,0
.LFE46:
	.size	_handle_right_arrow, .-_handle_right_arrow
	.section	.const,psv,page
.LC4:
	.asciz	">"
	.section	.text,code
	.align	2
	.type	_refresh_mode_prompt,@function
_refresh_mode_prompt:
.LFB47:
	.loc 1 1938 0
	.set ___PA___,1
	.loc 1 1940 0
	mov	#tbloffset(_MSG_CLEAR_LINE_WITH_CR_str),w0
	mov	#tblpage(_MSG_CLEAR_LINE_WITH_CR_str),w1
	call	_bp_message_write_buffer
	.loc 1 1943 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w2
	mov	#48,w0
	mul.ss	w2,w0,w2
	mov	#_enabled_protocols+40,w1
	add	w2,w1,w0
	call	_bp_write_string
	.loc 1 1945 0
	mov	#_bus_pirate_configuration+10,w0
	mov	[w0],w0
	and	w0,#4,w0
	.set ___BP___,61
	bra	z,.L22
	.loc 1 1946 0
	mov	#tbloffset(_BPMSG1084_str),w0
	mov	#tblpage(_BPMSG1084_str),w1
	call	_bp_message_write_buffer
.L22:
	.loc 1 1949 0
	mov	#.LC4,w0
	call	_bp_write_string
	.loc 1 1950 0
	return	
	.set ___PA___,0
.LFE47:
	.size	_refresh_mode_prompt, .-_refresh_mode_prompt
	.align	2
	.type	_refresh_command_line,@function
_refresh_command_line:
.LFB48:
	.loc 1 1952 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI0:
	mov.d	w10,[w15++]
.LCFI1:
	mov	w0,w11
	.loc 1 1954 0
	mov	_cmdstart,w1
	mov	_cmdend,w0
	sub	w1,w0,[w15]
	.set ___BP___,28
	bra	z,.L24
	.loc 1 1956 0
	mov	#_cmdbuf,w4
	clr.b	w3
	.loc 1 1957 0
	mov	#127,w2
.L34:
	.loc 1 1956 0
	mov.b	w3,[w4+w0]
	.loc 1 1957 0
	dec	w0,w0
	and	w0,w2,w0
	.loc 1 1955 0
	sub	w1,w0,[w15]
	.set ___BP___,91
	bra	nz,.L34
	mov	w0,_cmdend
	.loc 1 1960 0
	clr.b	w2
	mov	#_cmdbuf,w1
	mov.b	w2,[w1+w0]
.L24:
	.loc 1 1963 0
	dec	w11,w0
	and	#127,w0
	.loc 1 1965 0
	mov	_cmdend,w2
	.loc 1 1964 0
	clr	w8
	.loc 1 1965 0
	sub	w0,w2,[w15]
	.set ___BP___,4
	bra	z,.L26
	.loc 1 1966 0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w1
	cp0.b	w1
	.set ___BP___,95
	bra	nz,.L38
	bra	.L27
.L29:
	mov.b	[w4+w0],w1
	cp0.b	w1
	.set ___BP___,95
	bra	nz,.L33
.L27:
	.loc 1 1967 0
	inc	w0,w8
	and	#127,w8
	.loc 1 1968 0
	bra	.L26
.L38:
	.loc 1 1970 0
	mov	#127,w3
	.loc 1 1966 0
	mov	#_cmdbuf,w4
.L33:
	.loc 1 1970 0
	dec	w0,w0
	and	w0,w3,w0
	.loc 1 1965 0
	sub	w0,w2,[w15]
	.set ___BP___,95
	bra	nz,.L29
	.loc 1 1964 0
	clr	w8
.L26:
	.loc 1 1973 0
	call	_refresh_mode_prompt
	.loc 1 1976 0
	sub	w8,w11,[w15]
	.set ___BP___,9
	bra	z,.L30
	.loc 1 1978 0
	mov	#_cmdbuf,w9
	.loc 1 1980 0
	mov	#127,w10
.L31:
	.loc 1 1978 0
	mov.b	[w9+w8],w0
	call	_user_serial_transmit_character
	.loc 1 1979 0
	mov	_cmdend,w0
	mov.b	[w9+w8],[w9+w0]
	.loc 1 1980 0
	inc	w0,w0
	and	w0,w10,w0
	mov	w0,_cmdend
	.loc 1 1977 0
	inc	w8,w8
	and	w8,w10,w8
	.loc 1 1976 0
	sub	w11,w8,[w15]
	.set ___BP___,91
	bra	nz,.L31
.L30:
	.loc 1 1982 0
	mov	_cmdend,w0
	clr.b	w2
	mov	#_cmdbuf,w1
	mov.b	w2,[w1+w0]
	.loc 1 1984 0
	mov	w0,_menu_state
	.loc 1 1985 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE48:
	.size	_refresh_command_line, .-_refresh_command_line
	.align	2
	.type	_handle_up_arrow,@function
_handle_up_arrow:
.LFB49:
	.loc 1 1987 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI2:
	mov.d	w10,[w15++]
.LCFI3:
	.loc 1 1991 0
	mov	_cmdstart,w8
	dec	w8,w8
	and	#127,w8
	mov	_cmdend,w0
	sub	w8,w0,[w15]
	.set ___BP___,9
	bra	z,.L40
	.loc 1 1988 0
	clr	w10
	.loc 1 1995 0
	mov	#_cmdbuf,w9
	.loc 1 2001 0
	mov	#_menu_state+2,w11
.L42:
	.loc 1 1995 0
	mov.b	[w9+w8],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L41
	.loc 1 1996 0
	dec	w8,w0
	and	#127,w0
	.loc 1 1995 0
	mov.b	[w9+w0],w0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L41
	.loc 1 2000 0
	inc	w10,w10
	.loc 1 2001 0
	mov	[w11],w0
	sub	w10,w0,[w15]
	.set ___BP___,71
	bra	leu,.L41
	.loc 1 2002 0
	inc	w0,[w11]
	.loc 1 2004 0
	mov	w8,w0
	call	_refresh_command_line
.L41:
	.loc 1 1993 0
	dec	w8,w8
	and	#127,w8
	.loc 1 1991 0
	mov	_cmdend,w0
	sub	w0,w8,[w15]
	.set ___BP___,91
	bra	nz,.L42
.L40:
	.loc 1 2011 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 2013 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE49:
	.size	_handle_up_arrow, .-_handle_up_arrow
	.align	2
	.type	_handle_down_arrow,@function
_handle_down_arrow:
.LFB50:
	.loc 1 2015 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI4:
	mov.d	w10,[w15++]
.LCFI5:
	.loc 1 2019 0
	mov	_cmdstart,w9
	dec	w9,w9
	and	#127,w9
	mov	_cmdend,w0
	sub	w9,w0,[w15]
	.set ___BP___,9
	bra	z,.L45
	.loc 1 2016 0
	clr	w1
	.loc 1 2022 0
	mov	#_cmdbuf,w10
	.loc 1 2028 0
	mov	#_menu_state+2,w11
.L47:
	.loc 1 2022 0
	mov.b	[w10+w9],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L46
	.loc 1 2023 0
	dec	w9,w0
	and	#127,w0
	.loc 1 2022 0
	mov.b	[w10+w0],w0
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L46
	.loc 1 2027 0
	inc	w1,w1
	.loc 1 2028 0
	dec	[w11],w8
	sub	w8,w1,[w15]
	.set ___BP___,86
	bra	nz,.L46
	.loc 1 2029 0
	mov	w8,[w11]
	.loc 1 2030 0
	mov	w9,w0
	call	_refresh_command_line
	.loc 1 2027 0
	mov	w8,w1
.L46:
	.loc 1 2021 0
	dec	w9,w9
	and	#127,w9
	.loc 1 2019 0
	mov	_cmdend,w0
	sub	w0,w9,[w15]
	.set ___BP___,91
	bra	nz,.L47
.L45:
	.loc 1 2039 0
	mov	_menu_state+2,w0
	sub	w0,#1,[w15]
	.set ___BP___,37
	bra	z,.L48
	.loc 1 2041 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 2042 0
	bra	.L44
.L48:
	.loc 1 2045 0
	call	_refresh_mode_prompt
	.loc 1 2049 0
	mov	_cmdend,w0
	mov	_cmdstart,w1
	sub	w0,w1,[w15]
	.set ___BP___,9
	bra	z,.L50
	.loc 1 2050 0
	mov	#_cmdbuf,w4
	clr.b	w3
	.loc 1 2051 0
	mov	#127,w2
.L52:
	.loc 1 2050 0
	mov.b	w3,[w4+w0]
	.loc 1 2051 0
	dec	w0,w0
	and	w0,w2,w0
	.loc 1 2049 0
	sub	w1,w0,[w15]
	.set ___BP___,91
	bra	nz,.L52
	mov	w0,_cmdend
.L50:
	.loc 1 2053 0
	clr.b	w2
	mov	#_cmdbuf,w1
	mov.b	w2,[w1+w0]
	.loc 1 2054 0
	mov	w0,_menu_state
	.loc 1 2055 0
	mov	#_menu_state+2,w0
	clr	[w0]
.L44:
	.loc 1 2056 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE50:
	.size	_handle_down_arrow, .-_handle_down_arrow
	.section	.const,psv,page
.LC5:
	.byte	0
	.section	.text,code
	.align	2
	.type	_handle_enter_key,@function
_handle_enter_key:
.LFB54:
	.loc 1 2121 0
	.set ___PA___,1
	.loc 1 2122 0
	mov.b	#1,w1
	mov	#_menu_state+5,w0
	mov.b	w1,[w0]
	.loc 1 2123 0
	clr	w1
	mov	w1,_menu_state+2
	.loc 1 2124 0
	mov	_cmdend,w0
	mov	#_cmdbuf,w2
	mov.b	w1,[w2+w0]
	.loc 1 2125 0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdend
	.loc 1 2126 0
	mov	w0,_menu_state
	.loc 1 2127 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 2128 0
	return	
	.set ___PA___,0
.LFE54:
	.size	_handle_enter_key, .-_handle_enter_key
	.align	2
	.type	_switch_psu_off,@function
_switch_psu_off:
.LFB57:
	.loc 1 2194 0
	.set ___PA___,1
	.loc 1 2195 0
	mov	#_bus_pirate_configuration+9,w0
	mov.b	[w0],w0
	cp0.b	w0
	.set ___BP___,61
	bra	nz,.L57
	.loc 1 2196 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	.loc 1 2197 0
	bra	.L56
.L57:
	.loc 1 2200 0
	ze	w0,w0
	mov	#48,w1
	mul.ss	w0,w1,w0
	add	#34,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 2201 0
	mov	#tbloffset(_MSG_CLUTCH_DISENGAGED_str),w0
	mov	#tblpage(_MSG_CLUTCH_DISENGAGED_str),w1
	call	_bp_message_write_line
.LBB30:
.LBB31:
	.file 2 "../hardware.h"
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.LBE31:
.LBE30:
	.loc 1 2203 0
	mov	#tbloffset(_MSG_POWER_SUPPLIES_OFF_str),w0
	mov	#tblpage(_MSG_POWER_SUPPLIES_OFF_str),w1
	call	_bp_message_write_buffer
	.loc 1 2204 0
	mov	#.LC5,w0
	call	_bp_write_line
.L56:
	.loc 1 2205 0
	return	
	.set ___PA___,0
.LFE57:
	.size	_switch_psu_off, .-_switch_psu_off
	.align	2
	.type	_switch_psu_on,@function
_switch_psu_on:
.LFB56:
	.loc 1 2166 0
	.set ___PA___,1
	.loc 1 2167 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,61
	bra	nz,.L60
	.loc 1 2168 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	.loc 1 2169 0
	bra	.L59
.L60:
.LBB32:
.LBB33:
	.loc 2 91 0
	bclr.b	_TRISAbits,#0
	.loc 2 92 0
	bset.b	_PORTAbits,#0
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE35:
.LBE34:
	.loc 1 2176 0
	mov	#2,w0
	call	_bp_delay_ms
	.loc 1 2178 0
	mov	#9,w0
	call	_bp_read_adc
	mov	#432,w1
	sub	w0,w1,[w15]
	.set ___BP___,50
	bra	leu,.L62
	mov	#10,w0
	call	_bp_read_adc
	mov	#695,w1
	sub	w0,w1,[w15]
	.set ___BP___,71
	bra	leu,.L62
	.loc 1 2180 0
	mov	#tbloffset(_MSG_POWER_SUPPLIES_ON_str),w0
	mov	#tblpage(_MSG_POWER_SUPPLIES_ON_str),w1
	call	_bp_message_write_buffer
	.loc 1 2181 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 2182 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	#32,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 2183 0
	mov	#tbloffset(_MSG_CLUTCH_ENGAGED_str),w0
	mov	#tblpage(_MSG_CLUTCH_ENGAGED_str),w1
	call	_bp_message_write_line
	bra	.L63
.L62:
.LBB36:
.LBB37:
	.loc 2 96 0
	bclr.b	_TRISAbits,#0
	.loc 2 97 0
	bclr.b	_PORTAbits,#0
.LBE37:
.LBE36:
	.loc 1 2186 0
	mov	#tbloffset(_MSG_VREG_TOO_LOW_str),w0
	mov	#tblpage(_MSG_VREG_TOO_LOW_str),w1
	call	_bp_message_write_line
	.loc 1 2187 0
	mov	#tbloffset(_MSG_POWER_SUPPLIES_OFF_str),w0
	mov	#tblpage(_MSG_POWER_SUPPLIES_OFF_str),w1
	call	_bp_message_write_buffer
	.loc 1 2188 0
	mov	#.LC5,w0
	call	_bp_write_line
.L63:
.LBB38:
.LBB39:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.L59:
.LBE39:
.LBE38:
	.loc 1 2192 0
	return	
	.set ___PA___,0
.LFE56:
	.size	_switch_psu_on, .-_switch_psu_on
	.section	.const,psv,page
.LC6:
	.asciz	"\033["
.LC7:
	.asciz	"D"
	.section	.text,code
	.align	2
	.type	_remove_current_character_from_command_line,@function
_remove_current_character_from_command_line:
.LFB42:
	.loc 1 1836 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI6:
	mov.d	w10,[w15++]
.LCFI7:
.LBB40:
	.loc 1 1841 0
	mov	_menu_state,w1
	mov	_cmdend,w0
	.loc 1 1837 0
	clr	w9
	.loc 1 1841 0
	sub	w1,w0,[w15]
	.set ___BP___,9
	bra	z,.L65
	.loc 1 1844 0
	mov	#_cmdbuf,w10
	.loc 1 1847 0
	mov.b	#32,w11
.L67:
	.loc 1 1844 0
	inc	w1,w8
	mov.b	[w10+w8],w0
	mov.b	w0,[w10+w1]
	.loc 1 1847 0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L66
	mov.b	w11,w0
.L66:
	call	_user_serial_transmit_character
	.loc 1 1850 0
	inc	w9,w9
	.loc 1 1842 0
	mov	w8,w1
	and	#127,w1
	.loc 1 1841 0
	mov	_cmdend,w0
	sub	w0,w1,[w15]
	.set ___BP___,91
	bra	nz,.L67
.L65:
.LBE40:
	.loc 1 1854 0
	dec	w0,w0
	and	#127,w0
	mov	w0,_cmdend
	.loc 1 1857 0
	mov	#.LC6,w0
	call	_bp_write_string
	.loc 1 1858 0
	mov	w9,w0
	call	_bp_write_dec_word
	.loc 1 1859 0
	mov	#.LC7,w0
	call	_bp_write_string
	.loc 1 1860 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE42:
	.size	_remove_current_character_from_command_line, .-_remove_current_character_from_command_line
	.align	2
	.type	_handle_backspace,@function
_handle_backspace:
.LFB44:
	.loc 1 1875 0
	.set ___PA___,1
	.loc 1 1876 0
	mov	_menu_state,w0
	mov	_cmdstart,w1
	sub	w0,w1,[w15]
	.set ___BP___,90
	bra	nz,.L71
	.loc 1 1878 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 1879 0
	bra	.L70
.L71:
	.loc 1 1882 0
	mov	_cmdend,w1
	sub	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L73
	.loc 1 1886 0
	dec	w0,w0
	and	#127,w0
	mov	w0,_cmdend
	.loc 1 1889 0
	clr.b	w2
	mov	#_cmdbuf,w1
	mov.b	w2,[w1+w0]
	.loc 1 1892 0
	mov	w0,_menu_state
	.loc 1 1895 0
	mov	#tbloffset(_MSG_DESTRUCTIVE_BACKSPACE_str),w0
	mov	#tblpage(_MSG_DESTRUCTIVE_BACKSPACE_str),w1
	call	_bp_message_write_buffer
	.loc 1 1897 0
	bra	.L70
.L73:
	.loc 1 1903 0
	mov	#tbloffset(_MSG_CURSOR_LEFT_str),w0
	mov	#tblpage(_MSG_CURSOR_LEFT_str),w1
	call	_bp_message_write_buffer
	.loc 1 1906 0
	mov	#_menu_state,w0
	dec	[w0],w2
	mov	#127,w1
	and	w2,w1,[w0]
	.loc 1 1909 0
	call	_remove_current_character_from_command_line
.L70:
	.loc 1 1910 0
	return	
	.set ___PA___,0
.LFE44:
	.size	_handle_backspace, .-_handle_backspace
	.align	2
	.type	_handle_delete,@function
_handle_delete:
.LFB43:
	.loc 1 1862 0
	.set ___PA___,1
	.loc 1 1863 0
	mov	_menu_state,w1
	mov	_cmdstart,w0
	sub	w1,w0,[w15]
	.set ___BP___,80
	bra	nz,.L75
	.loc 1 1865 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 1866 0
	bra	.L74
.L75:
	.loc 1 1872 0
	call	_remove_current_character_from_command_line
.L74:
	.loc 1 1873 0
	return	
	.set ___PA___,0
.LFE43:
	.size	_handle_delete, .-_handle_delete
	.align	2
	.type	_handle_home_key,@function
_handle_home_key:
.LFB51:
	.loc 1 2058 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI8:
	.loc 1 2059 0
	mov	_menu_state,w1
	mov	_cmdstart,w0
	sub	w1,w0,[w15]
	.set ___BP___,80
	bra	nz,.L78
	.loc 1 2060 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
.L78:
	.loc 1 2063 0
	mov	#_menu_state,w9
	mov	_cmdstart,w8
	subr	w8,[w9],w8
	and	#127,w8
	.loc 1 2064 0
	mov	#.LC6,w0
	call	_bp_write_string
	.loc 1 2065 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 2066 0
	mov	#.LC7,w0
	call	_bp_write_string
	.loc 1 2067 0
	mov	_cmdstart,w0
	mov	w0,[w9]
	.loc 1 2068 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE51:
	.size	_handle_home_key, .-_handle_home_key
	.section	.const,psv,page
.LC8:
	.asciz	"C"
	.section	.text,code
	.align	2
	.type	_handle_end_key,@function
_handle_end_key:
.LFB52:
	.loc 1 2070 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI9:
	.loc 1 2071 0
	mov	_menu_state,w1
	mov	_cmdend,w0
	sub	w1,w0,[w15]
	.set ___BP___,80
	bra	nz,.L80
	.loc 1 2072 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
.L80:
	.loc 1 2075 0
	mov	#_menu_state,w9
	mov	_cmdend,w8
	sub	w8,[w9],w8
	and	#127,w8
	.loc 1 2076 0
	mov	#.LC6,w0
	call	_bp_write_string
	.loc 1 2077 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 2078 0
	mov	#.LC8,w0
	call	_bp_write_string
	.loc 1 2079 0
	mov	_cmdend,w0
	mov	w0,[w9]
	.loc 1 2080 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE52:
	.size	_handle_end_key, .-_handle_end_key
	.align	2
	.type	_handle_character,@function
_handle_character:
.LFB55:
	.loc 1 2130 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI10:
	mov.d	w10,[w15++]
.LCFI11:
	mov.d	w12,[w15++]
.LCFI12:
	mov	w14,[w15++]
.LCFI13:
	mov.b	w0,w13
	.loc 1 2131 0
	mov	_cmdend,w10
	inc	w10,w1
	and	#127,w1
	mov	_cmdstart,w0
	sub	w1,w0,[w15]
	.set ___BP___,13
	bra	z,.L82
	sub.b	w13,#31,[w15]
	.set ___BP___,50
	bra	leu,.L82
	mov.b	#126,w0
	sub.b	w13,w0,[w15]
	.set ___BP___,50
	bra	gtu,.L82
	.loc 1 2134 0
	mov	_menu_state,w8
	sub	w10,w8,[w15]
	.set ___BP___,80
	bra	nz,.L83
	.loc 1 2136 0
	mov.b	w13,w0
	call	_user_serial_transmit_character
	.loc 1 2137 0
	mov	_cmdend,w0
	mov	#_cmdbuf,w1
	mov.b	w13,[w1+w0]
	.loc 1 2138 0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdend
	.loc 1 2139 0
	clr.b	w2
	mov.b	w2,[w1+w0]
	.loc 1 2140 0
	mov	w0,_menu_state
	bra	.L81
.L83:
.LBB41:
	.loc 1 2144 0
	mov	#.LC6,w0
	call	_bp_write_string
	.loc 1 2143 0
	sub	w10,w8,w0
	mov	#127,w11
	and	w0,w11,w0
	.loc 1 2145 0
	call	_bp_write_dec_word
	.loc 1 2146 0
	mov	#.LC8,w0
	call	_bp_write_string
	.loc 1 2147 0
	mov	_cmdend,w10
	.loc 1 2148 0
	mov	#_menu_state,w0
	dec	[w0],w0
	and	w0,w11,w11
	sub	w11,w10,[w15]
	.set ___BP___,9
	bra	z,.L85
	.loc 1 2149 0
	mov	#_cmdbuf,w11
	.loc 1 2152 0
	mov	#tbloffset(_MSG_CURSOR_LEFT_TWO_str),w8
	mov	#tblpage(_MSG_CURSOR_LEFT_TWO_str),w9
	.loc 1 2154 0
	mov	#127,w12
	.loc 1 2148 0
	mov	#_menu_state,w14
.L88:
	.loc 1 2149 0
	add	w11,w10,w0
	mov.b	[w11+w10],w1
	mov.b	w1,[w0+1]
	.loc 1 2150 0
	mov.b	[w11+w10],w0
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L86
	.loc 1 2151 0
	call	_user_serial_transmit_character
	.loc 1 2152 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
.L86:
	.loc 1 2154 0
	dec	w10,w10
	and	w10,w12,w10
	.loc 1 2148 0
	dec	[w14],w0
	and	w0,w12,w0
	sub	w0,w10,[w15]
	.set ___BP___,91
	bra	nz,.L88
.L85:
	.loc 1 2156 0
	mov.b	w13,w0
	call	_user_serial_transmit_character
	.loc 1 2157 0
	mov	#_menu_state,w1
	mov	[w1],w0
	mov	#_cmdbuf,w2
	mov.b	w13,[w2+w0]
	.loc 1 2158 0
	inc	w0,w2
	mov	#127,w0
	and	w2,w0,[w1]
	.loc 1 2159 0
	mov	_cmdend,w1
	inc	w1,w1
	and	w1,w0,w0
	mov	w0,_cmdend
	bra	.L81
.L82:
.LBE41:
	.loc 1 2162 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
.L81:
	.loc 1 2164 0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE55:
	.size	_handle_character, .-_handle_character
	.align	2
	.type	_handle_left_arrow,@function
_handle_left_arrow:
.LFB45:
	.loc 1 1912 0
	.set ___PA___,1
	.loc 1 1914 0
	mov	#_menu_state+4,w0
	mov.b	#4,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,79
	bra	leu,.L91
	.loc 1 1915 0
	call	_enter_sump_mode
	.loc 1 1916 0
	mov	#_menu_state+4,w0
	clr.b	[w0]
	.loc 1 1917 0
	bra	.L90
.L91:
	.loc 1 1921 0
	mov	_menu_state,w0
	mov	_cmdstart,w1
	sub	w0,w1,[w15]
	.set ___BP___,37
	bra	z,.L93
	.loc 1 1922 0
	dec	w0,w0
	mov	#127,w2
	mov	#_menu_state,w1
	and	w0,w2,[w1]
	.loc 1 1923 0
	mov	#tbloffset(_MSG_CURSOR_LEFT_str),w0
	mov	#tblpage(_MSG_CURSOR_LEFT_str),w1
	call	_bp_message_write_buffer
	bra	.L90
.L93:
	.loc 1 1925 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
.L90:
	.loc 1 1927 0
	return	
	.set ___PA___,0
.LFE45:
	.size	_handle_left_arrow, .-_handle_left_arrow
	.align	2
	.type	_handle_escape_key,@function
_handle_escape_key:
.LFB53:
	.loc 1 2082 0
	.set ___PA___,1
	.loc 1 2083 0
	call	_user_serial_read_byte
	mov.b	#91,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L94
	.loc 1 2087 0
	call	_user_serial_read_byte
	mov.b	#65,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L98
	.set ___BP___,50
	bra	gtu,.L102
	mov.b	#49,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L96
	mov.b	#52,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L94
	bra	.L103
.L102:
	mov.b	#67,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L100
	.set ___BP___,50
	bra	ltu,.L99
	mov.b	#68,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L94
	.loc 1 2089 0
	call	_handle_left_arrow
	.loc 1 2090 0
	bra	.L94
.L100:
	.loc 1 2093 0
	call	_handle_right_arrow
	.loc 1 2094 0
	bra	.L94
.L98:
	.loc 1 2097 0
	call	_handle_up_arrow
	.loc 1 2098 0
	bra	.L94
.L99:
	.loc 1 2101 0
	call	_handle_down_arrow
	.loc 1 2102 0
	bra	.L94
.L96:
	.loc 1 2105 0
	call	_user_serial_read_byte
	mov.b	#126,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,86
	bra	nz,.L94
	.loc 1 2106 0
	call	_handle_home_key
	bra	.L94
.L103:
	.loc 1 2111 0
	call	_user_serial_read_byte
	mov.b	#126,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,80
	bra	nz,.L94
	.loc 1 2112 0
	call	_handle_end_key
.L94:
	.loc 1 2119 0
	return	
	.set ___PA___,0
.LFE53:
	.size	_handle_escape_key, .-_handle_escape_key
	.align	2
	.type	_print_pins_information,@function
_print_pins_information:
.LFB35:
	.loc 1 1594 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI14:
	.loc 1 1595 0
	mov	#tbloffset(_BPMSG1226_str),w0
	mov	#tblpage(_BPMSG1226_str),w1
	call	_bp_message_write_line
	.loc 1 1600 0
	mov	#tbloffset(_BPMSG1233_str),w0
	mov	#tblpage(_BPMSG1233_str),w1
	call	_bp_message_write_line
	.loc 1 1601 0
	mov	#tbloffset(_BPMSG1227_str),w0
	mov	#tblpage(_BPMSG1227_str),w1
	call	_bp_message_write_buffer
	.loc 1 1604 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	#36,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 1605 0
	mov	#tbloffset(_BPMSG1228_str),w0
	mov	#tblpage(_BPMSG1228_str),w1
	call	_bp_message_write_buffer
	.loc 1 1615 0
	mov	#1024,w0
	call	_print_pin_direction
	.loc 1 1616 0
	mov	#256,w0
	call	_print_pin_direction
	.loc 1 1617 0
	mov	#512,w0
	call	_print_pin_direction
	.loc 1 1618 0
	mov	#64,w0
	call	_print_pin_direction
	.loc 1 1619 0
	mov	#128,w0
	call	_print_pin_direction
	.loc 1 1621 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1622 0
	mov	#tbloffset(_BPMSG1234_str),w0
	mov	#tblpage(_BPMSG1234_str),w1
	call	_bp_message_write_buffer
.LBB42:
.LBB43:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE43:
.LBE42:
	.loc 1 1631 0
	mov	#9,w0
	call	_bp_read_adc
	call	_bp_write_voltage
	.loc 1 1634 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w8
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w9
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1635 0
	mov.b	#9,w0
	call	_user_serial_transmit_character
	.loc 1 1640 0
	mov	#10,w0
	call	_bp_read_adc
	call	_bp_write_voltage
	.loc 1 1642 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1643 0
	mov.b	#9,w0
	call	_user_serial_transmit_character
	.loc 1 1651 0
	mov	#12,w0
	call	_bp_read_adc
	call	_bp_write_voltage
	.loc 1 1654 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1655 0
	mov.b	#9,w0
	call	_user_serial_transmit_character
	.loc 1 1660 0
	mov	#11,w0
	call	_bp_read_adc
	call	_bp_write_voltage
	.loc 1 1662 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1663 0
	mov.b	#9,w0
	call	_user_serial_transmit_character
.LBB44:
.LBB45:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
.LBE45:
.LBE44:
	.loc 1 1676 0
	mov	#1024,w0
	call	_print_pin_state
	.loc 1 1677 0
	mov	#256,w0
	call	_print_pin_state
	.loc 1 1678 0
	mov	#512,w0
	call	_print_pin_state
	.loc 1 1679 0
	mov	#64,w0
	call	_print_pin_state
	.loc 1 1680 0
	mov	#128,w0
	call	_print_pin_state
	.loc 1 1682 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1683 0
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE35:
	.size	_print_pins_information, .-_print_pins_information
	.align	2
	.type	_print_status_info,@function
_print_status_info:
.LFB34:
	.loc 1 1496 0
	.set ___PA___,1
	.loc 1 1503 0
	mov	#tbloffset(_BPMSG1136_str),w0
	mov	#tblpage(_BPMSG1136_str),w1
	call	_bp_message_write_buffer
	.loc 1 1504 0
	mov	#-21508,w1
	clr	w0
	call	_bp_read_from_flash
	call	_bp_write_hex_word
	.loc 1 1505 0
	mov	#tbloffset(_BPMSG1137_str),w0
	mov	#tblpage(_BPMSG1137_str),w1
	call	_bp_message_write_buffer
	.loc 1 1506 0
	mov	#-21506,w1
	clr	w0
	call	_bp_read_from_flash
	call	_bp_write_hex_word
	.loc 1 1507 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1509 0
	mov	#tbloffset(_BPMSG1119_str),w0
	mov	#tblpage(_BPMSG1119_str),w1
	call	_bp_message_write_line
	.loc 1 1511 0
	call	_print_pins_information
	.loc 1 1513 0
	btst.b	_PORTAbits,#0
	.set ___BP___,50
	bra	z,.L106
	.loc 1 1514 0
	mov	#tbloffset(_MSG_POWER_SUPPLIES_ON_str),w0
	mov	#tblpage(_MSG_POWER_SUPPLIES_ON_str),w1
	call	_bp_message_write_buffer
	bra	.L107
.L106:
	.loc 1 1516 0
	mov	#tbloffset(_MSG_POWER_SUPPLIES_OFF_str),w0
	mov	#tblpage(_MSG_POWER_SUPPLIES_OFF_str),w1
	call	_bp_message_write_buffer
.L107:
	.loc 1 1519 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 1520 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 1524 0
	btst.b	_PORTBbits+11/8,#11%8
	.set ___BP___,50
	bra	z,.L108
	.loc 1 1525 0
	mov	#tbloffset(_BPMSG1091_str),w0
	mov	#tblpage(_BPMSG1091_str),w1
	call	_bp_message_write_buffer
	bra	.L109
.L108:
	.loc 1 1527 0
	mov	#tbloffset(_BPMSG1089_str),w0
	mov	#tblpage(_BPMSG1089_str),w1
	call	_bp_message_write_buffer
.L109:
	.loc 1 1528 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 1529 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 1542 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w0
	.set ___BP___,50
	bra	z,.L110
	.loc 1 1543 0
	mov	#tbloffset(_BPMSG1120_str),w0
	mov	#tblpage(_BPMSG1120_str),w1
	call	_bp_message_write_line
	bra	.L111
.L110:
	.loc 1 1545 0
	mov	#tbloffset(_BPMSG1121_str),w0
	mov	#tblpage(_BPMSG1121_str),w1
	call	_bp_message_write_line
.L111:
	.loc 1 1549 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#8,w0
	.set ___BP___,50
	bra	nz,.L112
	.loc 1 1550 0
	mov	#tbloffset(_BPMSG1123_str),w0
	mov	#tblpage(_BPMSG1123_str),w1
	call	_bp_message_write_buffer
	bra	.L113
.L112:
	.loc 1 1552 0
	mov	#tbloffset(_BPMSG1124_str),w0
	mov	#tblpage(_BPMSG1124_str),w1
	call	_bp_message_write_buffer
.L113:
	.loc 1 1555 0
	mov.b	#44,w0
	call	_user_serial_transmit_character
	.loc 1 1556 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 1560 0
	mov	#tbloffset(_BPMSG1252_str),w0
	mov	#tblpage(_BPMSG1252_str),w1
	call	_bp_message_write_buffer
	.loc 1 1561 0
	mov	#_mode_configuration+1,w0
	mov.b	[w0],w0
	call	_bp_write_dec_byte
	.loc 1 1562 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1566 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#3,w0
	sub.b	w0,#1,[w15]
	.set ___BP___,80
	bra	nz,.L114
	.loc 1 1567 0
	mov	#tbloffset(_BPMSG1087_str),w0
	mov	#tblpage(_BPMSG1087_str),w1
	call	_bp_message_write_line
	bra	.L115
.L114:
	.loc 1 1569 0
	mov	#tbloffset(_BPMSG1086_str),w0
	mov	#tblpage(_BPMSG1086_str),w1
	call	_bp_message_write_line
.L115:
	.loc 1 1590 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	#38,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 1591 0
	mov	#tbloffset(_BPMSG1119_str),w0
	mov	#tblpage(_BPMSG1119_str),w1
	call	_bp_message_write_line
	.loc 1 1592 0
	return	
	.set ___PA___,0
.LFE34:
	.size	_print_status_info, .-_print_status_info
	.align	2
	.global	_getint	; export
	.type	_getint,@function
_getint:
.LFB25:
	.loc 1 950 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI15:
	mov	w10,[w15++]
.LCFI16:
	.loc 1 957 0
	mov	_cmdstart,w3
	mov	w3,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w0
	mov.b	#-49,w1
	add.b	w0,w1,w1
	sub.b	w1,#8,[w15]
	.set ___BP___,50
	bra	gtu,.L117
	.loc 1 960 0
	ze	w0,w0
	sub	#48,w0
	.loc 1 962 0
	inc	w3,w1
	and	#127,w1
	mov	#_cmdbuf,w2
	mov.b	[w2+w1],w2
	mov.b	#-48,w4
	add.b	w2,w4,w4
	.loc 1 961 0
	mov	#1,w1
	.loc 1 962 0
	sub.b	w4,#9,[w15]
	.set ___BP___,9
	bra	gtu,.L118
	mov	#127,w8
	mov	#_cmdbuf,w7
	mov.b	#-48,w6
.L119:
	.loc 1 965 0
	mul.su	w0,#10,w4
	.loc 1 966 0
	ze	w2,w0
	add	w0,w4,w0
	sub	#48,w0
	.loc 1 967 0
	inc	w1,w1
	.loc 1 962 0
	add	w1,w3,w2
	and	w2,w8,w2
	mov.b	[w7+w2],w2
	add.b	w2,w6,w4
	sub.b	w4,#9,[w15]
	.set ___BP___,91
	bra	leu,.L119
	bra	.L118
.L117:
	.loc 1 969 0
	mov.b	#48,w1
	sub.b	w0,w1,[w15]
	.set ___BP___,62
	bra	nz,.L120
	.loc 1 973 0
	inc	w3,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w2
	mov.b	#98,w0
	sub.b	w2,w0,[w15]
	.set ___BP___,72
	bra	nz,.L121
.L123:
	.loc 1 976 0
	inc2	w3,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w2
	mov.b	#-48,w4
	add.b	w2,w4,w4
	clr	w0
	mov	#2,w1
	sub.b	w4,#1,[w15]
	.set ___BP___,91
	bra	leu,.L122
	bra	.L118
.L121:
	.loc 1 973 0
	mov.b	#66,w0
	sub.b	w2,w0,[w15]
	.set ___BP___,72
	bra	nz,.L141
	bra	.L123
.L122:
	.loc 1 976 0
	mov	#127,w7
	mov	#_cmdbuf,w6
	mov.b	#-48,w5
.L137:
	.loc 1 978 0
	add	w0,w0,w0
	.loc 1 979 0
	ze	w2,w2
	add	w0,w2,w0
	sub	#48,w0
	.loc 1 980 0
	inc	w1,w1
	.loc 1 976 0
	add	w1,w3,w2
	and	w2,w7,w2
	mov.b	[w6+w2],w2
	add.b	w2,w5,w4
	sub.b	w4,#1,[w15]
	.set ___BP___,91
	bra	leu,.L137
	bra	.L118
.L141:
	.loc 1 982 0
	mov.b	#120,w0
	sub.b	w2,w0,[w15]
	.set ___BP___,28
	bra	z,.L134
	mov.b	#88,w0
	sub.b	w2,w0,[w15]
	.set ___BP___,72
	bra	nz,.L142
	bra	.L144
.L127:
	.loc 1 991 0
	sl	w0,#4,w0
	.loc 1 994 0
	sub	#48,w0
	ze	w2,w2
	add	w0,w2,w0
.L131:
	.loc 1 1000 0
	inc	w1,w1
	bra	.L143
.L134:
	.loc 1 982 0
	clr	w0
	mov	#2,w1
	bra	.L125
.L144:
	clr	w0
	mov	#2,w1
.L125:
	.loc 1 985 0
	mov	#127,w8
	mov	#_cmdbuf,w6
	mov.b	#-48,w7
	.loc 1 987 0
	mov.b	#-65,w9
	.loc 1 989 0
	mov.b	#-97,w10
.L143:
	.loc 1 985 0
	add	w1,w3,w4
	and	w4,w8,w4
	mov.b	[w6+w4],w2
	add.b	w2,w7,w5
	sub.b	w5,#9,[w15]
	.set ___BP___,50
	bra	leu,.L127
	.loc 1 987 0
	add.b	w2,w9,w5
	.loc 1 986 0
	sub.b	w5,#5,[w15]
	.set ___BP___,50
	bra	leu,.L128
	.loc 1 989 0
	add.b	w2,w10,w5
	.loc 1 988 0
	sub.b	w5,#5,[w15]
	.set ___BP___,91
	bra	leu,.L128
	bra	.L118
.L142:
	.loc 1 1002 0
	mov.b	#-48,w4
	add.b	w2,w4,w4
	.loc 1 955 0
	clr	w0
	.loc 1 972 0
	mov	#1,w1
	.loc 1 1002 0
	sub.b	w4,#9,[w15]
	.set ___BP___,50
	bra	gtu,.L118
	.loc 1 1004 0
	ze	w2,w0
	sub	#48,w0
	.loc 1 1006 0
	mov	#127,w8
	mov	#_cmdbuf,w7
	mov.b	#-48,w6
.L129:
	.loc 1 1009 0
	mul.su	w0,#10,w4
	.loc 1 1010 0
	ze	w2,w0
	add	w0,w4,w0
	sub	#48,w0
	.loc 1 1011 0
	inc	w1,w1
	.loc 1 1006 0
	add	w1,w3,w2
	and	w2,w8,w2
	mov.b	[w7+w2],w2
	add.b	w2,w6,w4
	.loc 1 1005 0
	sub.b	w4,#9,[w15]
	.set ___BP___,91
	bra	leu,.L129
	bra	.L118
.L120:
	.loc 1 1016 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#7
	.loc 1 1017 0
	clr	w0
	bra	.L130
.L118:
	.loc 1 1020 0
	mov	_cmdstart,w2
	add	w1,w2,w1
	.loc 1 1021 0
	and	#127,w1
	mov	w1,_cmdstart
.L130:
	.loc 1 1023 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.L128:
	.loc 1 996 0
	bset.b	w2,#5
	mov.b	w2,[w6+w4]
	.loc 1 991 0
	sl	w0,#4,w0
	.loc 1 998 0
	sub	#87,w0
	ze	w2,w2
	.loc 1 997 0
	add	w0,w2,w0
	bra	.L131
.LFE25:
	.size	_getint, .-_getint
	.align	2
	.global	_getrepeat	; export
	.type	_getrepeat,@function
_getrepeat:
.LFB26:
	.loc 1 1025 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI17:
	.loc 1 1028 0
	mov	_cmdstart,w1
	inc	w1,w0
	and	#127,w0
	mov	#_cmdbuf,w2
	mov.b	[w2+w0],w3
	.loc 1 1036 0
	mov	#1,w0
	.loc 1 1028 0
	mov.b	#58,w2
	sub.b	w3,w2,[w15]
	.set ___BP___,80
	bra	nz,.L146
	.loc 1 1029 0
	inc2	w1,w1
	.loc 1 1030 0
	mov	#127,w8
	and	w1,w8,w1
	mov	w1,_cmdstart
	.loc 1 1031 0
	call	_getint
	.loc 1 1032 0
	mov	_cmdstart,w1
	dec	w1,w1
	.loc 1 1033 0
	and	w1,w8,w8
	mov	w8,_cmdstart
.L146:
	.loc 1 1037 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE26:
	.size	_getrepeat, .-_getrepeat
	.align	2
	.global	_getnumbits	; export
	.type	_getnumbits,@function
_getnumbits:
.LFB27:
	.loc 1 1039 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI18:
	.loc 1 1042 0
	mov	_cmdstart,w1
	inc	w1,w0
	and	#127,w0
	mov	#_cmdbuf,w2
	mov.b	[w2+w0],w3
	.loc 1 1049 0
	clr	w0
	.loc 1 1042 0
	mov.b	#59,w2
	sub.b	w3,w2,[w15]
	.set ___BP___,80
	bra	nz,.L149
	.loc 1 1043 0
	inc2	w1,w1
	mov	#127,w8
	and	w1,w8,w1
	mov	w1,_cmdstart
	.loc 1 1044 0
	call	_getint
	.loc 1 1045 0
	mov	_cmdstart,w1
	dec	w1,w1
	and	w1,w8,w8
	mov	w8,_cmdstart
.L149:
	.loc 1 1050 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE27:
	.size	_getnumbits, .-_getnumbits
	.align	2
	.global	_consumewhitechars	; export
	.type	_consumewhitechars,@function
_consumewhitechars:
.LFB29:
	.loc 1 1064 0
	.set ___PA___,1
	.loc 1 1065 0
	mov	_cmdstart,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w2
	mov.b	#32,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,9
	bra	nz,.L151
	.loc 1 1066 0
	mov	#127,w4
	.loc 1 1065 0
	mov	#_cmdbuf,w3
	mov.b	w1,w2
.L154:
	.loc 1 1066 0
	inc	w0,w0
	and	w0,w4,w0
	.loc 1 1065 0
	mov.b	[w3+w0],w1
	sub.b	w1,w2,[w15]
	.set ___BP___,91
	bra	z,.L154
	mov	w0,_cmdstart
.L151:
	.loc 1 1068 0
	return	
	.set ___PA___,0
.LFE29:
	.size	_consumewhitechars, .-_consumewhitechars
	.align	2
	.type	_convert_value,@function
_convert_value:
.LFB41:
	.loc 1 1821 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI19:
	mov	w10,[w15++]
.LCFI20:
	mov.b	w0,w8
	.loc 1 1822 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1823 0
	call	_consumewhitechars
	.loc 1 1824 0
	call	_getint
	mov	w0,w10
	.loc 1 1825 0
	cp0.b	w8
	.set ___BP___,61
	bra	z,.L157
	.loc 1 1826 0
	mov	#_mode_configuration+1,w0
	mov.b	[w0],w1
	mov	w10,w0
	call	_bp_reverse_integer
	mov	w0,w10
.L157:
	.loc 1 1828 0
	mov.b	w10,w0
	call	_bp_write_hex_byte
	.loc 1 1829 0
	mov	#tbloffset(_MSG_BASE_CONVERTER_EQUAL_SIGN_str),w8
	mov	#tblpage(_MSG_BASE_CONVERTER_EQUAL_SIGN_str),w9
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1830 0
	mov.b	w10,w0
	call	_bp_write_dec_byte
	.loc 1 1831 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1832 0
	mov.b	w10,w0
	call	_bp_write_bin_byte
	.loc 1 1833 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1834 0
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE41:
	.size	_convert_value, .-_convert_value
	.section	.const,psv,page
.LC9:
	.asciz	"\015\012("
.LC10:
	.asciz	"x"
.LC11:
	.asciz	")>"
	.section	.text,code
	.align	2
	.global	_getnumber	; export
	.type	_getnumber,@function
_getnumber:
.LFB32:
	.loc 1 1194 0
	.set ___PA___,1
	lnk	#16
.LCFI21:
	mov.d	w8,[w15++]
.LCFI22:
	mov.d	w10,[w15++]
.LCFI23:
	mov.d	w12,[w15++]
.LCFI24:
	mov	w0,[w14+10]
	mov	w1,[w14+12]
	mov	w2,[w14+14]
	mov	w3,[w14+8]
.L159:
	.loc 1 1224 0
	mov	#tbloffset(_MSG_DESTRUCTIVE_BACKSPACE_str),w8
	mov	#tblpage(_MSG_DESTRUCTIVE_BACKSPACE_str),w9
	.loc 1 1285 0
	mov	#tbloffset(_BPMSG1211_str),w10
	mov	#tblpage(_BPMSG1211_str),w11
.L179:
	.loc 1 1206 0
	mov	#.LC9,w0
	call	_bp_write_string
	.loc 1 1207 0
	mov	[w14+10],w0
	cp0	w0
	.set ___BP___,73
	bra	ge,.L160
	.loc 1 1208 0
	mov	#.LC10,w0
	call	_bp_write_string
	bra	.L161
.L160:
	.loc 1 1210 0
	mov.b	[w14+10],w0
	call	_bp_write_dec_byte
.L161:
	.loc 1 1212 0
	mov	#.LC11,w0
	call	_bp_write_string
	.loc 1 1204 0
	clr	w1
	mov	w1,[w14+6]
	.loc 1 1201 0
	mov	w1,w13
.L184:
	.loc 1 1215 0
	call	_user_serial_read_byte
	mov.b	w0,w12
	.loc 1 1216 0
	sub.b	w12,#13,[w15]
	.set ___BP___,29
	bra	z,.L164
	.set ___BP___,50
	bra	gtu,.L167
	sub.b	w12,#8,[w15]
	.set ___BP___,29
	bra	z,.L163
	sub.b	w12,#10,[w15]
	.set ___BP___,71
	bra	nz,.L162
	bra	.L164
.L167:
	mov.b	#45,w0
	sub.b	w12,w0,[w15]
	.set ___BP___,29
	bra	z,.L165
	mov.b	#120,w0
	sub.b	w12,w0,[w15]
	.set ___BP___,71
	bra	nz,.L162
	bra	.L185
.L163:
	.loc 1 1218 0
	cp0	w13
	.set ___BP___,71
	bra	z,.L168
	.loc 1 1219 0
	dec	w13,w13
	.loc 1 1220 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	bra	.L184
.L168:
	.loc 1 1222 0
	mov	[w14+6],w0
	cp0	w0
	.set ___BP___,50
	bra	z,.L170
	.loc 1 1224 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 1223 0
	clr	w1
	mov	w1,[w14+6]
	bra	.L184
.L170:
	.loc 1 1226 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	bra	.L184
.L165:
	.loc 1 1235 0
	cp0	w13
	.set ___BP___,50
	bra	nz,.L171
	.loc 1 1237 0
	mov.b	#45,w0
	call	_user_serial_transmit_character
	.loc 1 1238 0
	mov	#1,w0
	mov	w0,[w14+6]
	bra	.L184
.L171:
	.loc 1 1240 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	bra	.L184
.L185:
	.loc 1 1244 0
	mov	[w14+8],w1
	cp0	w1
	.set ___BP___,95
	bra	z,.L173
	bra	.L186
.L162:
	.loc 1 1247 0
	mov.b	#-48,w1
	add.b	w12,w1,w0
	sub.b	w0,#9,[w15]
	.set ___BP___,0
	bra	gtu,.L173
	.loc 1 1249 0
	sub	w13,#3,[w15]
	.set ___BP___,50
	bra	le,.L174
	.loc 1 1251 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	.loc 1 1252 0
	mov	#4,w13
	bra	.L184
.L174:
	.loc 1 1254 0
	mov.b	w12,w0
	call	_user_serial_transmit_character
	.loc 1 1255 0
	mov.b	w12,[w14+w13]
	.loc 1 1256 0
	inc	w13,w13
	bra	.L184
.L173:
	.loc 1 1260 0
	mov.b	#7,w0
	call	_user_serial_transmit_character
	bra	.L184
.L164:
	.loc 1 1264 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1266 0
	cp0	w13
	.set ___BP___,3
	bra	z,.L172
	.loc 1 1270 0
	dec	w13,w0
	.loc 1 1269 0
	clr	w2
	.loc 1 1273 0
	.set ___BP___,14
	bra	n,.L176
	mov	w14,w0
	.loc 1 1192 0
	add	w14,w13,w13
.L177:
	.loc 1 1274 0
	mul.su	w2,#10,w2
	.loc 1 1275 0
	ze	[w0++],w1
	sub	#48,w1
	add	w1,w2,w2
	.loc 1 1273 0
	sub	w0,w13,[w15]
	.set ___BP___,85
	bra	nz,.L177
.L176:
	.loc 1 1278 0
	mov	[w14+12],w0
	sub	w0,w2,[w15]
	.set ___BP___,29
	bra	gt,.L178
	mov	[w14+14],w1
	sub	w1,w2,[w15]
	.set ___BP___,97
	bra	lt,.L178
	.loc 1 1279 0
	mov	[w14+6],w0
	cp0	w0
	.set ___BP___,50
	bra	z,.L182
	.loc 1 1280 0
	neg	w2,w2
	mov	w2,[w14+10]
	bra	.L172
.L178:
	.loc 1 1285 0
	mov.d	w10,w0
	call	_bp_message_write_line
	.loc 1 1286 0
	bra	.L179
.L186:
	.loc 1 1245 0
	setm	w1
	mov	w1,[w14+10]
	bra	.L172
.L182:
	.loc 1 1279 0
	mov	w2,[w14+10]
.L172:
	.loc 1 1290 0
	mov	[w14+10],w0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE32:
	.size	_getnumber, .-_getnumber
	.section	.const,psv,page
.LC12:
	.asciz	". "
	.section	.text,code
	.align	2
	.global	_cmdhistory	; export
	.type	_cmdhistory,@function
_cmdhistory:
.LFB31:
	.loc 1 1128 0
	.set ___PA___,1
	lnk	#14
.LCFI25:
	mov.d	w8,[w15++]
.LCFI26:
	mov.d	w10,[w15++]
.LCFI27:
	mov.d	w12,[w15++]
.LCFI28:
	.loc 1 1134 0
	mov	_cmdstart,w0
	dec	w0,w8
	and	#127,w8
	.loc 1 1133 0
	mov	#1,w13
	.loc 1 1136 0
	sub	w0,w8,[w15]
	.set ___BP___,4
	bra	z,.L188
	.loc 1 1138 0
	mov	#_cmdbuf,w9
	mov	#127,w11
.L192:
	mov.b	[w9+w8],w0
	cp0.b	w0
	.set ___BP___,50
	bra	nz,.L189
	inc	w8,w12
	and	w12,w11,w12
	mov.b	[w9+w12],w0
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L189
	.loc 1 1141 0
	mov.b	w13,w0
	call	_bp_write_dec_byte
	.loc 1 1142 0
	mov	#.LC12,w0
	call	_bp_write_string
	.loc 1 1144 0
	mov.b	[w9+w12],w0
	cp0.b	w0
	.set ___BP___,9
	bra	z,.L190
	.loc 1 1128 0
	inc2	w8,w10
.L191:
	.loc 1 1145 0
	call	_user_serial_transmit_character
	.loc 1 1144 0
	and	w10,w11,w0
	mov.b	[w9+w0],w0
	inc	w10,w10
	cp0.b	w0
	.set ___BP___,91
	bra	nz,.L191
.L190:
	.loc 1 1149 0
	add	w13,w13,w0
	mov	w12,[w14+w0]
	.loc 1 1150 0
	inc	w13,w13
	.loc 1 1151 0
	sub	w13,#7,[w15]
	.set ___BP___,4
	bra	z,.L188
	.loc 1 1153 0
	mov	#.LC5,w0
	call	_bp_write_line
.L189:
	.loc 1 1155 0
	dec	w8,w8
	and	w8,w11,w8
	.loc 1 1136 0
	mov	_cmdstart,w0
	sub	w8,w0,[w15]
	.set ___BP___,95
	bra	nz,.L192
.L188:
	.loc 1 1158 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1159 0
	mov	#tbloffset(_BPMSG1115_str),w0
	mov	#tblpage(_BPMSG1115_str),w1
	call	_bp_message_write_line
	.loc 1 1161 0
	mov	#1,w3
	mov	w13,w2
	mov	w3,w1
	clr	w0
	call	_getnumber
	.loc 1 1163 0
	inc	w0,w1
	sub	w1,#1,[w15]
	.set ___BP___,8
	bra	leu,.L193
	.loc 1 1170 0
	add	w0,w0,w0
	mov	[w14+w0],w5
	mov	w5,w0
	and	#127,w0
	mov	#_cmdbuf,w1
	mov.b	[w1+w0],w1
	clr	w0
	cp0.b	w1
	.set ___BP___,91
	bra	nz,.L202
	bra	.L195
.L193:
	.loc 1 1165 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1166 0
	mov	#1,w0
	bra	.L196
.L202:
	.loc 1 1173 0
	mov	_cmdend,w6
	clr	w0
	mov	#127,w3
	mov	#_cmdbuf,w2
.L197:
	add	w0,w6,w4
	and	w4,w3,w4
	mov.b	w1,[w2+w4]
	.loc 1 1174 0
	inc	w0,w0
	.loc 1 1128 0
	add	w0,w5,w1
	.loc 1 1170 0
	and	w1,w3,w1
	mov.b	[w2+w1],w1
	cp0.b	w1
	.set ___BP___,91
	bra	nz,.L197
.L195:
	.loc 1 1176 0
	mov	_cmdend,w2
	dec	w2,w2
	mov	#127,w1
	and	w2,w1,w2
	mov	w2,_cmdstart
	.loc 1 1178 0
	inc2	w2,w2
	add	w2,w0,w0
	and	w0,w1,w0
	mov	w0,_cmdend
	.loc 1 1179 0
	dec	w0,w0
	and	w0,w1,w1
	clr.b	w2
	mov	#_cmdbuf,w0
	mov.b	w2,[w0+w1]
	.loc 1 1181 0
	clr	w0
.L196:
	.loc 1 1182 0
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE31:
	.size	_cmdhistory, .-_cmdhistory
	.align	2
	.global	_changemode	; export
	.type	_changemode,@function
_changemode:
.LFB30:
	.loc 1 1070 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI29:
	mov.d	w10,[w15++]
.LCFI30:
	.loc 1 1074 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1075 0
	call	_consumewhitechars
	.loc 1 1076 0
	call	_getint
	.loc 1 1078 0
	cp0	w0
	.set ___BP___,50
	bra	nz,.L204
	clr	w8
	.loc 1 1083 0
	mov	#48,w9
	mov	#_enabled_protocols,w10
.L205:
	.loc 1 1081 0
	inc.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 1082 0
	mov	#.LC12,w0
	call	_bp_write_string
	.loc 1 1083 0
	mul.ss	w8,w9,w0
	add	#40,w0
	add	w0,w10,w0
	call	_bp_write_line
	.loc 1 1080 0
	inc	w8,w8
	sub	w8,#9,[w15]
	.set ___BP___,90
	bra	nz,.L205
	.loc 1 1086 0
	mov	#tbloffset(_BPMSG1111_str),w0
	mov	#tblpage(_BPMSG1111_str),w1
	call	_bp_message_write_line
	.loc 1 1087 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 1090 0
	mov	#1,w3
	mov	#9,w2
	mov	w3,w1
	mov	w3,w0
	call	_getnumber
	dec	w0,w8
	.loc 1 1091 0
	inc	w0,w0
	sub	w0,#1,[w15]
	.set ___BP___,80
	bra	gtu,.L206
	.loc 1 1093 0
	mov	#tbloffset(_BPMSG1112_str),w0
	mov	#tblpage(_BPMSG1112_str),w1
	call	_bp_message_write_line
	bra	.L207
.L206:
	.loc 1 1095 0
	mov	#_bus_pirate_configuration+9,w9
	ze	[w9],w0
	mov	#48,w10
	mul.ss	w0,w10,w0
	add	#34,w0
	mov	#_enabled_protocols,w11
	mov	[w11+w0],w0
	call	w0
	.loc 1 1096 0
	call	_bp_reset_board_state
	.loc 1 1097 0
	mov.b	w8,[w9]
	.loc 1 1098 0
	ze	w8,w0
	mul.ss	w0,w10,w0
	add	w0,#30,w10
	mov	[w11+w10],w0
	call	w0
	.loc 1 1099 0
	mov	#tbloffset(_MSG_CLUTCH_DISENGAGED_str),w0
	mov	#tblpage(_MSG_CLUTCH_DISENGAGED_str),w1
	call	_bp_message_write_line
	.loc 1 1100 0
	cp0	w8
	.set ___BP___,61
	bra	z,.L208
	.loc 1 1101 0
	bset.b	_PORTAbits,#1
	.loc 1 1102 0
	mov	#tbloffset(_MSG_FINISH_SETUP_PROMPT_str),w0
	mov	#tblpage(_MSG_FINISH_SETUP_PROMPT_str),w1
	call	_bp_message_write_line
.L208:
	.loc 1 1105 0
	mov	#tbloffset(_BPMSG1085_str),w0
	mov	#tblpage(_BPMSG1085_str),w1
	call	_bp_message_write_line
	bra	.L207
.L204:
	.loc 1 1109 0
	dec	w0,w8
	.loc 1 1110 0
	sub	w8,#8,[w15]
	.set ___BP___,50
	bra	gt,.L209
	.loc 1 1111 0
	mov	#_bus_pirate_configuration+9,w9
	ze	[w9],w0
	mov	#48,w10
	mul.ss	w0,w10,w0
	add	#34,w0
	mov	#_enabled_protocols,w11
	mov	[w11+w0],w0
	call	w0
	.loc 1 1112 0
	call	_bp_reset_board_state
	.loc 1 1113 0
	mov.b	w8,[w9]
	.loc 1 1114 0
	ze	w8,w0
	mul.ss	w0,w10,w0
	add	w0,#30,w10
	mov	[w11+w10],w0
	call	w0
	.loc 1 1115 0
	cp0	w8
	.set ___BP___,39
	bra	z,.L210
	.loc 1 1116 0
	bset.b	_PORTAbits,#1
.L210:
	.loc 1 1118 0
	mov	#tbloffset(_BPMSG1085_str),w0
	mov	#tblpage(_BPMSG1085_str),w1
	call	_bp_message_write_line
	bra	.L207
.L209:
	.loc 1 1120 0
	mov	#tbloffset(_BPMSG1114_str),w0
	mov	#tblpage(_BPMSG1114_str),w1
	call	_bp_message_write_line
.L207:
	.loc 1 1123 0
	mov	_cmdend,w0
	dec	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1124 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE30:
	.size	_changemode, .-_changemode
	.align	2
	.type	_set_baud_rate,@function
_set_baud_rate:
.LFB39:
	.loc 1 1708 0
	.set ___PA___,1
	mov	w8,[w15++]
.LCFI31:
	.loc 1 1709 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1710 0
	call	_consumewhitechars
	.loc 1 1711 0
	call	_getint
	.loc 1 1713 0
	dec	w0,w1
	sub	w1,#9,[w15]
	.set ___BP___,29
	bra	gtu,.L213
	.loc 1 1714 0
	mov	#_bus_pirate_configuration+7,w1
	dec.b	w0,[w1]
	bra	.L214
.L213:
	.loc 1 1716 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 1717 0
	mov	#tbloffset(_MSG_UART_SET_PORT_SPEED_str),w0
	mov	#tblpage(_MSG_UART_SET_PORT_SPEED_str),w1
	call	_bp_message_write_line
	.loc 1 1718 0
	clr	w3
	mov	#10,w2
	mov	#1,w1
	mov	#9,w0
	call	_getnumber
	mov	#_bus_pirate_configuration+7,w1
	dec.b	w0,[w1]
.L214:
	.loc 1 1721 0
	clr	w8
	.loc 1 1722 0
	mov	#_bus_pirate_configuration+7,w0
	mov.b	#9,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,86
	bra	nz,.L215
	.loc 1 1723 0
	call	_consumewhitechars
	.loc 1 1724 0
	call	_getint
	mov	w0,w8
	.loc 1 1726 0
	cp0	w8
	.set ___BP___,71
	bra	nz,.L215
	.loc 1 1727 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 1728 0
	mov	#tbloffset(_MSG_RAW_BRG_VALUE_INPUT_str),w0
	mov	#tblpage(_MSG_RAW_BRG_VALUE_INPUT_str),w1
	call	_bp_message_write_line
	.loc 1 1729 0
	clr	w3
	mov	#32767,w2
	mov	w3,w1
	mov	#34,w0
	call	_getnumber
	mov	w0,w8
.L215:
	.loc 1 1733 0
	mov	#tbloffset(_BPMSG1134_str),w0
	mov	#tblpage(_BPMSG1134_str),w1
	call	_bp_message_write_line
	.loc 1 1734 0
	mov	#tbloffset(_BPMSG1251_str),w0
	mov	#tblpage(_BPMSG1251_str),w1
	call	_bp_message_write_line
	.loc 1 1737 0
	call	_user_serial_wait_transmission_done
	.loc 1 1738 0
	mov	#_bus_pirate_configuration+7,w0
	mov.b	#9,w1
	subr.b	w1,[w0],[w15]
	.set ___BP___,86
	bra	nz,.L216
	.loc 1 1739 0
	mov	w8,w0
	call	_user_serial_set_baud_rate
.L216:
	.loc 1 1741 0
	call	_user_serial_initialise
	.loc 1 1745 0
	mov.b	#32,w8
.L217:
	call	_user_serial_read_byte
	sub.b	w0,w8,[w15]
	.set ___BP___,86
	bra	nz,.L217
	.loc 1 1749 0
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE39:
	.size	_set_baud_rate, .-_set_baud_rate
	.align	2
	.type	_set_display_mode,@function
_set_display_mode:
.LFB38:
	.loc 1 1693 0
	.set ___PA___,1
	.loc 1 1694 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 1695 0
	call	_consumewhitechars
	.loc 1 1696 0
	call	_getint
	.loc 1 1698 0
	dec	w0,w1
	sub	w1,#3,[w15]
	.set ___BP___,38
	bra	gtu,.L221
	.loc 1 1699 0
	mov	#_bus_pirate_configuration+8,w1
	dec.b	w0,[w1]
	bra	.L222
.L221:
	.loc 1 1701 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 1702 0
	mov	#tbloffset(_BPMSG1127_str),w0
	mov	#tblpage(_BPMSG1127_str),w1
	call	_bp_message_write_line
	.loc 1 1703 0
	clr	w3
	mov	#4,w2
	mov	#1,w1
	mov	w1,w0
	call	_getnumber
	mov	#_bus_pirate_configuration+8,w1
	dec.b	w0,[w1]
.L222:
	.loc 1 1705 0
	mov	#tbloffset(_BPMSG1128_str),w0
	mov	#tblpage(_BPMSG1128_str),w1
	call	_bp_message_write_line
	.loc 1 1706 0
	return	
	.set ___PA___,0
.LFE38:
	.size	_set_display_mode, .-_set_display_mode
	.section	.const,psv,page
.LC13:
	.asciz	"Bus Pirate v3"
.LC14:
	.asciz	"Community Firmware v7.1 - Mod by Dreg protonezero buzzpirat.com "
.LC15:
	.asciz	")"
	.section	.text,code
	.align	2
	.global	_print_version_info	; export
	.type	_print_version_info,@function
_print_version_info:
.LFB33:
	.loc 1 1404 0
	.set ___PA___,1
	mov.d	w8,[w15++]
.LCFI32:
	mov.d	w10,[w15++]
.LCFI33:
	.loc 1 1406 0
	mov	#.LC13,w0
	call	_bp_write_string
	.loc 1 1407 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 1408 0
	mov	#_bus_pirate_configuration+6,w0
	mov.b	[w0],w0
	call	_user_serial_transmit_character
	.loc 1 1409 0
	mov	_bus_pirate_configuration+2,w1
	mov	#1103,w0
	sub	w1,w0,[w15]
	.set ___BP___,86
	bra	nz,.L224
	.loc 1 1411 0
	mov	#tbloffset(_MSG_CHIP_IDENTIFIER_CLONE_str),w0
	mov	#tblpage(_MSG_CHIP_IDENTIFIER_CLONE_str),w1
	call	_bp_message_write_buffer
.L224:
	.loc 1 1413 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1418 0
	mov	#.LC14,w0
	call	_bp_write_string
	.loc 1 1420 0
	mov.b	#91,w0
	call	_user_serial_transmit_character
	mov	#1,w9
	clr	w8
.LBB46:
	.loc 1 1425 0
	mov	#48,w10
	mov	#_enabled_protocols,w11
	bra	.L225
.L227:
.LBE46:
	.loc 1 1420 0
	inc	w8,w8
	inc	w9,w9
.L225:
.LBB47:
	.loc 1 1422 0
	cp0	w8
	.set ___BP___,71
	bra	z,.L226
	.loc 1 1423 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 1425 0
	mul.ss	w8,w10,w0
	add	#40,w0
	add	w0,w11,w0
	call	_bp_write_string
	.loc 1 1421 0
	sub	w9,#8,[w15]
	.set ___BP___,65
	bra	leu,.L227
.LBE47:
	.loc 1 1427 0
	mov.b	#93,w0
	call	_user_serial_transmit_character
	.loc 1 1430 0
	mov	#tbloffset(_BPMSG1126_str),w0
	mov	#tblpage(_BPMSG1126_str),w1
	call	_bp_message_write_buffer
	.loc 1 1431 0
	mov	#-21510,w1
	clr	w0
	call	_bp_read_from_flash
	mov	w0,w8
	.loc 1 1432 0
	lsr	w8,#8,w0
	call	_bp_write_dec_byte
	.loc 1 1433 0
	mov.b	#46,w0
	call	_user_serial_transmit_character
	.loc 1 1434 0
	mov.b	w8,w0
	call	_bp_write_dec_byte
	.loc 1 1436 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 1438 0
	mov	#tbloffset(_BPMSG1117_str),w0
	mov	#tblpage(_BPMSG1117_str),w1
	call	_bp_message_write_buffer
	.loc 1 1439 0
	mov	#_bus_pirate_configuration+2,w8
	mov	[w8],w0
	call	_bp_write_hex_word
	.loc 1 1441 0
	mov	#tbloffset(_BPMSG1210_str),w0
	mov	#tblpage(_BPMSG1210_str),w1
	call	_bp_message_write_buffer
	.loc 1 1442 0
	mov	_bus_pirate_configuration+4,w0
	call	_bp_write_hex_word
	.loc 1 1460 0
	mov	#tbloffset(_MSG_CHIP_REVISION_ID_BEGIN_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_ID_BEGIN_str),w1
	call	_bp_message_write_buffer
	.loc 1 1461 0
	mov	#1103,w0
	subr	w0,[w8],[w15]
	.set ___BP___,72
	bra	nz,.L228
	.loc 1 1463 0
	mov	#tbloffset(_MSG_CHIP_REVISION_ID_END_4_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_ID_END_4_str),w1
	call	_bp_message_write_buffer
	bra	.L229
.L228:
	.loc 1 1465 0
	mov	#tbloffset(_MSG_CHIP_REVISION_ID_END_2_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_ID_END_2_str),w1
	call	_bp_message_write_buffer
.L229:
	.loc 1 1468 0
	mov	_bus_pirate_configuration+4,w0
	mov	#12354,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L232
	.set ___BP___,50
	bra	gtu,.L235
	mov	#12291,w1
	sub	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L230
	bra	.L237
.L235:
	mov	#12355,w1
	sub	w0,w1,[w15]
	.set ___BP___,29
	bra	z,.L233
	mov	#12358,w1
	sub	w0,w1,[w15]
	.set ___BP___,71
	bra	nz,.L230
	bra	.L238
.L237:
	.loc 1 1471 0
	mov	#tbloffset(_MSG_CHIP_REVISION_A3_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_A3_str),w1
	call	_bp_message_write_buffer
	.loc 1 1472 0
	bra	.L236
.L232:
	.loc 1 1475 0
	mov	#tbloffset(_MSG_CHIP_REVISION_B4_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_B4_str),w1
	call	_bp_message_write_buffer
	.loc 1 1476 0
	bra	.L236
.L233:
	.loc 1 1479 0
	mov	#tbloffset(_MSG_CHIP_REVISION_B5_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_B5_str),w1
	call	_bp_message_write_buffer
	.loc 1 1480 0
	bra	.L236
.L238:
	.loc 1 1483 0
	mov	#tbloffset(_MSG_CHIP_REVISION_B8_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_B8_str),w1
	call	_bp_message_write_buffer
	.loc 1 1484 0
	bra	.L236
.L230:
	.loc 1 1487 0
	mov	#tbloffset(_MSG_CHIP_REVISION_UNKNOWN_str),w0
	mov	#tblpage(_MSG_CHIP_REVISION_UNKNOWN_str),w1
	call	_bp_message_write_buffer
.L236:
	.loc 1 1492 0
	mov	#.LC15,w0
	call	_bp_write_line
	.loc 1 1493 0
	mov	#tbloffset(_BPMSG1118_str),w0
	mov	#tblpage(_BPMSG1118_str),w1
	call	_bp_message_write_line
	.loc 1 1494 0
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.L226:
.LBB48:
	.loc 1 1425 0
	mul.ss	w8,w10,w0
	add	#40,w0
	add	w0,w11,w0
	call	_bp_write_string
	bra	.L227
.LBE48:
.LFE33:
	.size	_print_version_info, .-_print_version_info
	.section	.const,psv,page
.LC16:
	.asciz	". <"
	.section	.text,code
	.align	2
	.global	_serviceuser	; export
	.type	_serviceuser,@function
_serviceuser:
.LFB24:
	.loc 1 274 0
	.set ___PA___,0
	lnk	#30
.LCFI34:
	mov.d	w8,[w15++]
.LCFI35:
	mov.d	w10,[w15++]
.LCFI36:
	mov.d	w12,[w15++]
.LCFI37:
	.loc 1 286 0
	clr	w0
	mov	w0,_cmdstart
	.loc 1 287 0
	mov	w0,_cmdend
	.loc 1 288 0
	mov	w0,_menu_state
	.loc 1 289 0
	mov	#_bus_pirate_configuration+9,w1
	mov.b	w0,[w1]
	.loc 1 290 0
	mov	#_mode_configuration+2,w1
	bclr.b	[w1],#7
	.loc 1 299 0
	mov	#_user_macros,w1
	
	repeat	#72-1
	clr.b	[w1++]
		
	.loc 1 300 0
	mov	w0,_user_macro
.LBB49:
	.loc 1 307 0
	mov	#tbloffset(_BPMSG1084_str),w2
	mov	#tblpage(_BPMSG1084_str),w3
	mov	w2,[w14+4]
	mov	w3,[w14+6]
.LBB50:
	.loc 1 616 0
	mov	#tbloffset(_BPMSG1095_str),w10
	mov	#tblpage(_BPMSG1095_str),w11
	.loc 1 903 0
	mov	#tbloffset(_BPMSG1109_str),w0
	mov	#tblpage(_BPMSG1109_str),w1
	mov.d	w0,[w14]
	mov	w10,[w14+8]
	mov	w11,[w14+10]
.L374:
.LBE50:
	.loc 1 303 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w2
	mov	#48,w0
	mul.ss	w2,w0,w2
	mov	#_enabled_protocols+40,w1
	add	w2,w1,w0
	call	_bp_write_string
	.loc 1 305 0
	mov	#_bus_pirate_configuration+10,w0
	mov	[w0],w0
	and	w0,#4,w0
	.set ___BP___,71
	bra	z,.L240
	.loc 1 307 0
	mov	[w14+4],w0
	mov	[w14+6],w1
	call	_bp_message_write_buffer
.L240:
	.loc 1 310 0
	mov	#.LC4,w0
	call	_bp_write_string
.LBB59:
	.loc 1 315 0
	mov	#_user_macros,w9
	.loc 1 316 0
	mov	#_cmdbuf,w13
	.loc 1 328 0
	mov	#_mode_configuration+2,w12
.LBE59:
	.loc 1 311 0
	bra	.L403
.L267:
.LBB61:
	.loc 1 312 0
	mov	_user_macro,w0
	cp0	w0
	.set ___BP___,50
	bra	z,.L380
	.loc 1 313 0
	dec	w0,w0
	mov	w0,_user_macro
	.loc 1 315 0
	mul.su	w0,#24,w2
	mov.b	[w9+w2],w1
	cp0.b	w1
	.set ___BP___,4
	bra	z,.L243
	.loc 1 314 0
	clr	w8
.L244:
	.loc 1 316 0
	mov	_cmdend,w2
	mov.b	w1,[w13+w2]
	.loc 1 317 0
	mul.su	w0,#24,w0
	add	w8,w0,w0
	mov.b	[w9+w0],w0
	call	_user_serial_transmit_character
	.loc 1 319 0
	inc	w8,w8
	.loc 1 318 0
	mov	_cmdend,w0
	inc	w0,w0
	.loc 1 320 0
	and	#127,w0
	mov	w0,_cmdend
	.loc 1 315 0
	mov	_user_macro,w0
	mul.su	w0,#24,w2
	add	w8,w2,w1
	mov.b	[w9+w1],w1
	cp0.b	w1
	.set ___BP___,95
	bra	nz,.L244
.L243:
	.loc 1 322 0
	clr	w0
	mov	w0,_user_macro
	bra	.L380
.L251:
	.loc 1 328 0
	mov.b	[w12],w3
	and.b	w3,#4,w0
	.set ___BP___,86
	bra	z,.L402
	.loc 1 331 0
	mov	#_bus_pirate_configuration+9,w1
	ze	[w1],w0
	mul.ss	w0,w8,w0
	add	w0,#26,w0
	mov	[w10+w0],w0
	call	w0
	.loc 1 330 0
	cp0.b	w0
	.set ___BP___,86
	bra	z,.L402
	.loc 1 332 0
	mov	#_bus_pirate_configuration+9,w2
	ze	[w2],w0
	mul.ss	w0,w8,w0
	add	#40,w0
	add	w0,w10,w0
	call	_bp_write_string
	.loc 1 334 0
	mov	#.LC4,w0
	call	_bp_write_string
	.loc 1 335 0
	mov	_cmdstart,w11
	mov	_cmdend,w0
	sub	w11,w0,[w15]
	.set ___BP___,86
	bra	z,.L402
.LBB60:
	.loc 1 336 0
	sub	w0,w11,[w15]
	.set ___BP___,86
	bra	z,.L402
.L386:
	.loc 1 337 0
	mov.b	[w13+w11],w0
	call	_user_serial_transmit_character
	.loc 1 338 0
	mov	#127,w3
	and	w11,w3,w11
	.loc 1 336 0
	inc	w11,w11
	mov	_cmdend,w0
	sub	w0,w11,[w15]
	.set ___BP___,86
	bra	z,.L402
	bra	.L386
.L380:
.LBE60:
	.loc 1 331 0
	mov	#48,w8
	mov	#_enabled_protocols,w10
.L402:
	.loc 1 327 0
	call	_user_serial_ready_to_read
	cp0.b	w0
	.set ___BP___,95
	bra	z,.L251
	.loc 1 347 0
	call	_user_serial_check_overflow
	cp0.b	w0
	.set ___BP___,50
	bra	z,.L252
	.loc 1 348 0
	call	_user_serial_clear_overflow
	.loc 1 349 0
	bra	.L403
.L252:
	.loc 1 354 0
	call	_user_serial_read_byte
	.loc 1 356 0
	ze	w0,w2
	clr	w3
	mov	#127,w1
	sub	w2,w1,[w15]
	subb	w3,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L254
	
.SS266:	bra	w2
	.align	2
	.set	___PA___,0
.L266:
.SH266:
	bra	.L255
	bra	.L256
	bra	.L257
	bra	.L254
	bra	.L258
	bra	.L259
	bra	.L260
	bra	.L254
	bra	.L261
	bra	.L254
	bra	.L262
	bra	.L254
	bra	.L254
	bra	.L262
	bra	.L263
	bra	.L254
	bra	.L264
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L265
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L254
	bra	.L258
	.set	___PA___,0
.SE266:
.L261:
	.loc 1 359 0
	call	_handle_backspace
	.loc 1 360 0
	bra	.L403
.L258:
	.loc 1 364 0
	call	_handle_delete
	.loc 1 365 0
	bra	.L403
.L265:
	.loc 1 368 0
	call	_handle_escape_key
	.loc 1 369 0
	bra	.L403
.L257:
	.loc 1 372 0
	call	_handle_left_arrow
	.loc 1 373 0
	bra	.L403
.L260:
	.loc 1 376 0
	call	_handle_right_arrow
	.loc 1 377 0
	bra	.L403
.L264:
	.loc 1 380 0
	call	_handle_up_arrow
	.loc 1 381 0
	bra	.L403
.L263:
	.loc 1 384 0
	call	_handle_down_arrow
	.loc 1 385 0
	bra	.L403
.L256:
	.loc 1 388 0
	call	_handle_home_key
	.loc 1 389 0
	bra	.L403
.L259:
	.loc 1 392 0
	call	_handle_end_key
	.loc 1 393 0
	bra	.L403
.L262:
	.loc 1 397 0
	call	_handle_enter_key
	.loc 1 398 0
	bra	.L403
.L255:
	.loc 1 401 0
	mov	#_menu_state+4,w1
	inc.b	[w1],w0
	mov.b	w0,[w1]
	.loc 1 402 0
	sub.b	w0,#20,[w15]
	.set ___BP___,86
	bra	nz,.L403
	.loc 1 403 0
	call	_enter_binary_bitbang_mode
	bra	.L403
.L254:
	.loc 1 413 0
	call	_handle_character
.L403:
.LBE61:
	.loc 1 311 0
	mov	#_menu_state+5,w2
	cp0.b	[w2]
	.set ___BP___,91
	bra	z,.L267
	.loc 1 420 0
	mov	_cmdend,w3
	mov	w3,[w14+18]
	.loc 1 421 0
	mov	_cmdstart,w1
	.loc 1 422 0
	mov	w2,w0
	clr.b	[w0]
	.loc 1 424 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 429 0
	mov	#_bus_pirate_configuration+10,w0
	mov	[w0],w0
	and	w0,#4,w0
	.set ___BP___,71
	bra	z,.L268
	.loc 1 430 0
	call	_bp_basic_enter_interactive_interpreter
	.loc 1 431 0
	mov	#tbloffset(_BPMSG1085_str),w0
	mov	#tblpage(_BPMSG1085_str),w1
	call	_bp_message_write_line
	bra	.L269
.L268:
	.loc 1 421 0
	mov	w1,[w14+26]
	clr.b	w0
	mov.b	w0,[w14+16]
.LBB62:
	.loc 1 909 0
	mov	#tbloffset(_BPMSG1107_str),w12
	mov	#tblpage(_BPMSG1107_str),w13
	.loc 1 892 0
	mov	#tbloffset(_BPMSG1108_str),w2
	mov	#tblpage(_BPMSG1108_str),w3
	mov	w2,[w14+12]
	mov	w3,[w14+14]
	mov	[w14+8],w10
	mov	[w14+10],w11
.L373:
	.loc 1 441 0
	mov	_cmdstart,w0
	mov	#_cmdbuf,w1
	.loc 1 443 0
	mov.b	[w1+w0],w2
	ze	w2,w2
	clr	w3
	mov	#126,w1
	sub	w2,w1,[w15]
	subb	w3,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L270
	
.SS319:	bra	w2
	.align	2
	.set	___PA___,0
.L319:
.SH319:
	bra	.L271
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L271
	bra	.L270
	bra	.L270
	bra	.L271
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L271
	bra	.L272
	bra	.L273
	bra	.L274
	bra	.L275
	bra	.L276
	bra	.L277
	bra	.L270
	bra	.L278
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L271
	bra	.L279
	bra	.L280
	bra	.L281
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L282
	bra	.L270
	bra	.L270
	bra	.L283
	bra	.L284
	bra	.L270
	bra	.L285
	bra	.L286
	bra	.L287
	bra	.L270
	bra	.L288
	bra	.L289
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L290
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L291
	bra	.L270
	bra	.L270
	bra	.L292
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L293
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L294
	bra	.L295
	bra	.L296
	bra	.L297
	bra	.L298
	bra	.L270
	bra	.L299
	bra	.L300
	bra	.L301
	bra	.L302
	bra	.L270
	bra	.L303
	bra	.L304
	bra	.L305
	bra	.L306
	bra	.L270
	bra	.L270
	bra	.L307
	bra	.L308
	bra	.L270
	bra	.L309
	bra	.L310
	bra	.L270
	bra	.L311
	bra	.L312
	bra	.L270
	bra	.L270
	bra	.L313
	bra	.L314
	bra	.L270
	bra	.L270
	bra	.L270
	bra	.L315
	bra	.L316
	bra	.L317
	bra	.L318
	.set	___PA___,0
.SE319:
.L305:
	.loc 1 446 0
	call	_cmdhistory
	cp0	w0
	.set ___BP___,50
	bra	nz,.L271
	.loc 1 447 0
	mov	_cmdstart,w2
	mov	w2,[w14+26]
	.loc 1 448 0
	mov	_cmdend,w3
	mov	w3,[w14+18]
	bra	.L271
.L285:
	.loc 1 454 0
	call	_print_help
	.loc 1 455 0
	bra	.L271
.L306:
	.loc 1 458 0
	call	_print_version_info
	.loc 1 459 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	z,.L271
	.loc 1 460 0
	call	_print_status_info
	bra	.L271
.L308:
	.loc 1 465 0
	call	_changemode
	.loc 1 466 0
	bra	.L271
.L300:
	.loc 1 469 0
	call	_set_baud_rate
	.loc 1 470 0
	bra	.L271
.L309:
	.loc 1 473 0
	call	_set_display_mode
	.loc 1 474 0
	bra	.L271
.L313:
	.loc 1 477 0
	call	_print_pins_information
	.loc 1 478 0
	bra	.L271
.L303:
	.loc 1 481 0
	call	_bp_frequency_counter_setup
	.loc 1 482 0
	bra	.L271
.L304:
	.loc 1 485 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L320
	.loc 1 486 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	bra	.L271
.L320:
	.loc 1 488 0
	call	_bp_pwm_setup
	bra	.L271
.L301:
	.loc 1 493 0
	mov	#_mode_configuration+2,w0
	mov.b	#-4,w1
	and.b	w1,[w0],[w0]
	.loc 1 494 0
	mov	#tbloffset(_BPMSG1086_str),w0
	mov	#tblpage(_BPMSG1086_str),w1
	call	_bp_message_write_line
	.loc 1 495 0
	bra	.L271
.L288:
	.loc 1 498 0
	mov	#_mode_configuration+2,w0
	mov.b	#-4,w1
	and.b	w1,[w0],w1
	bset.b	w1,#0
	mov.b	w1,[w0]
	.loc 1 499 0
	mov	#tbloffset(_BPMSG1087_str),w0
	mov	#tblpage(_BPMSG1087_str),w1
	call	_bp_message_write_line
	.loc 1 500 0
	bra	.L271
.L290:
	.loc 1 515 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#3
	.loc 1 516 0
	mov	#tbloffset(_BPMSG1124_str),w0
	mov	#tblpage(_BPMSG1124_str),w1
	call	_bp_message_write_buffer
	.loc 1 517 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 518 0
	bra	.L271
.L307:
	.loc 1 521 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#3
	.loc 1 522 0
	mov	#tbloffset(_BPMSG1123_str),w0
	mov	#tblpage(_BPMSG1123_str),w1
	call	_bp_message_write_buffer
	.loc 1 523 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 524 0
	bra	.L271
.L310:
	.loc 1 529 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L321
	.loc 1 530 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	bra	.L271
.L321:
.LBB51:
.LBB52:
	.loc 2 78 0
	bclr.b	_PORTBbits+1,#3
	.loc 2 79 0
	bclr.b	_TRISBbits+1,#3
.LBE52:
.LBE51:
	.loc 1 533 0
	mov	#tbloffset(_BPMSG1089_str),w0
	mov	#tblpage(_BPMSG1089_str),w1
	call	_bp_message_write_buffer
	.loc 1 534 0
	mov	#.LC5,w0
	call	_bp_write_line
	bra	.L271
.L291:
	.loc 1 541 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	nz,.L322
	.loc 1 542 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	bra	.L271
.L322:
	.loc 1 544 0
	mov	#_mode_configuration+2,w0
	mov.b	[w0],w0
	and.b	w0,#16,w0
	.set ___BP___,71
	bra	nz,.L323
	.loc 1 545 0
	mov	#tbloffset(_BPMSG1209_str),w0
	mov	#tblpage(_BPMSG1209_str),w1
	call	_bp_message_write_line
.L323:
.LBB53:
.LBB54:
	.loc 2 73 0
	bset.b	_TRISBbits+1,#3
	.loc 2 74 0
	bclr.b	_PORTBbits+1,#3
.LBE54:
.LBE53:
	.loc 1 548 0
	mov	#tbloffset(_BPMSG1091_str),w0
	mov	#tblpage(_BPMSG1091_str),w1
	call	_bp_message_write_buffer
	.loc 1 549 0
	mov	#.LC5,w0
	call	_bp_write_line
.LBB55:
.LBB56:
	.loc 2 117 0
	bset.b	_AD1CON1bits+1,#7
.LBE56:
.LBE55:
	.loc 1 552 0
	mov	#11,w0
	call	_bp_read_adc
	mov	#79,w1
	sub	w0,w1,[w15]
	.set ___BP___,71
	bra	gtu,.L324
	.loc 1 554 0
	mov	#tbloffset(_MSG_NO_VOLTAGE_ON_PULLUP_PIN_str),w0
	mov	#tblpage(_MSG_NO_VOLTAGE_ON_PULLUP_PIN_str),w1
	call	_bp_message_write_line
.L324:
.LBB57:
.LBB58:
	.loc 2 119 0
	bclr.b	_AD1CON1bits+1,#7
	bra	.L271
.L284:
.LBE58:
.LBE57:
	.loc 1 567 0
	clr.b	w0
	call	_convert_value
	.loc 1 568 0
	bra	.L271
.L316:
	.loc 1 571 0
	mov.b	#1,w0
	call	_convert_value
	.loc 1 572 0
	bra	.L271
.L318:
	.loc 1 575 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L325
	.loc 1 576 0
	mov.b	#1,w1
	mov.b	w1,w0
	call	_perform_selftest
	bra	.L271
.L325:
	.loc 1 578 0
	mov	#tbloffset(_BPMSG1092_str),w0
	mov	#tblpage(_BPMSG1092_str),w1
	call	_bp_message_write_line
	bra	.L271
.L274:
	.loc 1 588 0
	mov	#tbloffset(_BPMSG1093_str),w0
	mov	#tblpage(_BPMSG1093_str),w1
	call	_bp_message_write_line
	.loc 1 589 0
	call	_user_serial_wait_transmission_done
	.loc 1 590 0
; 590 "../proc_menu.c" 1
	RESET
	.loc 1 592 0
	bra	.L271
.L275:
	.loc 1 595 0
	call	_agree
	cp0.b	w0
	.set ___BP___,71
	bra	z,.L271
	.loc 1 596 0
	mov.b	#1,w1
	mov	#_skip_pgc_pgd_check,w0
	mov.b	w1,[w0]
	.loc 1 597 0
	mov	#tbloffset(_BPMSG1094_str),w0
	mov	#tblpage(_BPMSG1094_str),w1
	call	_bp_message_write_line
	.loc 1 598 0
	mov	#100,w0
	call	_bp_delay_ms
	.loc 1 599 0
	call	_bp_reset_board_state
	.loc 1 600 0
	call	_user_serial_wait_transmission_done
	.loc 1 601 0
; 601 "../proc_menu.c" 1
	RESET
	bra	.L271
.L299:
	.loc 1 606 0
	call	_bp_aux_pin_set_low
	.loc 1 607 0
	bra	.L271
.L287:
	.loc 1 610 0
	call	_bp_aux_pin_set_high
	.loc 1 611 0
	bra	.L271
.L286:
	.loc 1 614 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 615 0
	cp0	w8
	.set ___BP___,9
	bra	z,.L271
	.loc 1 618 0
	mov	#.LC5,w9
.L383:
	.loc 1 616 0
	mov.d	w10,w0
	call	_bp_message_write_buffer
	.loc 1 617 0
	call	_bp_aux_pin_read
	ze	w0,w0
	call	_echo_state
	.loc 1 618 0
	mov	w9,w0
	call	_bp_write_line
	.loc 1 615 0
	dec	w8,w8
	.set ___BP___,91
	bra	nz,.L383
	bra	.L271
.L293:
	.loc 1 623 0
	call	_switch_psu_on
	.loc 1 624 0
	bra	.L271
.L314:
	.loc 1 627 0
	call	_switch_psu_off
	.loc 1 628 0
	bra	.L271
.L302:
	.loc 1 631 0
	mov	#tbloffset(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w0
	mov	#tblpage(_MSG_ADC_VOLTAGE_PROBE_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 632 0
	call	_bp_adc_probe
	.loc 1 633 0
	mov	#tbloffset(_MSG_VOLTAGE_UNIT_str),w0
	mov	#tblpage(_MSG_VOLTAGE_UNIT_str),w1
	call	_bp_message_write_buffer
	.loc 1 634 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 635 0
	bra	.L271
.L289:
	.loc 1 638 0
	call	_bp_adc_continuous_probe
	.loc 1 639 0
	bra	.L271
.L277:
	.loc 1 642 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 643 0
	mov	#tbloffset(_BPMSG1099_str),w0
	mov	#tblpage(_BPMSG1099_str),w1
	call	_bp_message_write_buffer
	.loc 1 644 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 645 0
	mov	#tbloffset(_BPMSG1100_str),w0
	mov	#tblpage(_BPMSG1100_str),w1
	call	_bp_message_write_line
	.loc 1 646 0
	mov	w8,w0
	call	_bp_delay_us
	.loc 1 647 0
	bra	.L271
.L276:
	.loc 1 650 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 651 0
	mov	#tbloffset(_BPMSG1099_str),w0
	mov	#tblpage(_BPMSG1099_str),w1
	call	_bp_message_write_buffer
	.loc 1 652 0
	mov	w8,w0
	call	_bp_write_dec_word
	.loc 1 653 0
	mov	#tbloffset(_BPMSG1212_str),w0
	mov	#tblpage(_BPMSG1212_str),w1
	call	_bp_message_write_line
	.loc 1 654 0
	mov	w8,w0
	call	_bp_delay_ms
	.loc 1 655 0
	bra	.L271
.L312:
	.loc 1 659 0
	mov	#_bus_pirate_configuration+10,w0
	bset	[w0],#2
	.loc 1 660 0
	bra	.L271
.L292:
	.loc 1 664 0
	mov	#_bus_pirate_configuration+9,w0
	cp0.b	[w0]
	.set ___BP___,50
	bra	nz,.L327
	.loc 1 665 0
	mov	#tbloffset(_BPMSG1088_str),w0
	mov	#tblpage(_BPMSG1088_str),w1
	call	_bp_message_write_line
	bra	.L271
.L327:
	.loc 1 667 0
	call	_bp_servo_setup
	bra	.L271
.L283:
	.loc 1 672 0
	mov	#_mode_configuration+2,w1
	bset.b	[w1],#7
	.loc 1 675 0
	inc	w0,w8
	and	#127,w8
	mov	#_cmdbuf,w1
	mov.b	[w1+w8],w2
	cp0.b	w2
	.set ___BP___,9
	bra	z,.L328
	mov.b	#1,w6
	.loc 1 673 0
	mov	#1,w1
	.loc 1 676 0
	mov.b	#62,w5
	.loc 1 677 0
	clr.b	w7
	.loc 1 675 0
	mov	#127,w4
	mov	#_cmdbuf,w3
.L330:
	.loc 1 676 0
	sub.b	w2,w5,[w15]
	.set ___BP___,72
	bra	nz,.L329
	.loc 1 677 0
	mov.b	w7,w6
.L329:
	.loc 1 679 0
	inc	w1,w1
	.loc 1 675 0
	add	w1,w0,w2
	and	w2,w4,w2
	mov.b	[w3+w2],w2
	cp0.b	w2
	.set ___BP___,91
	bra	nz,.L330
	mov	#_mode_configuration+2,w0
	sl	w6,#7,w6
	mov.b	[w0],w2
	bclr.b	w2,#7
	ior.b	w2,w6,[w0]
	.loc 1 681 0
	sub	w1,#26,[w15]
	.set ___BP___,43
	bra	le,.L328
	.loc 1 682 0
	bset.b	[w0],#7
.L328:
	.loc 1 684 0
	mov	#_mode_configuration+2,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	lt,.L271
	.loc 1 685 0
	mov	w8,_cmdstart
	.loc 1 686 0
	call	_getint
	mov	w0,w8
	.loc 1 687 0
	mov	_cmdstart,w0
	mov	w0,w1
	and	#127,w1
	mov	#_cmdbuf,w2
	mov.b	[w2+w1],w2
	mov.b	#61,w1
	sub.b	w2,w1,[w15]
	.set ___BP___,72
	bra	nz,.L331
	.loc 1 689 0
	dec	w8,w1
	sub	w1,#2,[w15]
	.set ___BP___,50
	bra	gtu,.L332
	.loc 1 690 0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 691 0
	dec	w8,w2
	.loc 1 274 0
	mul.su	w2,#24,w2
	mov	#_user_macros-1,w0
	add	w2,w0,w1
	mov	w1,w2
	.loc 1 692 0
	clr	w0
	.loc 1 693 0
	clr.b	w3
.L333:
	mov.b	w3,[++w2]
	.loc 1 692 0
	inc	w0,w0
	sub	w0,#24,[w15]
	.set ___BP___,96
	bra	nz,.L333
	mov	_cmdstart,w0
	.loc 1 696 0
	mov	#_cmdbuf,w5
	mov.b	#62,w4
	.loc 1 699 0
	mov	#127,w3
	bra	.L334
.L335:
	.loc 1 697 0
	mov.b	w2,[++w1]
	.loc 1 699 0
	inc	w0,w0
	and	w0,w3,w0
.L334:
	.loc 1 696 0
	mov.b	[w5+w0],w2
	sub.b	w2,w4,[w15]
	.set ___BP___,96
	bra	nz,.L335
	mov	w0,_cmdstart
	bra	.L271
.L332:
	.loc 1 702 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#7
	bra	.L271
.L331:
	.loc 1 705 0
	cp0	w8
	.set ___BP___,50
	bra	nz,.L336
	mov	#_user_macros,w0
	mov	w0,[w14+24]
	mov	#1,w1
	.loc 1 708 0
	mov	#.LC16,w8
	.loc 1 710 0
	mov	#.LC4,w9
	mov	w1,w2
	mov	w2,[w14+28]
	mov	w12,[w14+20]
	mov	w13,[w14+22]
	mov.d	w10,w12
	mov	#_user_macros,w10
.L337:
	.loc 1 707 0
	mov.b	[w14+28],w0
	call	_bp_write_dec_byte
	.loc 1 708 0
	mov	w8,w0
	call	_bp_write_string
	.loc 1 709 0
	mov	w10,w0
	call	_bp_write_string
	.loc 1 710 0
	mov	w9,w0
	call	_bp_write_line
	mov	[w14+28],w1
	inc	w1,w1
	mov	w1,[w14+28]
	add	w10,#24,w10
	.loc 1 706 0
	sub	w1,#4,[w15]
	.set ___BP___,66
	bra	nz,.L337
	mov.d	w12,w10
	mov	[w14+20],w12
	mov	[w14+22],w13
	bra	.L271
.L336:
	.loc 1 712 0
	dec	w8,w0
	sub	w0,#2,[w15]
	.set ___BP___,71
	bra	gtu,.L338
	.loc 1 713 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 714 0
	mov	w8,_user_macro
	bra	.L271
.L338:
	.loc 1 716 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#7
	bra	.L271
.L278:
	.loc 1 724 0
	inc	w0,w0
	mov	#127,w8
	and	w0,w8,w0
	mov	w0,_cmdstart
	.loc 1 725 0
	call	_getint
	mov	w0,w9
	.loc 1 726 0
	call	_consumewhitechars
	.loc 1 727 0
	mov	_cmdstart,w0
	and	w0,w8,w8
	mov	#_cmdbuf,w0
	mov.b	[w0+w8],w1
	mov.b	#41,w0
	sub.b	w1,w0,[w15]
	.set ___BP___,86
	bra	nz,.L339
	.loc 1 728 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#28,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w1
	mov	w9,w0
	call	w1
	.loc 1 729 0
	mov	#.LC5,w0
	call	_bp_write_line
	bra	.L271
.L339:
	.loc 1 731 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#7
	bra	.L271
.L273:
	.loc 1 736 0
	mov	#_mode_configuration+2,w1
	bset.b	[w1],#7
	.loc 1 739 0
	inc	w0,w1
	and	#127,w1
	mov	#_cmdbuf,w2
	mov.b	[w2+w1],w1
	cp0.b	w1
	.set ___BP___,9
	bra	z,.L340
	inc2	w0,w0
	mov.b	#1,w5
	.loc 1 740 0
	mov.b	#34,w4
	.loc 1 741 0
	clr.b	w6
	.loc 1 739 0
	mov	#127,w3
.L342:
	.loc 1 740 0
	sub.b	w1,w4,[w15]
	.set ___BP___,72
	bra	nz,.L341
	.loc 1 741 0
	mov.b	w6,w5
.L341:
	.loc 1 739 0
	and	w0,w3,w1
	mov.b	[w2+w1],w1
	inc	w0,w0
	cp0.b	w1
	.set ___BP___,91
	bra	nz,.L342
	mov	#_mode_configuration+2,w0
	sl	w5,#7,w5
	mov.b	[w0],w1
	bclr.b	w1,#7
	ior.b	w1,w5,[w0]
.L340:
	.loc 1 746 0
	mov	#_mode_configuration+2,w0
	cp0.b	[w0]
	.set ___BP___,71
	bra	lt,.L271
	.loc 1 747 0
	mov	#tbloffset(_BPMSG1101_str),w0
	mov	#tblpage(_BPMSG1101_str),w1
	call	_bp_message_write_buffer
	.loc 1 748 0
	mov.b	#34,w0
	call	_user_serial_transmit_character
	.loc 1 749 0
	mov	_cmdstart,w1
	inc	w1,w1
	and	#127,w1
	mov	#_cmdbuf,w0
	mov.b	[w0+w1],w0
	mov.b	#34,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,9
	bra	z,.L343
	.loc 1 752 0
	mov	#_cmdbuf,w8
	.loc 1 753 0
	mov	#_mode_configuration+2,w9
.L382:
	.loc 1 750 0
	mov	w1,_cmdstart
	.loc 1 751 0
	call	_user_serial_transmit_character
	.loc 1 752 0
	mov	_cmdstart,w0
	mov.b	[w8+w0],w0
	ze	w0,w0
	.loc 1 753 0
	mov.b	[w9],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L344
	.loc 1 754 0
	mov	#_mode_configuration+1,w3
	mov.b	[w3],w1
	call	_bp_reverse_integer
.L344:
	.loc 1 756 0
	mov	#_bus_pirate_configuration+9,w1
	ze	[w1],w2
	mov	#48,w1
	mul.ss	w2,w1,w2
	add	w2,#8,w2
	mov	#_enabled_protocols,w3
	mov	[w3+w2],w1
	call	w1
	.loc 1 749 0
	mov	_cmdstart,w1
	inc	w1,w1
	and	#127,w1
	mov.b	[w8+w1],w0
	mov.b	#34,w2
	sub.b	w0,w2,[w15]
	.set ___BP___,91
	bra	nz,.L382
.L343:
	.loc 1 758 0
	mov	w1,_cmdstart
	.loc 1 759 0
	mov.b	#34,w0
	call	_user_serial_transmit_character
	.loc 1 760 0
	mov	#.LC5,w0
	call	_bp_write_line
	bra	.L271
.L294:
	.loc 1 765 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	mov	#_enabled_protocols,w2
	mov	[w2+w0],w0
	call	w0
	.loc 1 766 0
	bra	.L271
.L315:
	.loc 1 769 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	inc2	w0,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 770 0
	bra	.L271
.L296:
	.loc 1 773 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#4,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 774 0
	bra	.L271
.L317:
	.loc 1 777 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#6,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 778 0
	bra	.L271
.L282:
	.loc 1 790 0
	mov	#tbloffset(_BPMSG1101_str),w0
	mov	#tblpage(_BPMSG1101_str),w1
	call	_bp_message_write_buffer
	.loc 1 791 0
	call	_getint
	mov	w0,[w14+24]
	.loc 1 792 0
	mov	_cmdstart,w0
	dec	w0,w0
	.loc 1 793 0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 794 0
	call	_getrepeat
	inc	w0,w0
	mov	w0,[w14+20]
	.loc 1 795 0
	call	_getnumbits
	.loc 1 796 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L379
	.loc 1 797 0
	mov	#_mode_configuration+1,w1
	mov.b	w0,[w1]
	.loc 1 798 0
	mov.b	#1,w1
	sub	w0,#8,[w15]
	.set ___BP___,50
	bra	gt,.L347
	clr.b	w1
.L347:
	mov	#_mode_configuration+2,w0
	and.b	w1,#1,w1
	sl	w1,#5,w1
	mov.b	[w0],w2
	bclr.b	w2,#5
	ior.b	w2,w1,[w0]
	bra	.L379
.L355:
	.loc 1 801 0
	mov	[w14+24],w0
	call	_bp_write_formatted_integer
	.loc 1 802 0
	mov.b	#32,w2
	mov	#_mode_configuration+2,w1
	and.b	w2,[w1],w0
	.set ___BP___,50
	bra	nz,.L349
	mov.b	#8,w0
	mov	#_mode_configuration+1,w3
	subr.b	w0,[w3],[w15]
	.set ___BP___,72
	bra	nz,.L350
	bra	.L351
.L349:
	.loc 1 804 0
	mov.b	#16,w2
	mov	#_mode_configuration+1,w1
	subr.b	w2,[w1],[w15]
	.set ___BP___,28
	bra	z,.L351
.L350:
	.loc 1 806 0
	mov.b	#59,w0
	call	_user_serial_transmit_character
	.loc 1 807 0
	mov	#_mode_configuration+1,w3
	mov.b	[w3],w0
	call	_bp_write_dec_byte
.L351:
	.loc 1 809 0
	mov	#_mode_configuration+2,w1
	mov.b	[w1],w1
	and.b	w1,#8,w0
	.set ___BP___,71
	bra	z,.L352
	.loc 1 810 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w1
	mov	[w14+24],w0
	call	_bp_reverse_integer
	mov	w0,[w14+24]
.L352:
	.loc 1 813 0
	mov	#_bus_pirate_configuration+9,w3
	ze	[w3],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#8,w0
	.loc 1 812 0
	mov	#_enabled_protocols,w2
	mov	[w2+w0],w1
	mov	[w14+24],w0
	call	w1
	mov	w0,[w14+20]
	.loc 1 814 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 815 0
	mov.b	#64,w1
	mov	#_mode_configuration+2,w3
	and.b	w1,[w3],w0
	.set ___BP___,71
	bra	z,.L404
	.loc 1 816 0
	mov.d	w8,w0
	call	_bp_message_write_buffer
	.loc 1 817 0
	mov	#_mode_configuration+2,w2
	mov.b	[w2],w2
	and.b	w2,#8,w0
	.set ___BP___,71
	bra	z,.L354
	.loc 1 818 0
	mov	#_mode_configuration+1,w3
	mov.b	[w3],w1
	mov	[w14+20],w0
	call	_bp_reverse_integer
	mov	w0,[w14+20]
.L354:
	.loc 1 821 0
	mov	[w14+20],w0
	call	_bp_write_formatted_integer
	.loc 1 822 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	bra	.L404
.L379:
	.loc 1 816 0
	mov	#tbloffset(_MSG_READ_HEADER_str),w8
	mov	#tblpage(_MSG_READ_HEADER_str),w9
	mov	[w14+20],w0
	mov	w0,[w14+28]
.L404:
	.loc 1 800 0
	mov	[w14+28],w1
	dec	w1,w1
	mov	w1,[w14+28]
	.set ___BP___,91
	bra	nz,.L355
	.loc 1 825 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 826 0
	bra	.L271
.L311:
	.loc 1 829 0
	mov	#tbloffset(_MSG_READ_HEADER_str),w0
	mov	#tblpage(_MSG_READ_HEADER_str),w1
	call	_bp_message_write_buffer
	.loc 1 830 0
	call	_change_read_display
	mov.b	w0,[w14+24]
	.loc 1 831 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 832 0
	call	_getnumbits
	.loc 1 833 0
	cp0	w0
	.set ___BP___,50
	bra	z,.L356
	.loc 1 834 0
	mov	#_mode_configuration+1,w1
	mov.b	w0,[w1]
	.loc 1 835 0
	mov.b	#1,w1
	sub	w0,#8,[w15]
	.set ___BP___,50
	bra	gt,.L357
	clr.b	w1
.L357:
	mov	#_mode_configuration+2,w0
	and.b	w1,#1,w1
	sl	w1,#5,w1
	mov.b	[w0],w2
	bclr.b	w2,#5
	ior.b	w2,w1,[w0]
.L356:
	.loc 1 837 0
	mov.b	[w14+24],w2
	cp0.b	w2
	.set ___BP___,50
	bra	z,.L358
	.loc 1 838 0
	mov	#_bus_pirate_configuration+8,w0
	mov.b	[w0],w3
	mov.b	w3,[w14+16]
	.loc 1 839 0
	dec.b	w2,[w0]
.L358:
	.loc 1 841 0
	cp0	w8
	.set ___BP___,9
	bra	z,.L359
	.loc 1 844 0
	mov	#_mode_configuration+2,w9
.L385:
	.loc 1 843 0
	mov	#_bus_pirate_configuration+9,w1
	ze	[w1],w0
	mov	#48,w2
	mul.ss	w0,w2,w0
	add	w0,#10,w0
	.loc 1 842 0
	mov	#_enabled_protocols,w3
	mov	[w3+w0],w0
	call	w0
	.loc 1 844 0
	mov.b	[w9],w2
	and.b	w2,#8,w1
	.set ___BP___,71
	bra	z,.L360
	.loc 1 845 0
	mov	#_mode_configuration+1,w3
	mov.b	[w3],w1
	call	_bp_reverse_integer
.L360:
	.loc 1 847 0
	call	_bp_write_formatted_integer
	.loc 1 848 0
	mov.b	#32,w1
	and.b	w1,[w9],w0
	.set ___BP___,50
	bra	nz,.L361
	mov.b	#8,w3
	mov	#_mode_configuration+1,w2
	subr.b	w3,[w2],[w15]
	.set ___BP___,72
	bra	nz,.L362
	bra	.L363
.L361:
	.loc 1 850 0
	mov.b	#16,w1
	mov	#_mode_configuration+1,w0
	subr.b	w1,[w0],[w15]
	.set ___BP___,28
	bra	z,.L363
.L362:
	.loc 1 852 0
	mov.b	#59,w0
	call	_user_serial_transmit_character
	.loc 1 853 0
	mov	#_mode_configuration+1,w2
	mov.b	[w2],w0
	call	_bp_write_dec_byte
.L363:
	.loc 1 855 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 841 0
	dec	w8,w8
	.set ___BP___,91
	bra	nz,.L385
.L359:
	.loc 1 857 0
	mov.b	[w14+24],w3
	cp0.b	w3
	.set ___BP___,50
	bra	z,.L365
	.loc 1 858 0
	mov	#_bus_pirate_configuration+8,w0
	mov.b	[w14+16],w1
	mov.b	w1,[w0]
.L365:
	.loc 1 861 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 862 0
	bra	.L271
.L281:
	.loc 1 865 0
	mov	#tbloffset(_BPMSG1103_str),w0
	mov	#tblpage(_BPMSG1103_str),w1
	call	_bp_message_write_line
	.loc 1 866 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#12,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 867 0
	bra	.L271
.L295:
	.loc 1 870 0
	mov	#tbloffset(_BPMSG1104_str),w0
	mov	#tblpage(_BPMSG1104_str),w1
	call	_bp_message_write_line
	.loc 1 871 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#14,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 872 0
	bra	.L271
.L279:
	.loc 1 875 0
	mov	#tbloffset(_BPMSG1105_str),w0
	mov	#tblpage(_BPMSG1105_str),w1
	call	_bp_message_write_line
	.loc 1 876 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#16,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 877 0
	bra	.L271
.L298:
	.loc 1 880 0
	mov	#tbloffset(_BPMSG1106_str),w0
	mov	#tblpage(_BPMSG1106_str),w1
	call	_bp_message_write_line
	.loc 1 881 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#18,w0
	mov	#_enabled_protocols,w1
	mov	[w1+w0],w0
	call	w0
	.loc 1 882 0
	bra	.L271
.L280:
	.loc 1 885 0
	mov	#tbloffset(_BPMSG1098_str),w0
	mov	#tblpage(_BPMSG1098_str),w1
	call	_bp_message_write_buffer
	.loc 1 887 0
	mov	#_bus_pirate_configuration+9,w0
	ze	[w0],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#20,w0
	mov	#_enabled_protocols,w1
	.loc 1 886 0
	mov	[w1+w0],w0
	call	w0
	call	_echo_state
	.loc 1 888 0
	bra	.L271
.L297:
	.loc 1 891 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 892 0
	mov	[w14+12],w0
	mov	[w14+14],w1
	call	_bp_message_write_buffer
	.loc 1 893 0
	mov	w8,w0
	call	_bp_write_formatted_integer
	.loc 1 895 0
	cp0	w8
	.set ___BP___,9
	bra	z,.L366
	.loc 1 896 0
	mov	#_bus_pirate_configuration+9,w9
.L384:
	ze	[w9],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#22,w0
	mov	#_enabled_protocols,w2
	mov	[w2+w0],w0
	call	w0
	.loc 1 895 0
	dec	w8,w8
	.set ___BP___,91
	bra	nz,.L384
.L366:
	.loc 1 898 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 899 0
	bra	.L271
.L272:
	.loc 1 902 0
	call	_getrepeat
	mov	w0,w8
	.loc 1 903 0
	mov.d	[w14],w0
	call	_bp_message_write_buffer
	.loc 1 904 0
	cp0	w8
	.set ___BP___,9
	bra	z,.L368
	.loc 1 906 0
	mov	#_bus_pirate_configuration+9,w9
.L381:
	ze	[w9],w1
	mov	#48,w0
	mul.ss	w1,w0,w0
	add	w0,#24,w0
	mov	#_enabled_protocols,w3
	mov	[w3+w0],w0
	call	w0
	.loc 1 905 0
	ze	w0,w0
	call	_echo_state
	.loc 1 907 0
	mov.b	#32,w0
	call	_user_serial_transmit_character
	.loc 1 904 0
	dec	w8,w8
	.set ___BP___,91
	bra	nz,.L381
.L368:
	.loc 1 909 0
	mov.d	w12,w0
	call	_bp_message_write_line
	.loc 1 910 0
	bra	.L271
.L270:
	.loc 1 920 0
	mov	#_mode_configuration+2,w0
	bset.b	[w0],#7
.L271:
	.loc 1 924 0
	mov	_cmdstart,w0
	inc	w0,w0
	and	#127,w0
	mov	w0,_cmdstart
	.loc 1 926 0
	clr.b	w0
	mov	#_mode_configuration+2,w1
	cp0.b	[w1]
	.set ___BP___,71
	bra	ge,.L370
	.loc 1 927 0
	mov	#tbloffset(_BPMSG1110_str),w0
	mov	#tblpage(_BPMSG1110_str),w1
	call	_bp_message_write_buffer
	.loc 1 928 0
	mov	_cmdstart,w0
	mov	[w14+26],w1
	sub	w1,w0,[w15]
	.set ___BP___,50
	bra	geu,.L371
	.loc 1 929 0
	sub.b	w0,w1,w0
	call	_bp_write_dec_byte
	bra	.L372
.L371:
	.loc 1 931 0
	mov.b	#-128,w1
	add.b	w0,w1,w0
	mov.b	[w14+26],w2
	sub.b	w0,w2,w0
	call	_bp_write_dec_byte
.L372:
	.loc 1 933 0
	mov	#_mode_configuration+2,w0
	bclr.b	[w0],#7
	.loc 1 935 0
	mov	#.LC5,w0
	call	_bp_write_line
	.loc 1 934 0
	mov.b	#1,w0
.L370:
	.loc 1 938 0
	mov	_cmdend,w1
	mov	_cmdstart,w2
	sub	w2,w1,[w15]
	.set ___BP___,28
	bra	z,.L269
.LBE62:
	.loc 1 440 0
	cp0.b	w0
	.set ___BP___,100
	bra	z,.L373
.L269:
	.loc 1 943 0
	mov	[w14+18],w3
	mov	w3,_cmdstart
	.loc 1 944 0
	mov	w3,_cmdend
	.loc 1 945 0
	mov	#_menu_state+5,w0
	clr.b	[w0]
.LBE49:
	.loc 1 946 0
	bra	.L374
.LFE24:
	.size	_serviceuser, .-_serviceuser
	.global	_cmdbuf	; export
	.section	.bss,bss
	.type	_cmdbuf,@object
	.size	_cmdbuf, 128
_cmdbuf:
	.skip	128
	.type	_cmdend,@object
	.size	_cmdend, 2
	.global	_cmdend
	.align	2
_cmdend:	.space	2
	.type	_cmdstart,@object
	.size	_cmdstart, 2
	.global	_cmdstart
	.align	2
_cmdstart:	.space	2
	.align	2
	.type	_menu_state,@object
	.size	_menu_state, 6
_menu_state:
	.skip	6
	.type	_user_macros,@object
	.size	_user_macros, 72
_user_macros:
	.skip	72
	.align	2
	.type	_user_macro,@object
	.size	_user_macro, 2
_user_macro:
	.skip	2
	.section	*_0000000004965AA0_at_address_00000000000027FA,address(10234),persist
	.type	_skip_pgc_pgd_check,@object
	.size	_skip_pgc_pgd_check, 1
_skip_pgc_pgd_check:
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI0-.LFB48
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI2-.LFB49
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI4-.LFB50
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI6-.LFB42
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI8-.LFB51
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI9-.LFB52
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI10-.LFB55
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -6
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
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
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI14-.LFB35
	.byte	0x13
	.sleb128 -4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI15-.LFB25
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI17-.LFB26
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI18-.LFB27
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI19-.LFB41
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x13
	.sleb128 -5
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI21-.LFB32
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI24-.LCFI21
	.byte	0x8c
	.uleb128 0xf
	.byte	0x8a
	.uleb128 0xd
	.byte	0x88
	.uleb128 0xb
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI25-.LFB31
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI28-.LCFI25
	.byte	0x8c
	.uleb128 0xe
	.byte	0x8a
	.uleb128 0xc
	.byte	0x88
	.uleb128 0xa
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI29-.LFB30
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI31-.LFB39
	.byte	0x13
	.sleb128 -3
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI32-.LFB33
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x13
	.sleb128 -6
	.byte	0x8a
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x2
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI34-.LFB24
	.byte	0x12
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI37-.LCFI34
	.byte	0x8c
	.uleb128 0x16
	.byte	0x8a
	.uleb128 0x14
	.byte	0x88
	.uleb128 0x12
	.align	4
.LEFDE66:
	.section	.text,code
.Letext0:
	.file 3 "c:\\program files\\microchip\\xc16\\v2.10\\bin\\bin\\../..\\include/bits/alltypes.h"
	.file 4 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC24F-GA-GB_DFP/1.9.336/xc16/bin/..\\support\\PIC24F\\h/p24FJ64GA002.h"
	.file 5 "../base.h"
	.file 6 "../core.h"
	.file 7 "../proc_menu.h"
	.section	.debug_info,info
	.4byte	0x1a5e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v2.10) (B) Build date: Mar 27 2023"
	.byte	0x1
	.asciz	"../proc_menu.c"
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
	.uleb128 0x3
	.asciz	"size_t"
	.byte	0x3
	.byte	0xdd
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
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
	.byte	0x3
	.byte	0xbb
	.4byte	0x12e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0xc1
	.4byte	0xdc
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
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
	.byte	0x4
	.2byte	0x6d7
	.4byte	0x210
	.uleb128 0x5
	.asciz	"TRISA0"
	.byte	0x4
	.2byte	0x6d8
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x190
	.uleb128 0x4
	.asciz	"tagPORTABITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x6e2
	.4byte	0x293
	.uleb128 0x5
	.asciz	"RA0"
	.byte	0x4
	.2byte	0x6e3
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x222
	.uleb128 0x4
	.asciz	"tagTRISBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x703
	.4byte	0x412
	.uleb128 0x5
	.asciz	"TRISB0"
	.byte	0x4
	.2byte	0x704
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x2a5
	.uleb128 0x4
	.asciz	"tagPORTBBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x719
	.4byte	0x561
	.uleb128 0x5
	.asciz	"RB0"
	.byte	0x4
	.2byte	0x71a
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x424
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0x78d
	.4byte	0x604
	.uleb128 0x5
	.asciz	"DONE"
	.byte	0x4
	.2byte	0x78e
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x672
	.uleb128 0x5
	.asciz	"SSRC0"
	.byte	0x4
	.2byte	0x79b
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x686
	.uleb128 0x9
	.4byte	0x573
	.uleb128 0x9
	.4byte	0x604
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagAD1CON1BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x78b
	.4byte	0x6a7
	.uleb128 0xa
	.4byte	0x672
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"AD1CON1BITS"
	.byte	0x4
	.2byte	0x7a2
	.4byte	0x686
	.uleb128 0x4
	.asciz	"tagAD1PCFGBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x7fd
	.4byte	0x7b4
	.uleb128 0x5
	.asciz	"PCFG0"
	.byte	0x4
	.2byte	0x7fe
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x13f
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
	.4byte	0x6bb
	.uleb128 0xb
	.byte	0x3
	.byte	0x5
	.byte	0x38
	.4byte	0x8ad
	.uleb128 0xc
	.asciz	"speed"
	.byte	0x5
	.byte	0x39
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"numbits"
	.byte	0x5
	.byte	0x3a
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.asciz	"alternate_aux"
	.byte	0x5
	.byte	0x3f
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x7c8
	.uleb128 0xb
	.byte	0x30
	.byte	0x6
	.byte	0x1f
	.4byte	0xa83
	.uleb128 0xc
	.asciz	"start"
	.byte	0x6
	.byte	0x24
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"start_with_read"
	.byte	0x6
	.byte	0x29
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"stop"
	.byte	0x6
	.byte	0x2e
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"stop_from_read"
	.byte	0x6
	.byte	0x36
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"send"
	.byte	0x6
	.byte	0x47
	.4byte	0xa9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.asciz	"read"
	.byte	0x6
	.byte	0x51
	.4byte	0xaa7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.asciz	"clock_high"
	.byte	0x6
	.byte	0x56
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.asciz	"clock_low"
	.byte	0x6
	.byte	0x5b
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.asciz	"data_high"
	.byte	0x6
	.byte	0x60
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.asciz	"data_low"
	.byte	0x6
	.byte	0x65
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.asciz	"data_state"
	.byte	0x6
	.byte	0x6f
	.4byte	0xaa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.asciz	"clock_pulse"
	.byte	0x6
	.byte	0x74
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xc
	.asciz	"read_bit"
	.byte	0x6
	.byte	0x7b
	.4byte	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.asciz	"periodic_update"
	.byte	0x6
	.byte	0x86
	.4byte	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xc
	.asciz	"run_macro"
	.byte	0x6
	.byte	0x8d
	.4byte	0xace
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.asciz	"setup_prepare"
	.byte	0x6
	.byte	0x93
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xc
	.asciz	"setup_execute"
	.byte	0x6
	.byte	0x99
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.asciz	"cleanup"
	.byte	0x6
	.byte	0x9e
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xc
	.asciz	"print_pins_state"
	.byte	0x6
	.byte	0xa4
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.asciz	"print_settings"
	.byte	0x6
	.byte	0xa9
	.4byte	0xa85
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xc
	.asciz	"name"
	.byte	0x6
	.byte	0xae
	.4byte	0xae4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.uleb128 0xf
	.byte	0x2
	.4byte	0xa83
	.uleb128 0x10
	.byte	0x1
	.4byte	0x13f
	.4byte	0xa9b
	.uleb128 0x11
	.4byte	0x13f
	.byte	0x0
	.uleb128 0xf
	.byte	0x2
	.4byte	0xa8b
	.uleb128 0x12
	.byte	0x1
	.4byte	0x13f
	.uleb128 0xf
	.byte	0x2
	.4byte	0xaa1
	.uleb128 0x12
	.byte	0x1
	.4byte	0xab3
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0xf
	.byte	0x2
	.4byte	0xaad
	.uleb128 0x13
	.byte	0x1
	.4byte	0xace
	.uleb128 0x11
	.4byte	0x13f
	.byte	0x0
	.uleb128 0xf
	.byte	0x2
	.4byte	0xac2
	.uleb128 0x14
	.4byte	0x17e
	.4byte	0xae4
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.4byte	0xad4
	.uleb128 0x3
	.asciz	"bus_pirate_protocol_t"
	.byte	0x6
	.byte	0xaf
	.4byte	0x8c9
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0xb4
	.4byte	0xb8b
	.uleb128 0x18
	.asciz	"BP_HIZ"
	.sleb128 0
	.uleb128 0x18
	.asciz	"BP_1WIRE"
	.sleb128 1
	.uleb128 0x18
	.asciz	"BP_UART"
	.sleb128 2
	.uleb128 0x18
	.asciz	"BP_I2C"
	.sleb128 3
	.uleb128 0x18
	.asciz	"BP_SPI"
	.sleb128 4
	.uleb128 0x18
	.asciz	"BP_RAW2WIRE"
	.sleb128 5
	.uleb128 0x18
	.asciz	"BP_RAW3WIRE"
	.sleb128 6
	.uleb128 0x18
	.asciz	"BP_PICPROG"
	.sleb128 7
	.uleb128 0x18
	.asciz	"BP_DIO"
	.sleb128 8
	.uleb128 0x18
	.asciz	"ENABLED_PROTOCOLS_COUNT"
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_available_protocols_t"
	.byte	0x6
	.byte	0xe9
	.4byte	0xb06
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.byte	0xee
	.4byte	0xbd4
	.uleb128 0x18
	.asciz	"HEX"
	.sleb128 0
	.uleb128 0x18
	.asciz	"DEC"
	.sleb128 1
	.uleb128 0x18
	.asciz	"BIN"
	.sleb128 2
	.uleb128 0x18
	.asciz	"RAW"
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.asciz	"bus_pirate_display_mode_t"
	.byte	0x6
	.byte	0xf7
	.4byte	0xbb3
	.uleb128 0xb
	.byte	0xc
	.byte	0x6
	.byte	0xf9
	.4byte	0xce5
	.uleb128 0xc
	.asciz	"terminal_input"
	.byte	0x6
	.byte	0xfa
	.4byte	0xce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"device_type"
	.byte	0x6
	.byte	0xfb
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"device_revision"
	.byte	0x6
	.byte	0xfc
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"hardware_version"
	.byte	0x6
	.byte	0xfd
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"terminal_speed"
	.byte	0x6
	.byte	0xfe
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.asciz	"display_mode"
	.byte	0x6
	.byte	0xff
	.4byte	0xbd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.asciz	"bus_mode"
	.byte	0x6
	.2byte	0x100
	.4byte	0xb8b
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x5
	.asciz	"quiet"
	.byte	0x6
	.2byte	0x101
	.4byte	0x11f
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
	.4byte	0x11f
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
	.4byte	0x11f
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xf
	.byte	0x2
	.4byte	0x11f
	.uleb128 0x6
	.asciz	"bus_pirate_configuration_t"
	.byte	0x6
	.2byte	0x106
	.4byte	0xbf5
	.uleb128 0xb
	.byte	0x6
	.byte	0x1
	.byte	0xff
	.4byte	0xd8d
	.uleb128 0x19
	.asciz	"cursor_position"
	.byte	0x1
	.2byte	0x101
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.asciz	"history_entry_counter"
	.byte	0x1
	.2byte	0x104
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.asciz	"binary_mode_counter"
	.byte	0x1
	.2byte	0x107
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.asciz	"command_present"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xab3
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x6
	.asciz	"menu_state_t"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xd0e
	.uleb128 0x1a
	.asciz	"bp_disable_voltage_regulator"
	.byte	0x2
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_enable_voltage_regulator"
	.byte	0x2
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_enable_adc"
	.byte	0x2
	.byte	0x75
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_disable_adc"
	.byte	0x2
	.byte	0x77
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.asciz	"bp_get_voltage_regulator_state"
	.byte	0x2
	.byte	0x64
	.byte	0x1
	.4byte	0xab3
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_disable_pullup"
	.byte	0x2
	.byte	0x4d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1a
	.asciz	"bp_enable_pullup"
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.asciz	"change_read_display"
	.byte	0x1
	.2byte	0x41c
	.byte	0x1
	.4byte	0x11f
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5f
	.4byte	0xe9d
	.uleb128 0x1d
	.asciz	"index"
	.byte	0x1
	.2byte	0x41d
	.4byte	0xce
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.asciz	"print_pin_direction"
	.byte	0x1
	.2byte	0x695
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5f
	.4byte	0xed3
	.uleb128 0x1f
	.asciz	"pin"
	.byte	0x1
	.2byte	0x695
	.4byte	0xed3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x16
	.4byte	0x13f
	.uleb128 0x1e
	.asciz	"print_pin_state"
	.byte	0x1
	.2byte	0x699
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5f
	.4byte	0xf0a
	.uleb128 0x1f
	.asciz	"pin"
	.byte	0x1
	.2byte	0x699
	.4byte	0xed3
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.asciz	"echo_state"
	.byte	0x1
	.2byte	0x6d7
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x5f
	.4byte	0xf39
	.uleb128 0x1f
	.asciz	"value"
	.byte	0x1
	.2byte	0x6d7
	.4byte	0xed3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.asciz	"handle_right_arrow"
	.byte	0x1
	.2byte	0x789
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.asciz	"refresh_mode_prompt"
	.byte	0x1
	.2byte	0x792
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"refresh_command_line"
	.byte	0x1
	.2byte	0x7a0
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x1
	.byte	0x5f
	.4byte	0xfdf
	.uleb128 0x1f
	.asciz	"start"
	.byte	0x1
	.2byte	0x7a0
	.4byte	0xed3
	.byte	0x1
	.byte	0x5b
	.uleb128 0x21
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x7ab
	.4byte	0x13f
	.uleb128 0x1d
	.asciz	"old_command_start"
	.byte	0x1
	.2byte	0x7ac
	.4byte	0x13f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.asciz	"handle_up_arrow"
	.byte	0x1
	.2byte	0x7c3
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x1
	.byte	0x5f
	.4byte	0x101f
	.uleb128 0x22
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x7c4
	.4byte	0x13f
	.byte	0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x7c5
	.4byte	0x13f
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.asciz	"handle_down_arrow"
	.byte	0x1
	.2byte	0x7df
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x1
	.byte	0x5f
	.4byte	0x105f
	.uleb128 0x21
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x7e0
	.4byte	0x13f
	.uleb128 0x22
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x7e1
	.4byte	0x13f
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x20
	.asciz	"handle_enter_key"
	.byte	0x1
	.2byte	0x849
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"switch_psu_off"
	.byte	0x1
	.2byte	0x892
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x5f
	.4byte	0x10af
	.uleb128 0x23
	.4byte	0xda2
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x0
	.uleb128 0x1e
	.asciz	"switch_psu_on"
	.byte	0x1
	.2byte	0x876
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x1
	.byte	0x5f
	.4byte	0x1105
	.uleb128 0x23
	.4byte	0xdc4
	.4byte	.LBB32
	.4byte	.LBE32
	.uleb128 0x23
	.4byte	0xde5
	.4byte	.LBB34
	.4byte	.LBE34
	.uleb128 0x23
	.4byte	0xda2
	.4byte	.LBB36
	.4byte	.LBE36
	.uleb128 0x23
	.4byte	0xdf8
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x0
	.uleb128 0x1e
	.asciz	"remove_current_character_from_command_line"
	.byte	0x1
	.2byte	0x72c
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5f
	.4byte	0x117b
	.uleb128 0x1d
	.asciz	"characters_to_move"
	.byte	0x1
	.2byte	0x72d
	.4byte	0x13f
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.4byte	.LBB40
	.4byte	.LBE40
	.uleb128 0x1d
	.asciz	"index"
	.byte	0x1
	.2byte	0x731
	.4byte	0xce
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.asciz	"handle_backspace"
	.byte	0x1
	.2byte	0x753
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.asciz	"handle_delete"
	.byte	0x1
	.2byte	0x746
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"handle_home_key"
	.byte	0x1
	.2byte	0x80a
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x5f
	.4byte	0x11ea
	.uleb128 0x22
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x80f
	.4byte	0xce
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.asciz	"handle_end_key"
	.byte	0x1
	.2byte	0x816
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x1
	.byte	0x5f
	.4byte	0x121b
	.uleb128 0x22
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x81b
	.4byte	0xce
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.asciz	"handle_character"
	.byte	0x1
	.2byte	0x852
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x1
	.byte	0x5f
	.4byte	0x127b
	.uleb128 0x1f
	.asciz	"character"
	.byte	0x1
	.2byte	0x852
	.4byte	0x127b
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	.LBB41
	.4byte	.LBE41
	.uleb128 0x21
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x85f
	.4byte	0xce
	.uleb128 0x1d
	.asciz	"offset"
	.byte	0x1
	.2byte	0x863
	.4byte	0x13f
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.4byte	0x11f
	.uleb128 0x20
	.asciz	"handle_left_arrow"
	.byte	0x1
	.2byte	0x778
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x5f
	.uleb128 0x20
	.asciz	"handle_escape_key"
	.byte	0x1
	.2byte	0x822
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"print_pins_information"
	.byte	0x1
	.2byte	0x63a
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5f
	.4byte	0x1307
	.uleb128 0x23
	.4byte	0xde5
	.4byte	.LBB42
	.4byte	.LBE42
	.uleb128 0x23
	.4byte	0xdf8
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x0
	.uleb128 0x20
	.asciz	"print_status_info"
	.byte	0x1
	.2byte	0x5d8
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"getint"
	.byte	0x1
	.2byte	0x3b5
	.byte	0x1
	.4byte	0xec
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5f
	.4byte	0x1363
	.uleb128 0x1d
	.asciz	"i"
	.byte	0x1
	.2byte	0x3b7
	.4byte	0xec
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.asciz	"number"
	.byte	0x1
	.2byte	0x3b8
	.4byte	0xec
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"getrepeat"
	.byte	0x1
	.2byte	0x401
	.byte	0x1
	.4byte	0xec
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5f
	.4byte	0x1395
	.uleb128 0x1d
	.asciz	"temp"
	.byte	0x1
	.2byte	0x402
	.4byte	0xec
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"getnumbits"
	.byte	0x1
	.2byte	0x40f
	.byte	0x1
	.4byte	0xec
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5f
	.4byte	0x13c8
	.uleb128 0x1d
	.asciz	"temp"
	.byte	0x1
	.2byte	0x410
	.4byte	0xec
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.asciz	"consumewhitechars"
	.byte	0x1
	.2byte	0x428
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1e
	.asciz	"convert_value"
	.byte	0x1
	.2byte	0x71d
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5f
	.4byte	0x142f
	.uleb128 0x1f
	.asciz	"reversed"
	.byte	0x1
	.2byte	0x71d
	.4byte	0x142f
	.byte	0x1
	.byte	0x58
	.uleb128 0x1d
	.asciz	"value"
	.byte	0x1
	.2byte	0x720
	.4byte	0xec
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x16
	.4byte	0xab3
	.uleb128 0x25
	.byte	0x1
	.asciz	"getnumber"
	.byte	0x1
	.2byte	0x4a8
	.byte	0x1
	.4byte	0xec
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5e
	.4byte	0x14f7
	.uleb128 0x1f
	.asciz	"def"
	.byte	0x1
	.2byte	0x4a8
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x1f
	.asciz	"min"
	.byte	0x1
	.2byte	0x4a8
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0x1f
	.asciz	"max"
	.byte	0x1
	.2byte	0x4a8
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 14
	.uleb128 0x1f
	.asciz	"x"
	.byte	0x1
	.2byte	0x4a9
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x1d
	.asciz	"c"
	.byte	0x1
	.2byte	0x4ab
	.4byte	0x17e
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.asciz	"buf"
	.byte	0x1
	.2byte	0x4ac
	.4byte	0x14f7
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x26
	.asciz	"i"
	.byte	0x1
	.2byte	0x4ad
	.4byte	0xec
	.uleb128 0x26
	.asciz	"j"
	.byte	0x1
	.2byte	0x4ad
	.4byte	0xec
	.uleb128 0x26
	.asciz	"stop"
	.byte	0x1
	.2byte	0x4ad
	.4byte	0xec
	.uleb128 0x26
	.asciz	"temp"
	.byte	0x1
	.2byte	0x4ad
	.4byte	0xec
	.uleb128 0x1d
	.asciz	"neg"
	.byte	0x1
	.2byte	0x4ad
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x28
	.asciz	"again"
	.byte	0x1
	.2byte	0x4af
	.4byte	.L159
	.byte	0x0
	.uleb128 0x14
	.4byte	0x17e
	.4byte	0x1507
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x5
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.asciz	"cmdhistory"
	.byte	0x1
	.2byte	0x468
	.byte	0x1
	.4byte	0xec
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5e
	.4byte	0x155f
	.uleb128 0x26
	.asciz	"i"
	.byte	0x1
	.2byte	0x469
	.4byte	0xec
	.uleb128 0x26
	.asciz	"j"
	.byte	0x1
	.2byte	0x469
	.4byte	0xec
	.uleb128 0x26
	.asciz	"k"
	.byte	0x1
	.2byte	0x469
	.4byte	0xec
	.uleb128 0x1d
	.asciz	"historypos"
	.byte	0x1
	.2byte	0x46b
	.4byte	0x155f
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x14
	.4byte	0xec
	.4byte	0x156f
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x6
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.asciz	"changemode"
	.byte	0x1
	.2byte	0x42e
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5f
	.4byte	0x15ab
	.uleb128 0x1d
	.asciz	"i"
	.byte	0x1
	.2byte	0x42f
	.4byte	0xec
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.asciz	"busmode"
	.byte	0x1
	.2byte	0x42f
	.4byte	0xec
	.byte	0x0
	.uleb128 0x1e
	.asciz	"set_baud_rate"
	.byte	0x1
	.2byte	0x6ac
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x5f
	.4byte	0x15eb
	.uleb128 0x1d
	.asciz	"speed"
	.byte	0x1
	.2byte	0x6af
	.4byte	0xec
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.asciz	"brg"
	.byte	0x1
	.2byte	0x6b9
	.4byte	0xec
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x1e
	.asciz	"set_display_mode"
	.byte	0x1
	.2byte	0x69d
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5f
	.4byte	0x161f
	.uleb128 0x1d
	.asciz	"mode"
	.byte	0x1
	.2byte	0x6a0
	.4byte	0xec
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.asciz	"print_version_info"
	.byte	0x1
	.2byte	0x57c
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5f
	.4byte	0x167c
	.uleb128 0x1d
	.asciz	"bootloader_version"
	.byte	0x1
	.2byte	0x597
	.4byte	0x13f
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.4byte	.LBB46
	.4byte	.LBE46
	.uleb128 0x26
	.asciz	"index"
	.byte	0x1
	.2byte	0x58d
	.4byte	0xce
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.asciz	"serviceuser"
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5e
	.4byte	0x17d1
	.uleb128 0x1d
	.asciz	"newstart"
	.byte	0x1
	.2byte	0x113
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 18
	.uleb128 0x1d
	.asciz	"oldstart"
	.byte	0x1
	.2byte	0x114
	.4byte	0xec
	.byte	0x2
	.byte	0x7e
	.sleb128 26
	.uleb128 0x26
	.asciz	"sendw"
	.byte	0x1
	.2byte	0x115
	.4byte	0xdc
	.uleb128 0x26
	.asciz	"received"
	.byte	0x1
	.2byte	0x115
	.4byte	0xdc
	.uleb128 0x21
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x116
	.4byte	0xec
	.uleb128 0x26
	.asciz	"temp"
	.byte	0x1
	.2byte	0x117
	.4byte	0xec
	.uleb128 0x26
	.asciz	"numbits"
	.byte	0x1
	.2byte	0x118
	.4byte	0xec
	.uleb128 0x1d
	.asciz	"oldDmode"
	.byte	0x1
	.2byte	0x119
	.4byte	0x12e
	.byte	0x2
	.byte	0x7e
	.sleb128 16
	.uleb128 0x1d
	.asciz	"newDmode"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x12e
	.byte	0x2
	.byte	0x7e
	.sleb128 24
	.uleb128 0x24
	.4byte	.LBB49
	.4byte	.LBE49
	.uleb128 0x1d
	.asciz	"stop"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xab3
	.byte	0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0x1798
	.uleb128 0x26
	.asciz	"c"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x11f
	.uleb128 0x23
	.4byte	0xe34
	.4byte	.LBB51
	.4byte	.LBE51
	.uleb128 0x23
	.4byte	0xe4b
	.4byte	.LBB53
	.4byte	.LBE53
	.uleb128 0x23
	.4byte	0xde5
	.4byte	.LBB55
	.4byte	.LBE55
	.uleb128 0x23
	.4byte	0xdf8
	.4byte	.LBB57
	.4byte	.LBE57
	.byte	0x0
	.uleb128 0x24
	.4byte	.LBB59
	.4byte	.LBE59
	.uleb128 0x1d
	.asciz	"user_byte"
	.byte	0x1
	.2byte	0x162
	.4byte	0x11f
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.4byte	.LBB60
	.4byte	.LBE60
	.uleb128 0x26
	.asciz	"offset"
	.byte	0x1
	.2byte	0x150
	.4byte	0xce
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x6de
	.4byte	0x17df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x210
	.uleb128 0x2b
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x6e9
	.4byte	0x17f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x293
	.uleb128 0x2d
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0x1807
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x13f
	.uleb128 0x2b
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x715
	.4byte	0x181a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x412
	.uleb128 0x2d
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0x718
	.4byte	0x1807
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF6
	.byte	0x4
	.2byte	0x72b
	.4byte	0x183d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x561
	.uleb128 0x2b
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x7a3
	.4byte	0x1850
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x6a7
	.uleb128 0x2b
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x80c
	.4byte	0x1863
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	0x7b4
	.uleb128 0x14
	.4byte	0x17e
	.4byte	0x1878
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2e
	.asciz	"cmdbuf"
	.byte	0x7
	.byte	0x19
	.4byte	0x1868
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.asciz	"cmdend"
	.byte	0x7
	.byte	0x1a
	.4byte	0xdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF9
	.byte	0x7
	.byte	0x1b
	.4byte	0xdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF10
	.byte	0x1
	.byte	0x61
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF11
	.byte	0x1
	.byte	0x62
	.4byte	0x8ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0xae9
	.4byte	0x18cf
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x8
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF12
	.byte	0x1
	.byte	0x64
	.4byte	0x18bf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.asciz	"skip_pgc_pgd_check"
	.byte	0x1
	.byte	0x69
	.4byte	0xab3
	.byte	0x5
	.byte	0x3
	.4byte	_skip_pgc_pgd_check
	.uleb128 0x14
	.4byte	0x11f
	.4byte	0x190c
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x3
	.byte	0x0
	.uleb128 0x31
	.asciz	"READ_DISPLAY_BASE"
	.byte	0x1
	.byte	0x70
	.4byte	0x1925
	.uleb128 0x16
	.4byte	0x18fc
	.uleb128 0x14
	.4byte	0x17e
	.4byte	0x1940
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x2
	.uleb128 0x15
	.4byte	0xdc
	.byte	0x17
	.byte	0x0
	.uleb128 0x30
	.asciz	"user_macros"
	.byte	0x1
	.byte	0xf9
	.4byte	0x192a
	.byte	0x5
	.byte	0x3
	.4byte	_user_macros
	.uleb128 0x30
	.asciz	"user_macro"
	.byte	0x1
	.byte	0xfa
	.4byte	0xec
	.byte	0x5
	.byte	0x3
	.4byte	_user_macro
	.uleb128 0x1d
	.asciz	"menu_state"
	.byte	0x1
	.2byte	0x110
	.4byte	0xd8d
	.byte	0x5
	.byte	0x3
	.4byte	_menu_state
	.uleb128 0x2b
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x6de
	.4byte	0x17df
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x6e9
	.4byte	0x17f2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"TRISB"
	.byte	0x4
	.2byte	0x702
	.4byte	0x1807
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x715
	.4byte	0x181a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0x718
	.4byte	0x1807
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF6
	.byte	0x4
	.2byte	0x72b
	.4byte	0x183d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x7a3
	.4byte	0x1850
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x80c
	.4byte	0x1863
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.asciz	"cmdbuf"
	.byte	0x1
	.byte	0xf5
	.4byte	0x1868
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cmdbuf
	.uleb128 0x32
	.asciz	"cmdend"
	.byte	0x1
	.byte	0xf6
	.4byte	0xdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cmdend
	.uleb128 0x33
	.4byte	.LASF9
	.byte	0x1
	.byte	0xf7
	.4byte	0xdc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cmdstart
	.uleb128 0x2f
	.4byte	.LASF10
	.byte	0x1
	.byte	0x61
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF11
	.byte	0x1
	.byte	0x62
	.4byte	0x8ad
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF12
	.byte	0x1
	.byte	0x64
	.4byte	0x18bf
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xc2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a62
	.4byte	0x1328
	.asciz	"getint"
	.4byte	0x1363
	.asciz	"getrepeat"
	.4byte	0x1395
	.asciz	"getnumbits"
	.4byte	0x13c8
	.asciz	"consumewhitechars"
	.4byte	0x1434
	.asciz	"getnumber"
	.4byte	0x1507
	.asciz	"cmdhistory"
	.4byte	0x156f
	.asciz	"changemode"
	.4byte	0x161f
	.asciz	"print_version_info"
	.4byte	0x167c
	.asciz	"serviceuser"
	.4byte	0x19fe
	.asciz	"cmdbuf"
	.4byte	0x1a13
	.asciz	"cmdend"
	.4byte	0x1a28
	.asciz	"cmdstart"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x19a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a62
	.4byte	0xce
	.asciz	"size_t"
	.4byte	0x11f
	.asciz	"uint8_t"
	.4byte	0x13f
	.asciz	"uint16_t"
	.4byte	0x190
	.asciz	"tagTRISABITS"
	.4byte	0x210
	.asciz	"TRISABITS"
	.4byte	0x222
	.asciz	"tagPORTABITS"
	.4byte	0x293
	.asciz	"PORTABITS"
	.4byte	0x2a5
	.asciz	"tagTRISBBITS"
	.4byte	0x412
	.asciz	"TRISBBITS"
	.4byte	0x424
	.asciz	"tagPORTBBITS"
	.4byte	0x561
	.asciz	"PORTBBITS"
	.4byte	0x686
	.asciz	"tagAD1CON1BITS"
	.4byte	0x6a7
	.asciz	"AD1CON1BITS"
	.4byte	0x6bb
	.asciz	"tagAD1PCFGBITS"
	.4byte	0x7b4
	.asciz	"AD1PCFGBITS"
	.4byte	0x8ad
	.asciz	"mode_configuration_t"
	.4byte	0xae9
	.asciz	"bus_pirate_protocol_t"
	.4byte	0xb8b
	.asciz	"bus_pirate_available_protocols_t"
	.4byte	0xbd4
	.asciz	"bus_pirate_display_mode_t"
	.4byte	0xceb
	.asciz	"bus_pirate_configuration_t"
	.4byte	0xd8d
	.asciz	"menu_state_t"
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
.LASF10:
	.asciz	"bus_pirate_configuration"
.LASF6:
	.asciz	"PORTBbits"
.LASF2:
	.asciz	"repeat"
.LASF11:
	.asciz	"mode_configuration"
.LASF1:
	.asciz	"character_offset"
.LASF0:
	.asciz	"history_entry_index"
.LASF9:
	.asciz	"cmdstart"
.LASF12:
	.asciz	"enabled_protocols"
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
