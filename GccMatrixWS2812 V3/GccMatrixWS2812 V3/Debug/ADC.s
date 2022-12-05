	.file	"ADC.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_init,"ax",@progbits
.global	adc_init
	.type	adc_init, @function
adc_init:
.LFB10:
	.file 1 "../src/ADC.c"
	.loc 1 17 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(7)
	st Z,r24
	.loc 1 20 0
	ldi r26,lo8(124)
	ldi r27,0
	ld r24,X
	ori r24,lo8(64)
	st X,r24
	.loc 1 21 0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 22 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
	ret
	.cfi_endproc
.LFE10:
	.size	adc_init, .-adc_init
	.section	.text.read_adc,"ax",@progbits
.global	read_adc
	.type	read_adc, @function
read_adc:
.LFB11:
	.loc 1 25 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	ldi r30,lo8(124)
	ldi r31,0
	ld r25,Z
	andi r25,lo8(-16)
	st Z,r25
	.loc 1 27 0
	ld r25,Z
	or r24,r25
.LVL1:
	st Z,r24
	.loc 1 28 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.L3:
	.loc 1 29 0 discriminator 1
	ld r24,Z
	.loc 1 29 0 discriminator 1
	sbrc r24,6
	rjmp .L3
	.loc 1 30 0
	lds r24,120
	lds r25,120+1
	.loc 1 31 0
	ret
	.cfi_endproc
.LFE11:
	.size	read_adc, .-read_adc
	.section	.text.read_VRY,"ax",@progbits
.global	read_VRY
	.type	read_VRY, @function
read_VRY:
.LFB12:
	.loc 1 36 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 37 0
	ldi r24,lo8(4)
	call read_adc
.LVL2:
	.loc 1 38 0
	ret
	.cfi_endproc
.LFE12:
	.size	read_VRY, .-read_VRY
	.section	.text.read_VRX,"ax",@progbits
.global	read_VRX
	.type	read_VRX, @function
read_VRX:
.LFB13:
	.loc 1 40 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 41 0
	ldi r24,lo8(5)
	call read_adc
.LVL3:
	.loc 1 42 0
	ret
	.cfi_endproc
.LFE13:
	.size	read_VRX, .-read_VRX
	.comm	adc_value,2,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1607
	.byte	0xc
	.long	.LASF1608
	.long	.LASF1609
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1595
	.uleb128 0x3
	.long	.LASF1597
	.byte	0x2
	.byte	0x7e
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1596
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF1598
	.byte	0x2
	.byte	0x80
	.long	0x58
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1599
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1600
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1601
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1602
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1603
	.uleb128 0x5
	.byte	0x1
	.long	.LASF1610
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF1604
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x4d
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xbf
	.uleb128 0x7
	.long	.LASF1611
	.byte	0x1
	.byte	0x19
	.long	0x34
	.long	.LLST0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF1605
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	0x4d
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xed
	.uleb128 0x8
	.long	.LVL2
	.long	0x91
	.uleb128 0x9
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF1606
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x4d
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x11b
	.uleb128 0x8
	.long	.LVL3
	.long	0x91
	.uleb128 0x9
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF1612
	.byte	0x1
	.byte	0x9
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adc_value
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF2
	.byte	0x5
	.uleb128 0x4
	.long	.LASF3
	.byte	0x5
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.uleb128 0x6
	.long	.LASF5
	.byte	0x5
	.uleb128 0x7
	.long	.LASF6
	.byte	0x5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x5
	.uleb128 0x9
	.long	.LASF8
	.byte	0x5
	.uleb128 0xa
	.long	.LASF9
	.byte	0x5
	.uleb128 0xb
	.long	.LASF10
	.byte	0x5
	.uleb128 0xc
	.long	.LASF11
	.byte	0x5
	.uleb128 0xd
	.long	.LASF12
	.byte	0x5
	.uleb128 0xe
	.long	.LASF13
	.byte	0x5
	.uleb128 0xf
	.long	.LASF14
	.byte	0x5
	.uleb128 0x10
	.long	.LASF15
	.byte	0x5
	.uleb128 0x11
	.long	.LASF16
	.byte	0x5
	.uleb128 0x12
	.long	.LASF17
	.byte	0x5
	.uleb128 0x13
	.long	.LASF18
	.byte	0x5
	.uleb128 0x14
	.long	.LASF19
	.byte	0x5
	.uleb128 0x15
	.long	.LASF20
	.byte	0x5
	.uleb128 0x16
	.long	.LASF21
	.byte	0x5
	.uleb128 0x17
	.long	.LASF22
	.byte	0x5
	.uleb128 0x18
	.long	.LASF23
	.byte	0x5
	.uleb128 0x19
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x5
	.uleb128 0x20
	.long	.LASF31
	.byte	0x5
	.uleb128 0x21
	.long	.LASF32
	.byte	0x5
	.uleb128 0x22
	.long	.LASF33
	.byte	0x5
	.uleb128 0x23
	.long	.LASF34
	.byte	0x5
	.uleb128 0x24
	.long	.LASF35
	.byte	0x5
	.uleb128 0x25
	.long	.LASF36
	.byte	0x5
	.uleb128 0x26
	.long	.LASF37
	.byte	0x5
	.uleb128 0x27
	.long	.LASF38
	.byte	0x5
	.uleb128 0x28
	.long	.LASF39
	.byte	0x5
	.uleb128 0x29
	.long	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x5
	.uleb128 0x30
	.long	.LASF47
	.byte	0x5
	.uleb128 0x31
	.long	.LASF48
	.byte	0x5
	.uleb128 0x32
	.long	.LASF49
	.byte	0x5
	.uleb128 0x33
	.long	.LASF50
	.byte	0x5
	.uleb128 0x34
	.long	.LASF51
	.byte	0x5
	.uleb128 0x35
	.long	.LASF52
	.byte	0x5
	.uleb128 0x36
	.long	.LASF53
	.byte	0x5
	.uleb128 0x37
	.long	.LASF54
	.byte	0x5
	.uleb128 0x38
	.long	.LASF55
	.byte	0x5
	.uleb128 0x39
	.long	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF62
	.byte	0x5
	.uleb128 0x40
	.long	.LASF63
	.byte	0x5
	.uleb128 0x41
	.long	.LASF64
	.byte	0x5
	.uleb128 0x42
	.long	.LASF65
	.byte	0x5
	.uleb128 0x43
	.long	.LASF66
	.byte	0x5
	.uleb128 0x44
	.long	.LASF67
	.byte	0x5
	.uleb128 0x45
	.long	.LASF68
	.byte	0x5
	.uleb128 0x46
	.long	.LASF69
	.byte	0x5
	.uleb128 0x47
	.long	.LASF70
	.byte	0x5
	.uleb128 0x48
	.long	.LASF71
	.byte	0x5
	.uleb128 0x49
	.long	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF78
	.byte	0x5
	.uleb128 0x50
	.long	.LASF79
	.byte	0x5
	.uleb128 0x51
	.long	.LASF80
	.byte	0x5
	.uleb128 0x52
	.long	.LASF81
	.byte	0x5
	.uleb128 0x53
	.long	.LASF82
	.byte	0x5
	.uleb128 0x54
	.long	.LASF83
	.byte	0x5
	.uleb128 0x55
	.long	.LASF84
	.byte	0x5
	.uleb128 0x56
	.long	.LASF85
	.byte	0x5
	.uleb128 0x57
	.long	.LASF86
	.byte	0x5
	.uleb128 0x58
	.long	.LASF87
	.byte	0x5
	.uleb128 0x59
	.long	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF94
	.byte	0x5
	.uleb128 0x60
	.long	.LASF95
	.byte	0x5
	.uleb128 0x61
	.long	.LASF96
	.byte	0x5
	.uleb128 0x62
	.long	.LASF97
	.byte	0x5
	.uleb128 0x63
	.long	.LASF98
	.byte	0x5
	.uleb128 0x64
	.long	.LASF99
	.byte	0x5
	.uleb128 0x65
	.long	.LASF100
	.byte	0x5
	.uleb128 0x66
	.long	.LASF101
	.byte	0x5
	.uleb128 0x67
	.long	.LASF102
	.byte	0x5
	.uleb128 0x68
	.long	.LASF103
	.byte	0x5
	.uleb128 0x69
	.long	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF110
	.byte	0x5
	.uleb128 0x70
	.long	.LASF111
	.byte	0x5
	.uleb128 0x71
	.long	.LASF112
	.byte	0x5
	.uleb128 0x72
	.long	.LASF113
	.byte	0x5
	.uleb128 0x73
	.long	.LASF114
	.byte	0x5
	.uleb128 0x74
	.long	.LASF115
	.byte	0x5
	.uleb128 0x75
	.long	.LASF116
	.byte	0x5
	.uleb128 0x76
	.long	.LASF117
	.byte	0x5
	.uleb128 0x77
	.long	.LASF118
	.byte	0x5
	.uleb128 0x78
	.long	.LASF119
	.byte	0x5
	.uleb128 0x79
	.long	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF126
	.byte	0x5
	.uleb128 0x80
	.long	.LASF127
	.byte	0x5
	.uleb128 0x81
	.long	.LASF128
	.byte	0x5
	.uleb128 0x82
	.long	.LASF129
	.byte	0x5
	.uleb128 0x83
	.long	.LASF130
	.byte	0x5
	.uleb128 0x84
	.long	.LASF131
	.byte	0x5
	.uleb128 0x85
	.long	.LASF132
	.byte	0x5
	.uleb128 0x86
	.long	.LASF133
	.byte	0x5
	.uleb128 0x87
	.long	.LASF134
	.byte	0x5
	.uleb128 0x88
	.long	.LASF135
	.byte	0x5
	.uleb128 0x89
	.long	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF142
	.byte	0x5
	.uleb128 0x90
	.long	.LASF143
	.byte	0x5
	.uleb128 0x91
	.long	.LASF144
	.byte	0x5
	.uleb128 0x92
	.long	.LASF145
	.byte	0x5
	.uleb128 0x93
	.long	.LASF146
	.byte	0x5
	.uleb128 0x94
	.long	.LASF147
	.byte	0x5
	.uleb128 0x95
	.long	.LASF148
	.byte	0x5
	.uleb128 0x96
	.long	.LASF149
	.byte	0x5
	.uleb128 0x97
	.long	.LASF150
	.byte	0x5
	.uleb128 0x98
	.long	.LASF151
	.byte	0x5
	.uleb128 0x99
	.long	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF169
	.byte	0x5
	.uleb128 0xab
	.long	.LASF170
	.byte	0x5
	.uleb128 0xac
	.long	.LASF171
	.byte	0x5
	.uleb128 0xad
	.long	.LASF172
	.byte	0x5
	.uleb128 0xae
	.long	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF184
	.byte	0x5
	.uleb128 0xba
	.long	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF200
	.byte	0x5
	.uleb128 0xca
	.long	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF204
	.byte	0x5
	.uleb128 0xce
	.long	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF216
	.byte	0x5
	.uleb128 0xda
	.long	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF220
	.byte	0x5
	.uleb128 0xde
	.long	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF232
	.byte	0x5
	.uleb128 0xea
	.long	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF234
	.byte	0x5
	.uleb128 0xec
	.long	.LASF235
	.byte	0x5
	.uleb128 0xed
	.long	.LASF236
	.byte	0x5
	.uleb128 0xee
	.long	.LASF237
	.byte	0x5
	.uleb128 0xef
	.long	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF253
	.byte	0x5
	.uleb128 0xff
	.long	.LASF254
	.byte	0x5
	.uleb128 0x100
	.long	.LASF255
	.byte	0x5
	.uleb128 0x101
	.long	.LASF256
	.byte	0x5
	.uleb128 0x102
	.long	.LASF257
	.byte	0x5
	.uleb128 0x103
	.long	.LASF258
	.byte	0x5
	.uleb128 0x104
	.long	.LASF259
	.byte	0x5
	.uleb128 0x105
	.long	.LASF260
	.byte	0x5
	.uleb128 0x106
	.long	.LASF261
	.byte	0x5
	.uleb128 0x107
	.long	.LASF262
	.byte	0x5
	.uleb128 0x108
	.long	.LASF263
	.byte	0x5
	.uleb128 0x109
	.long	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF270
	.byte	0x5
	.uleb128 0x110
	.long	.LASF271
	.byte	0x5
	.uleb128 0x111
	.long	.LASF272
	.byte	0x5
	.uleb128 0x112
	.long	.LASF273
	.byte	0x5
	.uleb128 0x113
	.long	.LASF274
	.byte	0x5
	.uleb128 0x114
	.long	.LASF275
	.byte	0x5
	.uleb128 0x115
	.long	.LASF276
	.byte	0x5
	.uleb128 0x116
	.long	.LASF277
	.byte	0x5
	.uleb128 0x117
	.long	.LASF278
	.byte	0x5
	.uleb128 0x118
	.long	.LASF279
	.byte	0x5
	.uleb128 0x119
	.long	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF286
	.byte	0x5
	.uleb128 0x120
	.long	.LASF287
	.byte	0x5
	.uleb128 0x121
	.long	.LASF288
	.byte	0x5
	.uleb128 0x122
	.long	.LASF289
	.byte	0x5
	.uleb128 0x123
	.long	.LASF290
	.byte	0x5
	.uleb128 0x124
	.long	.LASF291
	.byte	0x5
	.uleb128 0x125
	.long	.LASF292
	.byte	0x5
	.uleb128 0x126
	.long	.LASF293
	.byte	0x5
	.uleb128 0x127
	.long	.LASF294
	.byte	0x5
	.uleb128 0x128
	.long	.LASF295
	.byte	0x5
	.uleb128 0x129
	.long	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF302
	.byte	0x5
	.uleb128 0x130
	.long	.LASF303
	.byte	0x5
	.uleb128 0x131
	.long	.LASF304
	.byte	0x5
	.uleb128 0x132
	.long	.LASF305
	.byte	0x5
	.uleb128 0x133
	.long	.LASF306
	.byte	0x5
	.uleb128 0x134
	.long	.LASF307
	.byte	0x5
	.uleb128 0x135
	.long	.LASF308
	.byte	0x5
	.uleb128 0x136
	.long	.LASF309
	.byte	0x5
	.uleb128 0x137
	.long	.LASF310
	.byte	0x5
	.uleb128 0x138
	.long	.LASF311
	.byte	0x5
	.uleb128 0x139
	.long	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF318
	.byte	0x5
	.uleb128 0x140
	.long	.LASF319
	.byte	0x5
	.uleb128 0x141
	.long	.LASF320
	.byte	0x5
	.uleb128 0x142
	.long	.LASF321
	.byte	0x5
	.uleb128 0x143
	.long	.LASF322
	.byte	0x5
	.uleb128 0x144
	.long	.LASF323
	.byte	0x5
	.uleb128 0x145
	.long	.LASF324
	.byte	0x5
	.uleb128 0x146
	.long	.LASF325
	.byte	0x5
	.uleb128 0x147
	.long	.LASF326
	.byte	0x5
	.uleb128 0x148
	.long	.LASF327
	.byte	0x5
	.uleb128 0x149
	.long	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF334
	.byte	0x5
	.uleb128 0x150
	.long	.LASF335
	.byte	0x5
	.uleb128 0x151
	.long	.LASF336
	.byte	0x5
	.uleb128 0x152
	.long	.LASF337
	.byte	0x5
	.uleb128 0x153
	.long	.LASF338
	.byte	0x5
	.uleb128 0x154
	.long	.LASF339
	.byte	0x5
	.uleb128 0x155
	.long	.LASF340
	.byte	0x5
	.uleb128 0x156
	.long	.LASF341
	.byte	0x5
	.uleb128 0x157
	.long	.LASF342
	.byte	0x5
	.uleb128 0x158
	.long	.LASF343
	.byte	0x5
	.uleb128 0x159
	.long	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF348
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF349
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF350
	.byte	0x5
	.uleb128 0x160
	.long	.LASF351
	.byte	0x5
	.uleb128 0x161
	.long	.LASF352
	.byte	0x5
	.uleb128 0x162
	.long	.LASF353
	.byte	0x5
	.uleb128 0x163
	.long	.LASF354
	.byte	0x5
	.uleb128 0x164
	.long	.LASF355
	.byte	0x5
	.uleb128 0x165
	.long	.LASF356
	.byte	0x5
	.uleb128 0x166
	.long	.LASF357
	.byte	0x5
	.uleb128 0x167
	.long	.LASF358
	.byte	0x5
	.uleb128 0x168
	.long	.LASF359
	.byte	0x5
	.uleb128 0x169
	.long	.LASF360
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF361
	.byte	0x5
	.uleb128 0x16b
	.long	.LASF362
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF363
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF364
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF365
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF366
	.byte	0x5
	.uleb128 0x170
	.long	.LASF367
	.byte	0x5
	.uleb128 0x171
	.long	.LASF368
	.byte	0x5
	.uleb128 0x172
	.long	.LASF369
	.byte	0x5
	.uleb128 0x173
	.long	.LASF370
	.byte	0x5
	.uleb128 0x174
	.long	.LASF371
	.byte	0x5
	.uleb128 0x175
	.long	.LASF372
	.byte	0x5
	.uleb128 0x176
	.long	.LASF373
	.byte	0x5
	.uleb128 0x177
	.long	.LASF374
	.byte	0x5
	.uleb128 0x178
	.long	.LASF375
	.byte	0x5
	.uleb128 0x179
	.long	.LASF376
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF377
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF378
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF379
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF380
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF381
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF382
	.byte	0x5
	.uleb128 0x180
	.long	.LASF383
	.byte	0x5
	.uleb128 0x181
	.long	.LASF384
	.byte	0x5
	.uleb128 0x182
	.long	.LASF385
	.byte	0x5
	.uleb128 0x183
	.long	.LASF386
	.byte	0x5
	.uleb128 0x184
	.long	.LASF387
	.byte	0x5
	.uleb128 0x185
	.long	.LASF388
	.byte	0x5
	.uleb128 0x186
	.long	.LASF389
	.byte	0x5
	.uleb128 0x187
	.long	.LASF390
	.byte	0x5
	.uleb128 0x188
	.long	.LASF391
	.byte	0x5
	.uleb128 0x189
	.long	.LASF392
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF393
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF394
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF395
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF396
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF397
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF398
	.byte	0x5
	.uleb128 0x190
	.long	.LASF399
	.byte	0x5
	.uleb128 0x191
	.long	.LASF400
	.byte	0x5
	.uleb128 0x192
	.long	.LASF401
	.byte	0x5
	.uleb128 0x193
	.long	.LASF402
	.byte	0x5
	.uleb128 0x194
	.long	.LASF403
	.byte	0x5
	.uleb128 0x195
	.long	.LASF404
	.byte	0x5
	.uleb128 0x196
	.long	.LASF405
	.byte	0x5
	.uleb128 0x197
	.long	.LASF406
	.byte	0x5
	.uleb128 0x198
	.long	.LASF407
	.byte	0x5
	.uleb128 0x199
	.long	.LASF408
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF409
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF410
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF411
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF412
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF413
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF418
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF419
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF420
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF421
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF423
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF425
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF426
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF427
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF428
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF429
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF430
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF431
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF432
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF433
	.byte	0x5
	.uleb128 0x1
	.long	.LASF434
	.byte	0x5
	.uleb128 0x2
	.long	.LASF435
	.byte	0x5
	.uleb128 0x3
	.long	.LASF436
	.byte	0x5
	.uleb128 0x4
	.long	.LASF437
	.byte	0x5
	.uleb128 0x5
	.long	.LASF438
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x61
	.long	.LASF439
	.file 4 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h"
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro1
	.file 5 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x23
	.long	.LASF442
	.file 6 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF508
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 7 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.7.374\\include/avr/iom328p.h"
	.byte	0x3
	.uleb128 0x110
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 8 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h"
	.byte	0x3
	.uleb128 0x273
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h"
	.byte	0x3
	.uleb128 0x275
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h"
	.byte	0x3
	.uleb128 0x277
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 11 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h"
	.byte	0x3
	.uleb128 0x27e
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 12 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h"
	.byte	0x3
	.uleb128 0x281
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.file 13 "../src/ADC.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0xb
	.long	.LASF1481
	.file 14 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro12
	.file 15 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1484
	.byte	0x4
	.file 16 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x4
	.file 17 "../src/UART.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x11
	.byte	0x5
	.uleb128 0xa
	.long	.LASF1538
	.byte	0x4
	.file 18 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x12
	.byte	0x7
	.long	.Ldebug_macro14
	.file 19 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.36.473802ecbcb5d4d38de6c7efbfcd3c60,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF440
	.byte	0x5
	.uleb128 0x79
	.long	.LASF441
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.41.052d062c327f27e210bb72c3d087afe5,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.long	.LASF443
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF444
	.byte	0x5
	.uleb128 0x122
	.long	.LASF445
	.byte	0x5
	.uleb128 0x123
	.long	.LASF446
	.byte	0x5
	.uleb128 0x133
	.long	.LASF447
	.byte	0x5
	.uleb128 0x138
	.long	.LASF448
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF449
	.byte	0x5
	.uleb128 0x150
	.long	.LASF450
	.byte	0x5
	.uleb128 0x155
	.long	.LASF451
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF452
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF453
	.byte	0x5
	.uleb128 0x164
	.long	.LASF454
	.byte	0x5
	.uleb128 0x169
	.long	.LASF455
	.byte	0x5
	.uleb128 0x170
	.long	.LASF456
	.byte	0x5
	.uleb128 0x175
	.long	.LASF457
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF458
	.byte	0x5
	.uleb128 0x184
	.long	.LASF459
	.byte	0x5
	.uleb128 0x189
	.long	.LASF460
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF461
	.byte	0x5
	.uleb128 0x193
	.long	.LASF462
	.byte	0x5
	.uleb128 0x198
	.long	.LASF463
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF465
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF466
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF467
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF468
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF469
	.byte	0x5
	.uleb128 0x1bb
	.long	.LASF470
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF471
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF472
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF473
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF475
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF476
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1e9
	.long	.LASF478
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF479
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF480
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF481
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF482
	.byte	0x5
	.uleb128 0x208
	.long	.LASF483
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF484
	.byte	0x5
	.uleb128 0x212
	.long	.LASF485
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF486
	.byte	0x5
	.uleb128 0x222
	.long	.LASF487
	.byte	0x5
	.uleb128 0x227
	.long	.LASF488
	.byte	0x5
	.uleb128 0x234
	.long	.LASF489
	.byte	0x5
	.uleb128 0x239
	.long	.LASF490
	.byte	0x5
	.uleb128 0x242
	.long	.LASF491
	.byte	0x5
	.uleb128 0x247
	.long	.LASF492
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF493
	.byte	0x5
	.uleb128 0x259
	.long	.LASF494
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF495
	.byte	0x5
	.uleb128 0x25d
	.long	.LASF496
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF497
	.byte	0x5
	.uleb128 0x271
	.long	.LASF498
	.byte	0x5
	.uleb128 0x272
	.long	.LASF499
	.byte	0x5
	.uleb128 0x273
	.long	.LASF500
	.byte	0x5
	.uleb128 0x274
	.long	.LASF501
	.byte	0x5
	.uleb128 0x275
	.long	.LASF502
	.byte	0x5
	.uleb128 0x276
	.long	.LASF503
	.byte	0x5
	.uleb128 0x277
	.long	.LASF504
	.byte	0x5
	.uleb128 0x278
	.long	.LASF505
	.byte	0x5
	.uleb128 0x279
	.long	.LASF506
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF507
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.96.afb9c4be73a069861f8689c997efc518,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x60
	.long	.LASF509
	.byte	0x5
	.uleb128 0x63
	.long	.LASF510
	.byte	0x5
	.uleb128 0x66
	.long	.LASF511
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF512
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF513
	.byte	0x5
	.uleb128 0x70
	.long	.LASF514
	.byte	0x5
	.uleb128 0x75
	.long	.LASF515
	.byte	0x5
	.uleb128 0x78
	.long	.LASF516
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF517
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF518
	.byte	0x5
	.uleb128 0x82
	.long	.LASF519
	.byte	0x5
	.uleb128 0x85
	.long	.LASF520
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF521
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF522
	.byte	0x5
	.uleb128 0x90
	.long	.LASF523
	.byte	0x5
	.uleb128 0x94
	.long	.LASF524
	.byte	0x5
	.uleb128 0x97
	.long	.LASF525
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF526
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF527
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF528
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF529
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF530
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF531
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF532
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF533
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF534
	.byte	0x5
	.uleb128 0xca
	.long	.LASF535
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF536
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF537
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF538
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF539
	.byte	0x5
	.uleb128 0xda
	.long	.LASF540
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF541
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF542
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF543
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF544
	.byte	0x5
	.uleb128 0xec
	.long	.LASF545
	.byte	0x5
	.uleb128 0xef
	.long	.LASF546
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF547
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF548
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF549
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF550
	.byte	0x5
	.uleb128 0x100
	.long	.LASF551
	.byte	0x5
	.uleb128 0x103
	.long	.LASF552
	.byte	0x5
	.uleb128 0x108
	.long	.LASF553
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF554
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF555
	.byte	0x5
	.uleb128 0x112
	.long	.LASF556
	.byte	0x5
	.uleb128 0x115
	.long	.LASF557
	.byte	0x5
	.uleb128 0x118
	.long	.LASF558
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF559
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF560
	.byte	0x5
	.uleb128 0x122
	.long	.LASF561
	.byte	0x5
	.uleb128 0x126
	.long	.LASF562
	.byte	0x5
	.uleb128 0x129
	.long	.LASF563
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF564
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF565
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF566
	.byte	0x5
	.uleb128 0x150
	.long	.LASF567
	.byte	0x5
	.uleb128 0x153
	.long	.LASF568
	.byte	0x5
	.uleb128 0x158
	.long	.LASF569
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF570
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF571
	.byte	0x5
	.uleb128 0x162
	.long	.LASF572
	.byte	0x5
	.uleb128 0x165
	.long	.LASF573
	.byte	0x5
	.uleb128 0x168
	.long	.LASF574
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF575
	.byte	0x5
	.uleb128 0x170
	.long	.LASF576
	.byte	0x5
	.uleb128 0x173
	.long	.LASF577
	.byte	0x5
	.uleb128 0x177
	.long	.LASF578
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF579
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF580
	.byte	0x5
	.uleb128 0x182
	.long	.LASF581
	.byte	0x5
	.uleb128 0x185
	.long	.LASF582
	.byte	0x5
	.uleb128 0x188
	.long	.LASF583
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF584
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF585
	.byte	0x5
	.uleb128 0x192
	.long	.LASF586
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF587
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF588
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF589
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF590
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF591
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF592
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF593
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF594
	.byte	0x5
	.uleb128 0x1c1
	.long	.LASF595
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF596
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF597
	.byte	0x5
	.uleb128 0x1cb
	.long	.LASF598
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF599
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF600
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF601
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF602
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF603
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF604
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF605
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF606
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF607
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF608
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF609
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF610
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF611
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF612
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF613
	.byte	0x5
	.uleb128 0x201
	.long	.LASF614
	.byte	0x5
	.uleb128 0x204
	.long	.LASF615
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF616
	.byte	0x5
	.uleb128 0x220
	.long	.LASF617
	.byte	0x5
	.uleb128 0x223
	.long	.LASF618
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sfr_defs.h.128.38ceebe2fb099c106e85a566519e0f1a,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x80
	.long	.LASF619
	.byte	0x5
	.uleb128 0x81
	.long	.LASF620
	.byte	0x5
	.uleb128 0x82
	.long	.LASF621
	.byte	0x5
	.uleb128 0xac
	.long	.LASF622
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF623
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF624
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF625
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF626
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF627
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF628
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF629
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF630
	.byte	0x5
	.uleb128 0xba
	.long	.LASF631
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF632
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF633
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF634
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF635
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF636
	.byte	0x5
	.uleb128 0xea
	.long	.LASF637
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF638
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF639
	.byte	0x5
	.uleb128 0x107
	.long	.LASF640
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.iom328p.h.44.29c929f46483155923fc58520c74ebf7,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF641
	.byte	0x5
	.uleb128 0x33
	.long	.LASF642
	.byte	0x5
	.uleb128 0x37
	.long	.LASF643
	.byte	0x5
	.uleb128 0x38
	.long	.LASF644
	.byte	0x5
	.uleb128 0x39
	.long	.LASF645
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF646
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF647
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF648
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF649
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF650
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF651
	.byte	0x5
	.uleb128 0x41
	.long	.LASF652
	.byte	0x5
	.uleb128 0x42
	.long	.LASF653
	.byte	0x5
	.uleb128 0x43
	.long	.LASF654
	.byte	0x5
	.uleb128 0x44
	.long	.LASF655
	.byte	0x5
	.uleb128 0x45
	.long	.LASF656
	.byte	0x5
	.uleb128 0x46
	.long	.LASF657
	.byte	0x5
	.uleb128 0x47
	.long	.LASF658
	.byte	0x5
	.uleb128 0x48
	.long	.LASF659
	.byte	0x5
	.uleb128 0x49
	.long	.LASF660
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF661
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF662
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF663
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF664
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF665
	.byte	0x5
	.uleb128 0x50
	.long	.LASF666
	.byte	0x5
	.uleb128 0x51
	.long	.LASF667
	.byte	0x5
	.uleb128 0x52
	.long	.LASF668
	.byte	0x5
	.uleb128 0x53
	.long	.LASF669
	.byte	0x5
	.uleb128 0x55
	.long	.LASF670
	.byte	0x5
	.uleb128 0x56
	.long	.LASF671
	.byte	0x5
	.uleb128 0x57
	.long	.LASF672
	.byte	0x5
	.uleb128 0x58
	.long	.LASF673
	.byte	0x5
	.uleb128 0x59
	.long	.LASF674
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF675
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF676
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF677
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF678
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF679
	.byte	0x5
	.uleb128 0x60
	.long	.LASF680
	.byte	0x5
	.uleb128 0x61
	.long	.LASF681
	.byte	0x5
	.uleb128 0x62
	.long	.LASF682
	.byte	0x5
	.uleb128 0x63
	.long	.LASF683
	.byte	0x5
	.uleb128 0x64
	.long	.LASF684
	.byte	0x5
	.uleb128 0x65
	.long	.LASF685
	.byte	0x5
	.uleb128 0x67
	.long	.LASF686
	.byte	0x5
	.uleb128 0x68
	.long	.LASF687
	.byte	0x5
	.uleb128 0x69
	.long	.LASF688
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF689
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF690
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF691
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF692
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF693
	.byte	0x5
	.uleb128 0x70
	.long	.LASF694
	.byte	0x5
	.uleb128 0x71
	.long	.LASF695
	.byte	0x5
	.uleb128 0x72
	.long	.LASF696
	.byte	0x5
	.uleb128 0x73
	.long	.LASF697
	.byte	0x5
	.uleb128 0x74
	.long	.LASF698
	.byte	0x5
	.uleb128 0x75
	.long	.LASF699
	.byte	0x5
	.uleb128 0x76
	.long	.LASF700
	.byte	0x5
	.uleb128 0x77
	.long	.LASF701
	.byte	0x5
	.uleb128 0x78
	.long	.LASF702
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF703
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF704
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF705
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF706
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF707
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF708
	.byte	0x5
	.uleb128 0x80
	.long	.LASF709
	.byte	0x5
	.uleb128 0x81
	.long	.LASF710
	.byte	0x5
	.uleb128 0x82
	.long	.LASF711
	.byte	0x5
	.uleb128 0x84
	.long	.LASF712
	.byte	0x5
	.uleb128 0x85
	.long	.LASF713
	.byte	0x5
	.uleb128 0x86
	.long	.LASF714
	.byte	0x5
	.uleb128 0x87
	.long	.LASF715
	.byte	0x5
	.uleb128 0x88
	.long	.LASF716
	.byte	0x5
	.uleb128 0x89
	.long	.LASF717
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF718
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF719
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF720
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF721
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF722
	.byte	0x5
	.uleb128 0x90
	.long	.LASF723
	.byte	0x5
	.uleb128 0x91
	.long	.LASF724
	.byte	0x5
	.uleb128 0x93
	.long	.LASF725
	.byte	0x5
	.uleb128 0x94
	.long	.LASF726
	.byte	0x5
	.uleb128 0x95
	.long	.LASF727
	.byte	0x5
	.uleb128 0x96
	.long	.LASF728
	.byte	0x5
	.uleb128 0x97
	.long	.LASF729
	.byte	0x5
	.uleb128 0x99
	.long	.LASF730
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF731
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF732
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF733
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF734
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF735
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF736
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF737
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF738
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF739
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF740
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF741
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF742
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF743
	.byte	0x5
	.uleb128 0xab
	.long	.LASF744
	.byte	0x5
	.uleb128 0xac
	.long	.LASF745
	.byte	0x5
	.uleb128 0xad
	.long	.LASF746
	.byte	0x5
	.uleb128 0xae
	.long	.LASF747
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF748
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF749
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF750
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF751
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF752
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF753
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF754
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF755
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF756
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF757
	.byte	0x5
	.uleb128 0xba
	.long	.LASF758
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF759
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF760
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF761
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF762
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF763
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF764
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF765
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF766
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF767
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF768
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF769
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF770
	.byte	0x5
	.uleb128 0xca
	.long	.LASF771
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF772
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF773
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF774
	.byte	0x5
	.uleb128 0xce
	.long	.LASF775
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF776
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF777
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF778
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF779
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF780
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF781
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF782
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF783
	.byte	0x5
	.uleb128 0xda
	.long	.LASF784
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF785
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF786
	.byte	0x5
	.uleb128 0xde
	.long	.LASF787
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF788
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF789
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF790
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF791
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF792
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF793
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF794
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF795
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF796
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF797
	.byte	0x5
	.uleb128 0xea
	.long	.LASF798
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF799
	.byte	0x5
	.uleb128 0xec
	.long	.LASF800
	.byte	0x5
	.uleb128 0xee
	.long	.LASF801
	.byte	0x5
	.uleb128 0xef
	.long	.LASF802
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF803
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF804
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF805
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF806
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF807
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF808
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF809
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF810
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF811
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF812
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF813
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF814
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF815
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF816
	.byte	0x5
	.uleb128 0xff
	.long	.LASF817
	.byte	0x5
	.uleb128 0x100
	.long	.LASF818
	.byte	0x5
	.uleb128 0x102
	.long	.LASF819
	.byte	0x5
	.uleb128 0x103
	.long	.LASF820
	.byte	0x5
	.uleb128 0x104
	.long	.LASF821
	.byte	0x5
	.uleb128 0x105
	.long	.LASF822
	.byte	0x5
	.uleb128 0x106
	.long	.LASF823
	.byte	0x5
	.uleb128 0x107
	.long	.LASF824
	.byte	0x5
	.uleb128 0x108
	.long	.LASF825
	.byte	0x5
	.uleb128 0x109
	.long	.LASF826
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF827
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF828
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF829
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF830
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF831
	.byte	0x5
	.uleb128 0x110
	.long	.LASF832
	.byte	0x5
	.uleb128 0x111
	.long	.LASF833
	.byte	0x5
	.uleb128 0x112
	.long	.LASF834
	.byte	0x5
	.uleb128 0x113
	.long	.LASF835
	.byte	0x5
	.uleb128 0x114
	.long	.LASF836
	.byte	0x5
	.uleb128 0x116
	.long	.LASF837
	.byte	0x5
	.uleb128 0x117
	.long	.LASF838
	.byte	0x5
	.uleb128 0x118
	.long	.LASF839
	.byte	0x5
	.uleb128 0x119
	.long	.LASF840
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF841
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF842
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF843
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF844
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF845
	.byte	0x5
	.uleb128 0x120
	.long	.LASF846
	.byte	0x5
	.uleb128 0x121
	.long	.LASF847
	.byte	0x5
	.uleb128 0x122
	.long	.LASF848
	.byte	0x5
	.uleb128 0x123
	.long	.LASF849
	.byte	0x5
	.uleb128 0x124
	.long	.LASF850
	.byte	0x5
	.uleb128 0x125
	.long	.LASF851
	.byte	0x5
	.uleb128 0x126
	.long	.LASF852
	.byte	0x5
	.uleb128 0x127
	.long	.LASF853
	.byte	0x5
	.uleb128 0x128
	.long	.LASF854
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF855
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF856
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF857
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF858
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF859
	.byte	0x5
	.uleb128 0x130
	.long	.LASF860
	.byte	0x5
	.uleb128 0x131
	.long	.LASF861
	.byte	0x5
	.uleb128 0x132
	.long	.LASF862
	.byte	0x5
	.uleb128 0x133
	.long	.LASF863
	.byte	0x5
	.uleb128 0x134
	.long	.LASF864
	.byte	0x5
	.uleb128 0x135
	.long	.LASF865
	.byte	0x5
	.uleb128 0x136
	.long	.LASF866
	.byte	0x5
	.uleb128 0x137
	.long	.LASF867
	.byte	0x5
	.uleb128 0x139
	.long	.LASF868
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF869
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF870
	.byte	0x5
	.uleb128 0x13c
	.long	.LASF871
	.byte	0x5
	.uleb128 0x13d
	.long	.LASF872
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF873
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF874
	.byte	0x5
	.uleb128 0x140
	.long	.LASF875
	.byte	0x5
	.uleb128 0x141
	.long	.LASF876
	.byte	0x5
	.uleb128 0x143
	.long	.LASF877
	.byte	0x5
	.uleb128 0x144
	.long	.LASF878
	.byte	0x5
	.uleb128 0x145
	.long	.LASF879
	.byte	0x5
	.uleb128 0x146
	.long	.LASF880
	.byte	0x5
	.uleb128 0x147
	.long	.LASF881
	.byte	0x5
	.uleb128 0x149
	.long	.LASF882
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF883
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF884
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF885
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF886
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF887
	.byte	0x5
	.uleb128 0x150
	.long	.LASF888
	.byte	0x5
	.uleb128 0x151
	.long	.LASF889
	.byte	0x5
	.uleb128 0x152
	.long	.LASF890
	.byte	0x5
	.uleb128 0x153
	.long	.LASF891
	.byte	0x5
	.uleb128 0x154
	.long	.LASF892
	.byte	0x5
	.uleb128 0x156
	.long	.LASF893
	.byte	0x5
	.uleb128 0x157
	.long	.LASF894
	.byte	0x5
	.uleb128 0x159
	.long	.LASF895
	.byte	0x5
	.uleb128 0x15a
	.long	.LASF896
	.byte	0x5
	.uleb128 0x15b
	.long	.LASF897
	.byte	0x5
	.uleb128 0x15c
	.long	.LASF898
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF899
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF900
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF901
	.byte	0x5
	.uleb128 0x160
	.long	.LASF902
	.byte	0x5
	.uleb128 0x162
	.long	.LASF903
	.byte	0x5
	.uleb128 0x163
	.long	.LASF904
	.byte	0x5
	.uleb128 0x164
	.long	.LASF905
	.byte	0x5
	.uleb128 0x165
	.long	.LASF906
	.byte	0x5
	.uleb128 0x166
	.long	.LASF907
	.byte	0x5
	.uleb128 0x167
	.long	.LASF908
	.byte	0x5
	.uleb128 0x168
	.long	.LASF909
	.byte	0x5
	.uleb128 0x169
	.long	.LASF910
	.byte	0x5
	.uleb128 0x16a
	.long	.LASF911
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF912
	.byte	0x5
	.uleb128 0x16d
	.long	.LASF913
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF914
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF915
	.byte	0x5
	.uleb128 0x170
	.long	.LASF916
	.byte	0x5
	.uleb128 0x171
	.long	.LASF917
	.byte	0x5
	.uleb128 0x173
	.long	.LASF918
	.byte	0x5
	.uleb128 0x174
	.long	.LASF919
	.byte	0x5
	.uleb128 0x175
	.long	.LASF920
	.byte	0x5
	.uleb128 0x176
	.long	.LASF921
	.byte	0x5
	.uleb128 0x177
	.long	.LASF922
	.byte	0x5
	.uleb128 0x178
	.long	.LASF923
	.byte	0x5
	.uleb128 0x179
	.long	.LASF924
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF925
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF926
	.byte	0x5
	.uleb128 0x17d
	.long	.LASF927
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF928
	.byte	0x5
	.uleb128 0x17f
	.long	.LASF929
	.byte	0x5
	.uleb128 0x180
	.long	.LASF930
	.byte	0x5
	.uleb128 0x181
	.long	.LASF931
	.byte	0x5
	.uleb128 0x182
	.long	.LASF932
	.byte	0x5
	.uleb128 0x183
	.long	.LASF933
	.byte	0x5
	.uleb128 0x185
	.long	.LASF934
	.byte	0x5
	.uleb128 0x186
	.long	.LASF935
	.byte	0x5
	.uleb128 0x187
	.long	.LASF936
	.byte	0x5
	.uleb128 0x188
	.long	.LASF937
	.byte	0x5
	.uleb128 0x189
	.long	.LASF938
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF939
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF940
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF941
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF942
	.byte	0x5
	.uleb128 0x18f
	.long	.LASF943
	.byte	0x5
	.uleb128 0x190
	.long	.LASF944
	.byte	0x5
	.uleb128 0x191
	.long	.LASF945
	.byte	0x5
	.uleb128 0x192
	.long	.LASF946
	.byte	0x5
	.uleb128 0x194
	.long	.LASF947
	.byte	0x5
	.uleb128 0x195
	.long	.LASF948
	.byte	0x5
	.uleb128 0x196
	.long	.LASF949
	.byte	0x5
	.uleb128 0x197
	.long	.LASF950
	.byte	0x5
	.uleb128 0x198
	.long	.LASF951
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF952
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF953
	.byte	0x5
	.uleb128 0x19c
	.long	.LASF954
	.byte	0x5
	.uleb128 0x19d
	.long	.LASF955
	.byte	0x5
	.uleb128 0x19e
	.long	.LASF956
	.byte	0x5
	.uleb128 0x19f
	.long	.LASF957
	.byte	0x5
	.uleb128 0x1a0
	.long	.LASF958
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF959
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF960
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF961
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF962
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF963
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF964
	.byte	0x5
	.uleb128 0x1a8
	.long	.LASF965
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF966
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF967
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF968
	.byte	0x5
	.uleb128 0x1ad
	.long	.LASF969
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF970
	.byte	0x5
	.uleb128 0x1af
	.long	.LASF971
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF972
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF973
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF974
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF975
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF976
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF977
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF978
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF979
	.byte	0x5
	.uleb128 0x1b9
	.long	.LASF980
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF981
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF982
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF983
	.byte	0x5
	.uleb128 0x1be
	.long	.LASF984
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF985
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF986
	.byte	0x5
	.uleb128 0x1c2
	.long	.LASF987
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF988
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF989
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF990
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF991
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF992
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF993
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF994
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF995
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF996
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF997
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF998
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF999
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF1003
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF1004
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF1015
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x1e8
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x1ea
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x1ee
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x1f0
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x1f2
	.long	.LASF1027
	.byte	0x5
	.uleb128 0x1f3
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1032
	.byte	0x5
	.uleb128 0x1f9
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x1fb
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x1fc
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x1fd
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x201
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x202
	.long	.LASF1041
	.byte	0x5
	.uleb128 0x203
	.long	.LASF1042
	.byte	0x5
	.uleb128 0x205
	.long	.LASF1043
	.byte	0x5
	.uleb128 0x206
	.long	.LASF1044
	.byte	0x5
	.uleb128 0x207
	.long	.LASF1045
	.byte	0x5
	.uleb128 0x208
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x209
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x20a
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x20d
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x20e
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x20f
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x210
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x211
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x212
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x213
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x214
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x216
	.long	.LASF1058
	.byte	0x5
	.uleb128 0x217
	.long	.LASF1059
	.byte	0x5
	.uleb128 0x218
	.long	.LASF1060
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF1062
	.byte	0x5
	.uleb128 0x21d
	.long	.LASF1063
	.byte	0x5
	.uleb128 0x21e
	.long	.LASF1064
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF1065
	.byte	0x5
	.uleb128 0x220
	.long	.LASF1066
	.byte	0x5
	.uleb128 0x221
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x222
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x223
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x224
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x226
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x227
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x228
	.long	.LASF1073
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1074
	.byte	0x5
	.uleb128 0x22a
	.long	.LASF1075
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x22c
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x22d
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x22e
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x230
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x232
	.long	.LASF1081
	.byte	0x5
	.uleb128 0x233
	.long	.LASF1082
	.byte	0x5
	.uleb128 0x234
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x235
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x236
	.long	.LASF1085
	.byte	0x5
	.uleb128 0x237
	.long	.LASF1086
	.byte	0x5
	.uleb128 0x238
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x239
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x23a
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x23c
	.long	.LASF1090
	.byte	0x5
	.uleb128 0x23d
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x23e
	.long	.LASF1092
	.byte	0x5
	.uleb128 0x23f
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1094
	.byte	0x5
	.uleb128 0x241
	.long	.LASF1095
	.byte	0x5
	.uleb128 0x242
	.long	.LASF1096
	.byte	0x5
	.uleb128 0x243
	.long	.LASF1097
	.byte	0x5
	.uleb128 0x244
	.long	.LASF1098
	.byte	0x5
	.uleb128 0x246
	.long	.LASF1099
	.byte	0x5
	.uleb128 0x248
	.long	.LASF1100
	.byte	0x5
	.uleb128 0x249
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x24b
	.long	.LASF1103
	.byte	0x5
	.uleb128 0x24c
	.long	.LASF1104
	.byte	0x5
	.uleb128 0x24d
	.long	.LASF1105
	.byte	0x5
	.uleb128 0x24e
	.long	.LASF1106
	.byte	0x5
	.uleb128 0x24f
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x252
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x253
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x254
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x255
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x256
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x257
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x258
	.long	.LASF1115
	.byte	0x5
	.uleb128 0x259
	.long	.LASF1116
	.byte	0x5
	.uleb128 0x25a
	.long	.LASF1117
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF1118
	.byte	0x5
	.uleb128 0x25e
	.long	.LASF1119
	.byte	0x5
	.uleb128 0x25f
	.long	.LASF1120
	.byte	0x5
	.uleb128 0x260
	.long	.LASF1121
	.byte	0x5
	.uleb128 0x261
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x262
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x263
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x264
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x265
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x266
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x268
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1129
	.byte	0x5
	.uleb128 0x26a
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x26b
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x274
	.long	.LASF1139
	.byte	0x5
	.uleb128 0x275
	.long	.LASF1140
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1141
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1142
	.byte	0x5
	.uleb128 0x278
	.long	.LASF1143
	.byte	0x5
	.uleb128 0x27a
	.long	.LASF1144
	.byte	0x5
	.uleb128 0x27b
	.long	.LASF1145
	.byte	0x5
	.uleb128 0x27c
	.long	.LASF1146
	.byte	0x5
	.uleb128 0x27d
	.long	.LASF1147
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x280
	.long	.LASF1150
	.byte	0x5
	.uleb128 0x282
	.long	.LASF1151
	.byte	0x5
	.uleb128 0x283
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x284
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x285
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x286
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x287
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x288
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x289
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x28a
	.long	.LASF1159
	.byte	0x5
	.uleb128 0x28c
	.long	.LASF1160
	.byte	0x5
	.uleb128 0x28d
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x28e
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x291
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x293
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x294
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x296
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x297
	.long	.LASF1161
	.byte	0x5
	.uleb128 0x298
	.long	.LASF1162
	.byte	0x5
	.uleb128 0x299
	.long	.LASF1163
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x29b
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x29d
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x29e
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x2a0
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x2a2
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x2a3
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x2a4
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x2a5
	.long	.LASF1175
	.byte	0x5
	.uleb128 0x2a6
	.long	.LASF1176
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1177
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x2ab
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x2af
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF1185
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF1186
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF1191
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x2c1
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x2cb
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x2d1
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x2d5
	.long	.LASF1218
	.byte	0x5
	.uleb128 0x2d6
	.long	.LASF1219
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF1220
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x2dd
	.long	.LASF1225
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF1226
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF1229
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF1230
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF1231
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1232
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF1233
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF1234
	.byte	0x5
	.uleb128 0x2e8
	.long	.LASF1235
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF1236
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF1237
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF1238
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF1239
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF1240
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF1241
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF1242
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF1243
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF1244
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF1245
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF1246
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1247
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF1248
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF1249
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF1250
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2fb
	.long	.LASF1252
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1253
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1255
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1256
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1257
	.byte	0x5
	.uleb128 0x302
	.long	.LASF1258
	.byte	0x5
	.uleb128 0x304
	.long	.LASF1259
	.byte	0x5
	.uleb128 0x305
	.long	.LASF1260
	.byte	0x5
	.uleb128 0x306
	.long	.LASF1261
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1262
	.byte	0x5
	.uleb128 0x308
	.long	.LASF1263
	.byte	0x5
	.uleb128 0x309
	.long	.LASF1264
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x30e
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x310
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x311
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x312
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x314
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x315
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x316
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x317
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x318
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x319
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x323
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x324
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x326
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x327
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x329
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x330
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x332
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x335
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x341
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x342
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x344
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x345
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x347
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x350
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x351
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x353
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x354
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x356
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x359
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x360
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x362
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x363
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x365
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x366
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x368
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x369
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x373
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x374
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x375
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x376
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x377
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x378
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x379
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x382
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x383
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x384
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x385
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x38d
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x38e
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF1353
	.byte	0x5
	.uleb128 0x390
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x392
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x393
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x394
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x398
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x399
	.long	.LASF1361
	.byte	0x5
	.uleb128 0x39a
	.long	.LASF1362
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF1363
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF1364
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1365
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF1366
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF1367
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF1368
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF1369
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x3b3
	.long	.LASF1375
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portpins.h.34.21289185946cbf62723ecc8db6cdc3ff,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x30
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x34
	.long	.LASF1384
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1389
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1390
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1391
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1392
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1408
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1409
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1410
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1411
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1412
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1413
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1414
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1415
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1416
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1417
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1418
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1419
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1420
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1421
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1422
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1423
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.common.h.35.c7e66042b2128622b9d3bddccc9a39f4,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1424
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1425
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1436
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1437
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1438
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1439
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1440
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1441
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1442
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1443
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1444
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1445
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1446
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1447
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1448
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1449
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1450
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1451
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.version.h.54.85699b1a50c61c991a37d67b69e79e95,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1453
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1459
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fuse.h.36.5c373c650020c0efef2cbaa98ea802c3,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1460
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1462
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.36.51f311078904691e8f8c3d70111251d8,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1463
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1464
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1465
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1466
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1467
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1468
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1469
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1470
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1471
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1472
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1473
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1474
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1475
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1476
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1477
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ADC.h.10.4375d630963ad1b8b9d883a341299c49,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF1478
	.byte	0x5
	.uleb128 0xb
	.long	.LASF1479
	.byte	0x5
	.uleb128 0xc
	.long	.LASF1480
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.delay.h.36.9b049a49ceee302c08fd72aec728bf54,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1483
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.math.h.49.c8a36eddb532146e0bb8ca9326ea4652,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1495
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1496
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1498
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1499
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1500
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1501
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1502
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1503
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1504
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1505
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1506
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1507
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1508
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1509
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1510
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1511
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1512
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1513
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF1514
	.byte	0x5
	.uleb128 0x100
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x106
	.long	.LASF1516
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1517
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1518
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF1519
	.byte	0x5
	.uleb128 0x123
	.long	.LASF1520
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x132
	.long	.LASF1522
	.byte	0x5
	.uleb128 0x138
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x13e
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x145
	.long	.LASF1525
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1526
	.byte	0x5
	.uleb128 0x161
	.long	.LASF1527
	.byte	0x5
	.uleb128 0x170
	.long	.LASF1528
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1530
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF1531
	.byte	0x5
	.uleb128 0x192
	.long	.LASF1532
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF1533
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF1534
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF1535
	.byte	0x5
	.uleb128 0x1b9
	.long	.LASF1536
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF1537
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.40.248a6087ef49adb4f4328833c0282d4b,comdat
.Ldebug_macro14:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1539
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1540
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF1541
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF1542
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.187.e1c83cba2098ce92b68f6311de19e6b1,comdat
.Ldebug_macro15:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1543
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1544
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1545
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1546
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1547
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1548
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1549
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1550
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1551
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1552
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1553
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1554
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1555
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1556
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1557
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1558
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1559
	.byte	0x6
	.uleb128 0xee
	.long	.LASF1560
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1561
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1562
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1563
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1564
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1565
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x111
	.long	.LASF1567
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1568
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1569
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1570
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1571
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1572
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1573
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1574
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1575
	.byte	0x6
	.uleb128 0x126
	.long	.LASF1576
	.byte	0x6
	.uleb128 0x15b
	.long	.LASF1577
	.byte	0x6
	.uleb128 0x191
	.long	.LASF1578
	.byte	0x5
	.uleb128 0x196
	.long	.LASF1579
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF1580
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdlib.h.51.b17834f4e5b9352d53ab037638bd1f7b,comdat
.Ldebug_macro16:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1581
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1582
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1583
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1584
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1585
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1586
	.byte	0x5
	.uleb128 0x84
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1588
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1589
	.byte	0x5
	.uleb128 0x269
	.long	.LASF1590
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x2a1
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x2a7
	.long	.LASF1594
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1115:
	.string	"OCR1AH5 5"
.LASF255:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF1523:
	.string	"log10f log10"
.LASF503:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF246:
	.string	"__UACCUM_FBIT__ 16"
.LASF215:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF152:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF956:
	.string	"PCINT3 3"
.LASF1425:
	.string	"SPL _SFR_IO8(0x3D)"
.LASF634:
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
.LASF843:
	.string	"GPIOR25 5"
.LASF1536:
	.string	"lroundf lround"
.LASF1028:
	.string	"MUX2 2"
.LASF732:
	.string	"OCF2A 1"
.LASF1071:
	.string	"TCNT1H _SFR_MEM8(0x85)"
.LASF247:
	.string	"__UACCUM_IBIT__ 16"
.LASF849:
	.string	"CPHA 2"
.LASF1097:
	.string	"ICR1H6 6"
.LASF1293:
	.string	"WDT_vect _VECTOR(6)"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF769:
	.string	"EEAR _SFR_IO16(0x21)"
.LASF539:
	.string	"PRIXLEAST8 \"X\""
.LASF1110:
	.string	"OCR1AH0 0"
.LASF612:
	.string	"SCNuFAST32 \"lu\""
.LASF1291:
	.string	"PCINT2_vect _VECTOR(5)"
.LASF946:
	.string	"PCIE2 2"
.LASF571:
	.string	"SCNdFAST8 \"hhd\""
.LASF133:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF863:
	.string	"SPDR3 3"
.LASF1530:
	.string	"fdimf fdim"
.LASF894:
	.string	"SELFPRGEN 0"
.LASF885:
	.string	"BORF 2"
.LASF647:
	.string	"PINB3 3"
.LASF1241:
	.string	"UCSZ02 2"
.LASF1218:
	.string	"TWSTA 5"
.LASF974:
	.string	"PCINT20 4"
.LASF1131:
	.string	"OCR1BH2 2"
.LASF1020:
	.string	"ADCSRB _SFR_MEM8(0x7B)"
.LASF439:
	.string	"_AVR_IO_H_ "
.LASF1498:
	.string	"M_SQRT1_2 0.70710678118654752440"
.LASF603:
	.string	"SCNuFAST16 \"u\""
.LASF1107:
	.string	"OCR1AL6 6"
.LASF452:
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
.LASF445:
	.string	"__CONCATenate(left,right) left ## right"
.LASF890:
	.string	"PUD 4"
.LASF1055:
	.string	"WGM13 4"
.LASF446:
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
.LASF0:
	.string	"__STDC__ 1"
.LASF1458:
	.string	"__AVR_LIBC_MINOR__ 0"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF227:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF912:
	.string	"CLKPR _SFR_MEM8(0x61)"
.LASF1038:
	.string	"ADC4D 4"
.LASF293:
	.string	"__SA_FBIT__ 15"
.LASF185:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF303:
	.string	"__UDA_FBIT__ 32"
.LASF1153:
	.string	"TCNT2_1 1"
.LASF269:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF438:
	.string	"BOARD ATMEGA328P_XPLAINED_MINI"
.LASF796:
	.string	"CS01 1"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF315:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF1089:
	.string	"ICR1L7 7"
.LASF870:
	.string	"ACIS1 1"
.LASF1265:
	.string	"UBRR0_5 5"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF330:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF756:
	.string	"EEMPE 2"
.LASF903:
	.string	"WDTCSR _SFR_MEM8(0x60)"
.LASF581:
	.string	"SCNd32 \"ld\""
.LASF294:
	.string	"__SA_IBIT__ 16"
.LASF1520:
	.string	"atanf atan"
.LASF150:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF304:
	.string	"__UDA_IBIT__ 32"
.LASF1069:
	.string	"TCNT1L6 6"
.LASF1270:
	.string	"UBRR0_9 1"
.LASF678:
	.string	"DDRC _SFR_IO8(0x07)"
.LASF18:
	.string	"__SIZEOF_LONG__ 4"
.LASF589:
	.string	"SCNo8 \"hho\""
.LASF536:
	.string	"PRIxLEAST8 \"x\""
.LASF1463:
	.string	"_AVR_LOCK_H_ 1"
.LASF1579:
	.string	"NULL ((void *)0)"
.LASF148:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF1059:
	.string	"FOC1B 6"
.LASF1123:
	.string	"OCR1BL3 3"
.LASF1400:
	.string	"PIN0 0"
.LASF520:
	.string	"PRIiFAST16 \"i\""
.LASF1189:
	.string	"TWPS1 1"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF713:
	.string	"PORTD0 0"
.LASF1433:
	.string	"SREG_S (4)"
.LASF708:
	.string	"DDD4 4"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF806:
	.string	"TCNT0_4 4"
.LASF692:
	.string	"PORTC5 5"
.LASF144:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF1351:
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
.LASF1501:
	.string	"__ATTR_CONST__ __attribute__((__const__))"
.LASF486:
	.string	"INTMAX_MAX INT64_MAX"
.LASF1506:
	.string	"fmodf fmod"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF277:
	.string	"__DQ_FBIT__ 63"
.LASF154:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF250:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF568:
	.string	"PRIXPTR PRIX16"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF998:
	.string	"ADCL4 4"
.LASF481:
	.string	"INT_FAST64_MIN INT64_MIN"
.LASF1175:
	.string	"TCN2UB 4"
.LASF470:
	.string	"UINT_LEAST64_MAX UINT64_MAX"
.LASF140:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1307:
	.string	"TIMER1_OVF_vect _VECTOR(13)"
.LASF585:
	.string	"SCNiLEAST32 \"li\""
.LASF1598:
	.string	"uint16_t"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF178:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1205:
	.string	"TWD0 0"
.LASF360:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF355:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF319:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1036:
	.string	"ADC2D 2"
.LASF1534:
	.string	"truncf trunc"
.LASF1481:
	.string	"F_CPU 16000000UL"
.LASF267:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF488:
	.string	"UINTMAX_MAX UINT64_MAX"
.LASF1011:
	.string	"ADCSRA _SFR_MEM8(0x7A)"
.LASF614:
	.string	"SCNxLEAST32 \"lx\""
.LASF899:
	.string	"RWWSRE 4"
.LASF1286:
	.string	"PCINT0_vect_num 3"
.LASF1027:
	.string	"MUX1 1"
.LASF450:
	.string	"INT16_MAX 0x7fff"
.LASF1477:
	.string	"LOCKBITS_DEFAULT (0xFF)"
.LASF477:
	.string	"INT_FAST32_MAX INT32_MAX"
.LASF1213:
	.string	"TWCR _SFR_MEM8(0xBC)"
.LASF1494:
	.string	"M_1_PI 0.31830988618379067154"
.LASF826:
	.string	"OCR0B_6 6"
.LASF1322:
	.string	"ADC_vect_num 21"
.LASF198:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF699:
	.string	"PIND4 4"
.LASF602:
	.string	"SCNuLEAST16 \"u\""
.LASF940:
	.string	"CAL5 5"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF889:
	.string	"IVSEL 1"
.LASF781:
	.string	"EEAR9 1"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF1179:
	.string	"TWBR0 0"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF1168:
	.string	"OCR2_7 7"
.LASF73:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1353:
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
.LASF657:
	.string	"DDB4 4"
.LASF617:
	.string	"SCNuPTR SCNu16"
.LASF662:
	.string	"PORTB0 0"
.LASF1461:
	.string	"FUSEMEM __attribute__((__used__, __section__ (\".fuse\")))"
.LASF1187:
	.string	"TWSR _SFR_MEM8(0xB9)"
.LASF909:
	.string	"WDP3 5"
.LASF876:
	.string	"ACD 7"
.LASF521:
	.string	"PRId32 \"ld\""
.LASF1326:
	.string	"ANALOG_COMP_vect_num 23"
.LASF1527:
	.string	"isfinitef isfinite"
.LASF837:
	.string	"GPIOR2 _SFR_IO8(0x2B)"
.LASF1259:
	.string	"UBRR0L _SFR_MEM8(0xC4)"
.LASF1243:
	.string	"RXEN0 4"
.LASF145:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF306:
	.string	"__UTA_IBIT__ 16"
.LASF1190:
	.string	"TWS3 3"
.LASF1516:
	.string	"sinhf sinh"
.LASF440:
	.string	"_AVR_SFR_DEFS_H_ 1"
.LASF566:
	.string	"PRIuPTR PRIu16"
.LASF116:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1116:
	.string	"OCR1AH6 6"
.LASF923:
	.string	"PRTIM0 5"
.LASF1592:
	.string	"DTOSTR_UPPERCASE 0x04"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF339:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF96:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF957:
	.string	"PCINT4 4"
.LASF17:
	.string	"__SIZEOF_INT__ 2"
.LASF1034:
	.string	"ADC0D 0"
.LASF844:
	.string	"GPIOR26 6"
.LASF184:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF1310:
	.string	"TIMER0_COMPB_vect_num 15"
.LASF744:
	.string	"GPIOR0 _SFR_IO8(0x1E)"
.LASF266:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF1029:
	.string	"MUX3 3"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF1554:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF396:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF1098:
	.string	"ICR1H7 7"
.LASF1169:
	.string	"OCR2B _SFR_MEM8(0xB4)"
.LASF322:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF1376:
	.string	"_AVR_PORTPINS_H_ 1"
.LASF1395:
	.string	"PIN5 5"
.LASF1078:
	.string	"TCNT1H6 6"
.LASF864:
	.string	"SPDR4 4"
.LASF275:
	.string	"__SQ_FBIT__ 31"
.LASF1538:
	.string	"UART_H_ "
.LASF491:
	.string	"SIG_ATOMIC_MAX INT8_MAX"
.LASF327:
	.string	"__AVR__ 1"
.LASF648:
	.string	"PINB4 4"
.LASF1337:
	.string	"XRAMEND RAMEND"
.LASF907:
	.string	"WDE 3"
.LASF970:
	.string	"PCINT16 0"
.LASF989:
	.string	"OCIE2A 1"
.LASF1012:
	.string	"ADPS0 0"
.LASF1132:
	.string	"OCR1BH3 3"
.LASF973:
	.string	"PCINT19 3"
.LASF1170:
	.string	"ASSR _SFR_MEM8(0xB6)"
.LASF507:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF271:
	.string	"__QQ_FBIT__ 7"
.LASF1197:
	.string	"TWA0 1"
.LASF1108:
	.string	"OCR1AL7 7"
.LASF1368:
	.string	"SIGNATURE_1 0x95"
.LASF26:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF1469:
	.string	"BLB0_MODE_1 (0xFF)"
.LASF599:
	.string	"SCNoLEAST16 \"o\""
.LASF1274:
	.string	"UDR0_0 0"
.LASF1407:
	.string	"PB6 PORTB6"
.LASF1377:
	.string	"PORT7 7"
.LASF1007:
	.string	"ADCH4 4"
.LASF893:
	.string	"SPMCSR _SFR_IO8(0x37)"
.LASF1154:
	.string	"TCNT2_2 2"
.LASF873:
	.string	"ACI 4"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF1392:
	.string	"DD0 0"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF830:
	.string	"GPIOR11 1"
.LASF305:
	.string	"__UTA_FBIT__ 48"
.LASF1002:
	.string	"ADCH _SFR_MEM8(0x79)"
.LASF783:
	.string	"GTCCR _SFR_IO8(0x23)"
.LASF751:
	.string	"GPIOR06 6"
.LASF1427:
	.string	"SPH _SFR_IO8(0x3E)"
.LASF1070:
	.string	"TCNT1L7 7"
.LASF511:
	.string	"PRIdFAST8 \"d\""
.LASF618:
	.string	"SCNxPTR SCNx16"
.LASF546:
	.string	"PRIuFAST16 \"u\""
.LASF232:
	.string	"__SACCUM_IBIT__ 8"
.LASF1535:
	.string	"roundf round"
.LASF847:
	.string	"SPR0 0"
.LASF1124:
	.string	"OCR1BL4 4"
.LASF1013:
	.string	"ADPS1 1"
.LASF483:
	.string	"INTPTR_MAX INT16_MAX"
.LASF714:
	.string	"PORTD1 1"
.LASF1311:
	.string	"TIMER0_COMPB_vect _VECTOR(15)"
.LASF1484:
	.string	"_UTIL_DELAY_BASIC_H_ 1"
.LASF693:
	.string	"PORTC6 6"
.LASF1600:
	.string	"long int"
.LASF1211:
	.string	"TWD6 6"
.LASF761:
	.string	"EEDR0 0"
.LASF785:
	.string	"PSRASY 1"
.LASF1290:
	.string	"PCINT2_vect_num 5"
.LASF859:
	.string	"SPDR _SFR_IO8(0x2E)"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF468:
	.string	"INT_LEAST64_MAX INT64_MAX"
.LASF1046:
	.string	"COM1B0 4"
.LASF505:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1347:
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
.LASF455:
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
.LASF490:
	.string	"PTRDIFF_MIN INT16_MIN"
.LASF633:
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
.LASF1325:
	.string	"EE_READY_vect _VECTOR(22)"
.LASF1373:
	.string	"SLEEP_MODE_PWR_SAVE (0x03<<1)"
.LASF132:
	.string	"__FLT_MAX_EXP__ 128"
.LASF1006:
	.string	"ADCH3 3"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1304:
	.string	"TIMER1_COMPB_vect_num 12"
.LASF1557:
	.string	"_GCC_SIZE_T "
.LASF1515:
	.string	"coshf cosh"
.LASF1419:
	.string	"PD3 PORTD3"
.LASF142:
	.string	"__DBL_MANT_DIG__ 24"
.LASF301:
	.string	"__USA_FBIT__ 16"
.LASF582:
	.string	"SCNdLEAST32 \"ld\""
.LASF328:
	.string	"AVR 1"
.LASF554:
	.string	"PRIoLEAST32 \"lo\""
.LASF573:
	.string	"SCNiLEAST8 \"hhi\""
.LASF427:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF661:
	.string	"PORTB _SFR_IO8(0x05)"
.LASF644:
	.string	"PINB0 0"
.LASF1260:
	.string	"UBRR0_0 0"
.LASF458:
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
.LASF422:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF1583:
	.string	"__ATTR_NORETURN__ __attribute__((__noreturn__))"
.LASF124:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF1465:
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
.LASF827:
	.string	"OCR0B_7 7"
.LASF700:
	.string	"PIND5 5"
.LASF941:
	.string	"CAL6 6"
.LASF401:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF1364:
	.string	"__LOCK_BITS_EXIST "
.LASF559:
	.string	"PRIx32 \"lx\""
.LASF212:
	.string	"__LFRACT_IBIT__ 0"
.LASF679:
	.string	"DDC0 0"
.LASF1180:
	.string	"TWBR1 1"
.LASF308:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1341:
	.string	"FUSE_MEMORY_SIZE 3"
.LASF663:
	.string	"PORTB1 1"
.LASF1478:
	.string	"ADC_H_ "
.LASF741:
	.string	"EIMSK _SFR_IO8(0x1D)"
.LASF811:
	.string	"OCR0A_0 0"
.LASF723:
	.string	"OCF0A 1"
.LASF786:
	.string	"TSM 7"
.LASF272:
	.string	"__QQ_IBIT__ 0"
.LASF562:
	.string	"PRIX32 \"lX\""
.LASF1609:
	.string	"D:\\\\descargas\\\\GccMatrixWS2812 V3\\\\GccMatrixWS2812 V3\\\\Debug"
.LASF454:
	.string	"INT32_MIN (-INT32_MAX - 1L)"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF1191:
	.string	"TWS4 4"
.LASF358:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF929:
	.string	"__AVR_HAVE_PRR_PRSPI "
.LASF1117:
	.string	"OCR1AH7 7"
.LASF537:
	.string	"PRIxFAST8 \"x\""
.LASF1606:
	.string	"read_VRX"
.LASF1605:
	.string	"read_VRY"
.LASF1483:
	.string	"__HAS_DELAY_CYCLES 1"
.LASF1511:
	.string	"ceilf ceil"
.LASF891:
	.string	"BODSE 5"
.LASF378:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF320:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF958:
	.string	"PCINT5 5"
.LASF425:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF845:
	.string	"GPIOR27 7"
.LASF223:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF1161:
	.string	"OCR2_0 0"
.LASF373:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF479:
	.string	"UINT_FAST32_MAX UINT32_MAX"
.LASF1352:
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
.LASF919:
	.string	"PRADC 0"
.LASF208:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF431:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF871:
	.string	"ACIC 2"
.LASF1547:
	.string	"_T_SIZE_ "
.LASF131:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF706:
	.string	"DDD2 2"
.LASF752:
	.string	"GPIOR07 7"
.LASF1394:
	.string	"PIN6 6"
.LASF1079:
	.string	"TCNT1H7 7"
.LASF865:
	.string	"SPDR5 5"
.LASF671:
	.string	"PINC0 0"
.LASF485:
	.string	"UINTPTR_MAX UINT16_MAX"
.LASF288:
	.string	"__UDQ_IBIT__ 0"
.LASF233:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF1051:
	.string	"CS10 0"
.LASF771:
	.string	"EEAR0 0"
.LASF649:
	.string	"PINB5 5"
.LASF1195:
	.string	"TWAR _SFR_MEM8(0xBA)"
.LASF976:
	.string	"PCINT22 6"
.LASF971:
	.string	"PCINT17 1"
.LASF990:
	.string	"OCIE2B 2"
.LASF263:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF1133:
	.string	"OCR1BH4 4"
.LASF519:
	.string	"PRIiLEAST16 \"i\""
.LASF175:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF1503:
	.string	"sinf sin"
.LASF875:
	.string	"ACBG 6"
.LASF1138:
	.string	"WGM20 0"
.LASF534:
	.string	"PRIuFAST8 \"u\""
.LASF1490:
	.string	"M_LN10 2.30258509299404568402"
.LASF540:
	.string	"PRIXFAST8 \"X\""
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF1460:
	.string	"_AVR_FUSE_H_ 1"
.LASF1559:
	.string	"__size_t "
.LASF21:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1043:
	.string	"TCCR1A _SFR_MEM8(0x80)"
.LASF1486:
	.string	"M_E 2.7182818284590452354"
.LASF628:
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
.LASF1275:
	.string	"UDR0_1 1"
.LASF500:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF1414:
	.string	"PC5 PORTC5"
.LASF1155:
	.string	"TCNT2_3 3"
.LASF1489:
	.string	"M_LN2 0.69314718055994530942"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF205:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF757:
	.string	"EERIE 3"
.LASF1053:
	.string	"CS12 2"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF1147:
	.string	"CS22 2"
.LASF831:
	.string	"GPIOR12 2"
.LASF1100:
	.string	"OCR1AL _SFR_MEM8(0x88)"
.LASF584:
	.string	"SCNi32 \"li\""
.LASF498:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF1497:
	.string	"M_SQRT2 1.41421356237309504880"
.LASF219:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF902:
	.string	"SPMIE 7"
.LASF478:
	.string	"INT_FAST32_MIN INT32_MIN"
.LASF149:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF228:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF895:
	.string	"SPMEN 0"
.LASF336:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF1551:
	.string	"_BSD_SIZE_T_ "
.LASF848:
	.string	"SPR1 1"
.LASF426:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF1596:
	.string	"unsigned char"
.LASF630:
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
.LASF1125:
	.string	"OCR1BL5 5"
.LASF389:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF192:
	.string	"__SFRACT_IBIT__ 0"
.LASF1234:
	.string	"FE0 4"
.LASF623:
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
.LASF1268:
	.string	"UBRR0H _SFR_MEM8(0xC5)"
.LASF1439:
	.string	"YL r28"
.LASF715:
	.string	"PORTD2 2"
.LASF27:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF710:
	.string	"DDD6 6"
.LASF1441:
	.string	"ZL r30"
.LASF733:
	.string	"OCF2B 2"
.LASF1212:
	.string	"TWD7 7"
.LASF979:
	.string	"TOIE0 0"
.LASF129:
	.string	"__FLT_DIG__ 6"
.LASF399:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF762:
	.string	"EEDR1 1"
.LASF1587:
	.string	"labs(__i) __builtin_labs(__i)"
.LASF981:
	.string	"OCIE0B 2"
.LASF927:
	.string	"__AVR_HAVE_PRR_PRADC "
.LASF1047:
	.string	"COM1B1 5"
.LASF259:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF222:
	.string	"__LLFRACT_IBIT__ 0"
.LASF1344:
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
.LASF788:
	.string	"WGM00 0"
.LASF668:
	.string	"PORTB6 6"
.LASF935:
	.string	"CAL0 0"
.LASF597:
	.string	"SCNxFAST8 \"hhx\""
.LASF216:
	.string	"__ULFRACT_FBIT__ 32"
.LASF24:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF510:
	.string	"PRIdLEAST8 \"d\""
.LASF188:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF1524:
	.string	"powf pow"
.LASF1482:
	.string	"_UTIL_DELAY_H_ 1"
.LASF1358:
	.string	"FUSE_RSTDISBL (unsigned char)~_BV(7)"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF734:
	.string	"PCIFR _SFR_IO8(0x1B)"
.LASF1261:
	.string	"UBRR0_1 1"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF880:
	.string	"SM1 2"
.LASF411:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF191:
	.string	"__SFRACT_FBIT__ 7"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF728:
	.string	"OCF1B 2"
.LASF286:
	.string	"__USQ_IBIT__ 0"
.LASF701:
	.string	"PIND6 6"
.LASF942:
	.string	"CAL7 7"
.LASF523:
	.string	"PRIdFAST32 \"ld\""
.LASF1288:
	.string	"PCINT1_vect_num 4"
.LASF19:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF592:
	.string	"SCNu8 \"hhu\""
.LASF509:
	.string	"PRId8 \"d\""
.LASF541:
	.string	"PRIo16 \"o\""
.LASF1338:
	.string	"E2END 0x3FF"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1181:
	.string	"TWBR2 2"
.LASF494:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF664:
	.string	"PORTB2 2"
.LASF659:
	.string	"DDB6 6"
.LASF812:
	.string	"OCR0A_1 1"
.LASF1232:
	.string	"UPE0 2"
.LASF724:
	.string	"OCF0B 2"
.LASF337:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF1569:
	.string	"_WCHAR_T_DEFINED_ "
.LASF1016:
	.string	"ADIF 4"
.LASF952:
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
.LASF1081:
	.string	"ICR1L _SFR_MEM8(0x86)"
.LASF1444:
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
.LASF492:
	.string	"SIG_ATOMIC_MIN INT8_MIN"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF1210:
	.string	"TWD5 5"
.LASF1356:
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
.LASF866:
	.string	"SPDR6 6"
.LASF90:
	.string	"__INT16_MAX__ 0x7fff"
.LASF128:
	.string	"__FLT_MANT_DIG__ 24"
.LASF513:
	.string	"PRIiLEAST8 \"i\""
.LASF959:
	.string	"PCINT6 6"
.LASF256:
	.string	"__ULACCUM_FBIT__ 32"
.LASF1062:
	.string	"TCNT1L _SFR_MEM8(0x84)"
.LASF1192:
	.string	"TWS5 5"
.LASF576:
	.string	"SCNdLEAST16 \"d\""
.LASF1285:
	.string	"INT1_vect _VECTOR(2)"
.LASF393:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF545:
	.string	"PRIuLEAST16 \"u\""
.LASF257:
	.string	"__ULACCUM_IBIT__ 32"
.LASF570:
	.string	"SCNdLEAST8 \"hhd\""
.LASF735:
	.string	"PCIF0 0"
.LASF75:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF1571:
	.string	"_WCHAR_T_H "
.LASF173:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF130:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF672:
	.string	"PINC1 1"
.LASF484:
	.string	"INTPTR_MIN INT16_MIN"
.LASF30:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1052:
	.string	"CS11 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF772:
	.string	"EEAR1 1"
.LASF650:
	.string	"PINB6 6"
.LASF127:
	.string	"__FLT_RADIX__ 2"
.LASF977:
	.string	"PCINT23 7"
.LASF323:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF273:
	.string	"__HQ_FBIT__ 15"
.LASF1014:
	.string	"ADPS2 2"
.LASF1134:
	.string	"OCR1BH5 5"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF742:
	.string	"INT0 0"
.LASF469:
	.string	"INT_LEAST64_MIN INT64_MIN"
.LASF1139:
	.string	"WGM21 1"
.LASF1199:
	.string	"TWA2 3"
.LASF515:
	.string	"PRId16 \"d\""
.LASF361:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF784:
	.string	"PSRSYNC 0"
.LASF1401:
	.string	"PB0 PORTB0"
.LASF779:
	.string	"EEARH _SFR_IO8(0x22)"
.LASF302:
	.string	"__USA_IBIT__ 16"
.LASF245:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF626:
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
.LASF254:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF1276:
	.string	"UDR0_2 2"
.LASF712:
	.string	"PORTD _SFR_IO8(0x0B)"
.LASF950:
	.string	"ISC10 2"
.LASF1009:
	.string	"ADCH6 6"
.LASF1156:
	.string	"TCNT2_4 4"
.LASF176:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF1420:
	.string	"PD4 PORTD4"
.LASF1273:
	.string	"UDR0 _SFR_MEM8(0xC6)"
.LASF1357:
	.string	"FUSE_DWEN (unsigned char)~_BV(6)"
.LASF1354:
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
.LASF1390:
	.string	"DD2 2"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF832:
	.string	"GPIOR13 3"
.LASF1024:
	.string	"ACME 6"
.LASF351:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF1529:
	.string	"signbitf signbit"
.LASF961:
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
.LASF465:
	.string	"INT_LEAST32_MAX INT32_MAX"
.LASF480:
	.string	"INT_FAST64_MAX INT64_MAX"
.LASF1468:
	.string	"LB_MODE_3 (0xFC)"
.LASF287:
	.string	"__UDQ_FBIT__ 64"
.LASF1342:
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
.LASF1409:
	.string	"PC0 PORTC0"
.LASF1430:
	.string	"SREG_Z (1)"
.LASF897:
	.string	"PGWRT 2"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF1466:
	.string	"LB_MODE_1 (0xFF)"
.LASF631:
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
.LASF1402:
	.string	"PB1 PORTB1"
.LASF716:
	.string	"PORTD3 3"
.LASF711:
	.string	"DDD7 7"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 0x7f"
.LASF1018:
	.string	"ADSC 6"
.LASF1504:
	.string	"tanf tan"
.LASF983:
	.string	"TOIE1 0"
.LASF1467:
	.string	"LB_MODE_2 (0xFE)"
.LASF203:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF1366:
	.string	"__BOOT_LOCK_BITS_1_EXIST "
.LASF561:
	.string	"PRIxFAST32 \"lx\""
.LASF1001:
	.string	"ADCL7 7"
.LASF1493:
	.string	"M_PI_4 0.78539816339744830962"
.LASF317:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF789:
	.string	"WGM01 1"
.LASF933:
	.string	"__AVR_HAVE_PRR_PRTWI "
.LASF428:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF283:
	.string	"__UHQ_FBIT__ 16"
.LASF1597:
	.string	"uint8_t"
.LASF1300:
	.string	"TIMER1_CAPT_vect_num 10"
.LASF499:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF1319:
	.string	"USART_UDRE_vect _VECTOR(19)"
.LASF475:
	.string	"INT_FAST16_MIN INT16_MIN"
.LASF1416:
	.string	"PD0 PORTD0"
.LASF1590:
	.string	"DTOSTR_ALWAYS_SIGN 0x01"
.LASF1082:
	.string	"ICR1L0 0"
.LASF186:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1247:
	.string	"UCSR0C _SFR_MEM8(0xC2)"
.LASF77:
	.string	"__WCHAR_MAX__ 0x7fff"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF1355:
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
.LASF1410:
	.string	"PC1 PORTC1"
.LASF792:
	.string	"COM0A0 6"
.LASF331:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF993:
	.string	"ADCL _SFR_MEM8(0x78)"
.LASF794:
	.string	"TCCR0B _SFR_IO8(0x25)"
.LASF345:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF645:
	.string	"PINB1 1"
.LASF1403:
	.string	"PB2 PORTB2"
.LASF414:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF1262:
	.string	"UBRR0_2 2"
.LASF948:
	.string	"ISC00 0"
.LASF449:
	.string	"UINT8_MAX (INT8_MAX * 2 + 1)"
.LASF575:
	.string	"SCNd16 \"d\""
.LASF881:
	.string	"SM2 3"
.LASF1443:
	.string	"AVR_STATUS_REG SREG"
.LASF1222:
	.string	"TWAM0 0"
.LASF1574:
	.string	"_GCC_WCHAR_T "
.LASF1556:
	.string	"___int_size_t_h "
.LASF1021:
	.string	"ADTS0 0"
.LASF702:
	.string	"PIND7 7"
.LASF397:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF350:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF391:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF640:
	.string	"loop_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
.LASF572:
	.string	"SCNi8 \"hhi\""
.LASF349:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF201:
	.string	"__FRACT_FBIT__ 15"
.LASF1217:
	.string	"TWSTO 4"
.LASF681:
	.string	"DDC2 2"
.LASF443:
	.string	"__STDINT_H_ "
.LASF1182:
	.string	"TWBR3 3"
.LASF1541:
	.string	"__need_size_t "
.LASF1184:
	.string	"TWBR5 5"
.LASF665:
	.string	"PORTB3 3"
.LASF624:
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
.LASF91:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF660:
	.string	"DDB7 7"
.LASF813:
	.string	"OCR0A_2 2"
.LASF1305:
	.string	"TIMER1_COMPB_vect _VECTOR(12)"
.LASF1417:
	.string	"PD1 PORTD1"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF1576:
	.string	"_BSD_WCHAR_T_"
.LASF394:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF72:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF321:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1411:
	.string	"PC2 PORTC2"
.LASF1550:
	.string	"_SIZE_T_ "
.LASF1037:
	.string	"ADC3D 3"
.LASF420:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF235:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF1193:
	.string	"TWS6 6"
.LASF1404:
	.string	"PB3 PORTB3"
.LASF1560:
	.string	"__need_size_t"
.LASF229:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF359:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF290:
	.string	"__UTQ_IBIT__ 0"
.LASF1507:
	.string	"cbrtf cbrt"
.LASF220:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF291:
	.string	"__HA_FBIT__ 7"
.LASF960:
	.string	"PCINT7 7"
.LASF604:
	.string	"SCNx16 \"x\""
.LASF248:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF115:
	.string	"__INT_FAST32_MAX__ 0x7fffffffL"
.LASF68:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF553:
	.string	"PRIo32 \"lo\""
.LASF1349:
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
.LASF377:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF1214:
	.string	"TWIE 0"
.LASF187:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF1313:
	.string	"TIMER0_OVF_vect _VECTOR(16)"
.LASF1362:
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
.LASF586:
	.string	"SCNiFAST32 \"li\""
.LASF1328:
	.string	"TWI_vect_num 24"
.LASF8:
	.string	"__VERSION__ \"5.4.0\""
.LASF210:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF177:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF141:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1607:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g3 -O1 -std=gnu99 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF508:
	.string	"_GCC_WRAP_STDINT_H "
.LASF606:
	.string	"SCNxFAST16 \"x\""
.LASF872:
	.string	"ACIE 3"
.LASF736:
	.string	"PCIF1 1"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF1236:
	.string	"TXC0 6"
.LASF643:
	.string	"PINB _SFR_IO8(0x03)"
.LASF1418:
	.string	"PD2 PORTD2"
.LASF600:
	.string	"SCNoFAST16 \"o\""
.LASF887:
	.string	"MCUCR _SFR_IO8(0x35)"
.LASF1111:
	.string	"OCR1AH1 1"
.LASF867:
	.string	"SPDR7 7"
.LASF673:
	.string	"PINC2 2"
.LASF1456:
	.string	"__AVR_LIBC_DATE_ 20150208UL"
.LASF1412:
	.string	"PC3 PORTC3"
.LASF988:
	.string	"TOIE2 0"
.LASF1144:
	.string	"TCCR2B _SFR_MEM8(0xB1)"
.LASF591:
	.string	"SCNoFAST8 \"hho\""
.LASF264:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF773:
	.string	"EEAR2 2"
.LASF803:
	.string	"TCNT0_1 1"
.LASF161:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF29:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1135:
	.string	"OCR1BH6 6"
.LASF76:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1393:
	.string	"PIN7 7"
.LASF851:
	.string	"MSTR 4"
.LASF743:
	.string	"INT1 1"
.LASF270:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF241:
	.string	"__ACCUM_FBIT__ 15"
.LASF1148:
	.string	"WGM22 3"
.LASF558:
	.string	"PRIuFAST32 \"lu\""
.LASF1200:
	.string	"TWA3 4"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF137:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF284:
	.string	"__UHQ_IBIT__ 0"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF625:
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
.LASF504:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF1346:
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
.LASF1408:
	.string	"PB7 PORTB7"
.LASF1277:
	.string	"UDR0_3 3"
.LASF1521:
	.string	"atan2f atan2"
.LASF951:
	.string	"ISC11 3"
.LASF1244:
	.string	"UDRIE0 5"
.LASF1010:
	.string	"ADCH7 7"
.LASF242:
	.string	"__ACCUM_IBIT__ 16"
.LASF637:
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
.LASF1584:
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
.LASF930:
	.string	"__AVR_HAVE_PRR_PRTIM1 "
.LASF338:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF1389:
	.string	"DD3 3"
.LASF1531:
	.string	"fmaf fma"
.LASF1248:
	.string	"UCPOL0 0"
.LASF833:
	.string	"GPIOR14 4"
.LASF638:
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
.LASF1099:
	.string	"OCR1A _SFR_MEM16(0x88)"
.LASF1372:
	.string	"SLEEP_MODE_PWR_DOWN (0x02<<1)"
.LASF608:
	.string	"SCNoLEAST32 \"lo\""
.LASF1091:
	.string	"ICR1H0 0"
.LASF748:
	.string	"GPIOR03 3"
.LASF1237:
	.string	"RXC0 7"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF234:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF1150:
	.string	"FOC2A 7"
.LASF1369:
	.string	"SIGNATURE_2 0x0F"
.LASF489:
	.string	"PTRDIFF_MAX INT16_MAX"
.LASF1612:
	.string	"adc_value"
.LASF1127:
	.string	"OCR1BL7 7"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF416:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF717:
	.string	"PORTD4 4"
.LASF204:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF1330:
	.string	"SPM_READY_vect_num 25"
.LASF1294:
	.string	"TIMER2_COMPA_vect_num 7"
.LASF123:
	.string	"__GCC_IEC_559 0"
.LASF764:
	.string	"EEDR3 3"
.LASF1101:
	.string	"OCR1AL0 0"
.LASF207:
	.string	"__UFRACT_IBIT__ 0"
.LASF1306:
	.string	"TIMER1_OVF_vect_num 13"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF1370:
	.string	"SLEEP_MODE_IDLE (0x00<<1)"
.LASF798:
	.string	"WGM02 3"
.LASF1196:
	.string	"TWGCE 0"
.LASF725:
	.string	"TIFR1 _SFR_IO8(0x16)"
.LASF1384:
	.string	"PORT0 0"
.LASF920:
	.string	"PRUSART0 1"
.LASF850:
	.string	"CPOL 3"
.LASF1611:
	.string	"channel"
.LASF1431:
	.string	"SREG_N (2)"
.LASF1561:
	.string	"__wchar_t__ "
.LASF356:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF913:
	.string	"CLKPS0 0"
.LASF596:
	.string	"SCNxLEAST8 \"hhx\""
.LASF1575:
	.string	"_WCHAR_T_DECLARED "
.LASF1137:
	.string	"TCCR2A _SFR_MEM8(0xB0)"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF910:
	.string	"WDIE 6"
.LASF1223:
	.string	"TWAM1 1"
.LASF793:
	.string	"COM0A1 7"
.LASF947:
	.string	"EICRA _SFR_MEM8(0x69)"
.LASF1318:
	.string	"USART_UDRE_vect_num 19"
.LASF70:
	.string	"__GXX_ABI_VERSION 1009"
.LASF122:
	.string	"__UINTPTR_MAX__ 0xffffU"
.LASF1063:
	.string	"TCNT1L0 0"
.LASF943:
	.string	"PCICR _SFR_MEM8(0x68)"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF901:
	.string	"RWWSB 6"
.LASF1263:
	.string	"UBRR0_3 3"
.LASF611:
	.string	"SCNuLEAST32 \"lu\""
.LASF525:
	.string	"PRIiLEAST32 \"li\""
.LASF493:
	.string	"SIZE_MAX UINT16_MAX"
.LASF800:
	.string	"FOC0A 7"
.LASF1022:
	.string	"ADTS1 1"
.LASF1140:
	.string	"COM2B0 4"
.LASF1031:
	.string	"REFS0 6"
.LASF682:
	.string	"DDC3 3"
.LASF1183:
	.string	"TWBR4 4"
.LASF451:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF666:
	.string	"PORTB4 4"
.LASF1386:
	.string	"DD6 6"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1565:
	.string	"_T_WCHAR "
.LASF1030:
	.string	"ADLAR 5"
.LASF814:
	.string	"OCR0A_3 3"
.LASF1539:
	.string	"_STDLIB_H_ 1"
.LASF1563:
	.string	"_WCHAR_T "
.LASF1360:
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
.LASF211:
	.string	"__LFRACT_FBIT__ 31"
.LASF347:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF265:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF239:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF1194:
	.string	"TWS7 7"
.LASF89:
	.string	"__INT8_MAX__ 0x7f"
.LASF390:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF1367:
	.string	"SIGNATURE_0 0x1E"
.LASF1567:
	.string	"_WCHAR_T_ "
.LASF101:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF1513:
	.string	"ldexpf ldexp"
.LASF1008:
	.string	"ADCH5 5"
.LASF962:
	.string	"PCINT8 0"
.LASF999:
	.string	"ADCL5 5"
.LASF240:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF1061:
	.string	"TCNT1 _SFR_MEM16(0x84)"
.LASF815:
	.string	"OCR0A_4 4"
.LASF1480:
	.string	"VRY 4"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF253:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF878:
	.string	"SE 0"
.LASF532:
	.string	"PRIu8 \"u\""
.LASF476:
	.string	"UINT_FAST16_MAX UINT16_MAX"
.LASF737:
	.string	"PCIF2 2"
.LASF820:
	.string	"OCR0B_0 0"
.LASF114:
	.string	"__INT_FAST16_MAX__ 0x7fff"
.LASF162:
	.string	"__DECIMAL_DIG__ 9"
.LASF965:
	.string	"PCINT11 3"
.LASF1289:
	.string	"PCINT1_vect _VECTOR(4)"
.LASF758:
	.string	"EEPM0 4"
.LASF409:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF674:
	.string	"PINC3 3"
.LASF1391:
	.string	"DD1 1"
.LASF482:
	.string	"UINT_FAST64_MAX UINT64_MAX"
.LASF1162:
	.string	"OCR2_1 1"
.LASF774:
	.string	"EEAR3 3"
.LASF804:
	.string	"TCNT0_2 2"
.LASF622:
	.string	"__SFR_OFFSET 0x20"
.LASF538:
	.string	"PRIX8 \"X\""
.LASF1136:
	.string	"OCR1BH7 7"
.LASF982:
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
.LASF740:
	.string	"INTF1 1"
.LASF276:
	.string	"__SQ_IBIT__ 0"
.LASF424:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF1198:
	.string	"TWA1 2"
.LASF1201:
	.string	"TWA4 5"
.LASF1453:
	.string	"__AVR_LIBC_VERSION_STRING__ \"2.0.0\""
.LASF1312:
	.string	"TIMER0_OVF_vect_num 16"
.LASF1174:
	.string	"OCR2AUB 3"
.LASF160:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF578:
	.string	"SCNi16 \"i\""
.LASF1343:
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
.LASF512:
	.string	"PRIi8 \"i\""
.LASF1039:
	.string	"ADC5D 5"
.LASF549:
	.string	"PRIxFAST16 \"x\""
.LASF171:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF362:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF158:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF193:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF551:
	.string	"PRIXLEAST16 \"X\""
.LASF1442:
	.string	"ZH r31"
.LASF251:
	.string	"__LACCUM_FBIT__ 31"
.LASF543:
	.string	"PRIoFAST16 \"o\""
.LASF258:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF1158:
	.string	"TCNT2_6 6"
.LASF1242:
	.string	"TXEN0 3"
.LASF340:
	.string	"__WITH_AVRLIBC__ 1"
.LASF1246:
	.string	"RXCIE0 7"
.LASF931:
	.string	"__AVR_HAVE_PRR_PRTIM0 "
.LASF1450:
	.string	"AVR_STACK_POINTER_LO_REG SPL"
.LASF1096:
	.string	"ICR1H5 5"
.LASF1388:
	.string	"DD4 4"
.LASF834:
	.string	"GPIOR15 5"
.LASF1348:
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
.LASF892:
	.string	"BODS 6"
.LASF268:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF542:
	.string	"PRIoLEAST16 \"o\""
.LASF1510:
	.string	"floorf floor"
.LASF182:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF1363:
	.string	"EFUSE_DEFAULT (0xFF)"
.LASF1580:
	.string	"__need_NULL"
.LASF1017:
	.string	"ADATE 5"
.LASF1149:
	.string	"FOC2B 6"
.LASF651:
	.string	"PINB7 7"
.LASF1072:
	.string	"TCNT1H0 0"
.LASF1585:
	.string	"__ATTR_GNU_INLINE__ __attribute__((__gnu_inline__))"
.LASF172:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF121:
	.string	"__INTPTR_MAX__ 0x7fff"
.LASF357:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF574:
	.string	"SCNiFAST8 \"hhi\""
.LASF453:
	.string	"INT32_MAX 0x7fffffffL"
.LASF718:
	.string	"PORTD5 5"
.LASF855:
	.string	"SPSR _SFR_IO8(0x2D)"
.LASF1577:
	.string	"__need_wchar_t"
.LASF1485:
	.string	"__MATH_H "
.LASF964:
	.string	"PCINT10 2"
.LASF1595:
	.string	"signed char"
.LASF765:
	.string	"EEDR4 4"
.LASF1102:
	.string	"OCR1AL1 1"
.LASF1303:
	.string	"TIMER1_COMPA_vect _VECTOR(11)"
.LASF1339:
	.string	"E2PAGESIZE 4"
.LASF1543:
	.string	"__size_t__ "
.LASF1240:
	.string	"RXB80 1"
.LASF376:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF143:
	.string	"__DBL_DIG__ 6"
.LASF471:
	.string	"INT_FAST8_MAX INT8_MAX"
.LASF506:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF496:
	.string	"WINT_MAX __WINT_MAX__"
.LASF224:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF1383:
	.string	"PORT1 1"
.LASF25:
	.string	"__CHAR_BIT__ 8"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF620:
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
.LASF1287:
	.string	"PCINT0_vect _VECTOR(3)"
.LASF914:
	.string	"CLKPS1 1"
.LASF1502:
	.string	"cosf cos"
.LASF1126:
	.string	"OCR1BL6 6"
.LASF166:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF1084:
	.string	"ICR1L2 2"
.LASF932:
	.string	"__AVR_HAVE_PRR_PRTIM2 "
.LASF911:
	.string	"WDIF 7"
.LASF1224:
	.string	"TWAM2 2"
.LASF1464:
	.string	"LOCKMEM __attribute__((__used__, __section__ (\".lock\")))"
.LASF978:
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
.LASF745:
	.string	"GPIOR00 0"
.LASF1475:
	.string	"BLB1_MODE_3 (0xCF)"
.LASF1064:
	.string	"TCNT1L1 1"
.LASF69:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF709:
	.string	"DDD5 5"
.LASF459:
	.string	"INT_LEAST8_MAX INT8_MAX"
.LASF1264:
	.string	"UBRR0_4 4"
.LASF1508:
	.string	"hypotf hypot"
.LASF417:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF908:
	.string	"WDCE 4"
.LASF225:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF550:
	.string	"PRIX16 \"X\""
.LASF883:
	.string	"PORF 0"
.LASF799:
	.string	"FOC0B 6"
.LASF533:
	.string	"PRIuLEAST8 \"u\""
.LASF1023:
	.string	"ADTS2 2"
.LASF1141:
	.string	"COM2B1 5"
.LASF915:
	.string	"CLKPS2 2"
.LASF1032:
	.string	"REFS1 7"
.LASF1253:
	.string	"USBS0 3"
.LASF1317:
	.string	"USART_RX_vect _VECTOR(18)"
.LASF430:
	.string	"__INT24_MAX__ 8388607L"
.LASF1591:
	.string	"DTOSTR_PLUS_SIGN 0x02"
.LASF687:
	.string	"PORTC0 0"
.LASF1505:
	.string	"fabsf fabs"
.LASF683:
	.string	"DDC4 4"
.LASF975:
	.string	"PCINT21 5"
.LASF1438:
	.string	"XH r27"
.LASF179:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF667:
	.string	"PORTB5 5"
.LASF1216:
	.string	"TWWC 3"
.LASF432:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF407:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF313:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF1254:
	.string	"UPM00 4"
.LASF167:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF610:
	.string	"SCNu32 \"lu\""
.LASF1314:
	.string	"SPI_STC_vect_num 17"
.LASF1323:
	.string	"ADC_vect _VECTOR(21)"
.LASF316:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF392:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF963:
	.string	"PCINT9 1"
.LASF1492:
	.string	"M_PI_2 1.57079632679489661923"
.LASF1035:
	.string	"ADC1D 1"
.LASF199:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF335:
	.string	"__AVR_MEGA__ 1"
.LASF1332:
	.string	"_VECTORS_SIZE (26 * 4)"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF1077:
	.string	"TCNT1H5 5"
.LASF375:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF1057:
	.string	"ICNC1 7"
.LASF1245:
	.string	"TXCIE0 6"
.LASF1424:
	.string	"_AVR_COMMON_H "
.LASF821:
	.string	"OCR0B_1 1"
.LASF1573:
	.string	"__INT_WCHAR_T_H "
.LASF209:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF285:
	.string	"__USQ_FBIT__ 32"
.LASF1331:
	.string	"SPM_READY_vect _VECTOR(25)"
.LASF802:
	.string	"TCNT0_0 0"
.LASF759:
	.string	"EEPM1 5"
.LASF307:
	.string	"__REGISTER_PREFIX__ "
.LASF675:
	.string	"PINC4 4"
.LASF1509:
	.string	"squaref square"
.LASF502:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF415:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF1163:
	.string	"OCR2_2 2"
.LASF775:
	.string	"EEAR4 4"
.LASF805:
	.string	"TCNT0_3 3"
.LASF202:
	.string	"__FRACT_IBIT__ 0"
.LASF593:
	.string	"SCNuLEAST8 \"hhu\""
.LASF896:
	.string	"PGERS 1"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF183:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF429:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF262:
	.string	"__LLACCUM_IBIT__ 16"
.LASF249:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF1202:
	.string	"TWA5 6"
.LASF530:
	.string	"PRIoLEAST8 \"o\""
.LASF529:
	.string	"PRIo8 \"o\""
.LASF444:
	.string	"__USING_MINT8 0"
.LASF92:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1231:
	.string	"U2X0 1"
.LASF1256:
	.string	"UMSEL00 6"
.LASF153:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF463:
	.string	"INT_LEAST16_MIN INT16_MIN"
.LASF1279:
	.string	"UDR0_5 5"
.LASF1537:
	.string	"lrintf lrint"
.LASF868:
	.string	"ACSR _SFR_IO8(0x30)"
.LASF1278:
	.string	"UDR0_4 4"
.LASF577:
	.string	"SCNdFAST16 \"d\""
.LASF1159:
	.string	"TCNT2_7 7"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF991:
	.string	"ADC _SFR_MEM16(0x78)"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF839:
	.string	"GPIOR21 1"
.LASF236:
	.string	"__USACCUM_FBIT__ 8"
.LASF1387:
	.string	"DD5 5"
.LASF1562:
	.string	"__WCHAR_T__ "
.LASF835:
	.string	"GPIOR16 6"
.LASF1434:
	.string	"SREG_H (5)"
.LASF1093:
	.string	"ICR1H2 2"
.LASF1176:
	.string	"AS2 5"
.LASF846:
	.string	"SPCR _SFR_IO8(0x2C)"
.LASF1378:
	.string	"PORT6 6"
.LASF1045:
	.string	"WGM11 1"
.LASF556:
	.string	"PRIu32 \"lu\""
.LASF289:
	.string	"__UTQ_FBIT__ 128"
.LASF435:
	.string	"__AVR_DEVICE_NAME__ atmega328p"
.LASF1221:
	.string	"TWAMR _SFR_MEM8(0xBD)"
.LASF1073:
	.string	"TCNT1H1 1"
.LASF980:
	.string	"OCIE0A 1"
.LASF1593:
	.string	"EXIT_SUCCESS 0"
.LASF1552:
	.string	"_SIZE_T_DEFINED_ "
.LASF670:
	.string	"PINC _SFR_IO8(0x06)"
.LASF719:
	.string	"PORTD6 6"
.LASF474:
	.string	"INT_FAST16_MAX INT16_MAX"
.LASF1178:
	.string	"TWBR _SFR_MEM8(0xB8)"
.LASF1299:
	.string	"TIMER2_OVF_vect _VECTOR(9)"
.LASF918:
	.string	"PRR _SFR_MEM8(0x64)"
.LASF984:
	.string	"OCIE1A 1"
.LASF281:
	.string	"__UQQ_FBIT__ 8"
.LASF1157:
	.string	"TCNT2_5 5"
.LASF928:
	.string	"__AVR_HAVE_PRR_PRUSART0 "
.LASF231:
	.string	"__SACCUM_FBIT__ 7"
.LASF766:
	.string	"EEDR5 5"
.LASF1103:
	.string	"OCR1AL2 2"
.LASF1555:
	.string	"_SIZE_T_DECLARED "
.LASF74:
	.string	"__INT_MAX__ 0x7fff"
.LASF346:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF1549:
	.string	"__SIZE_T "
.LASF739:
	.string	"INTF0 0"
.LASF884:
	.string	"EXTRF 1"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF1495:
	.string	"M_2_PI 0.63661977236758134308"
.LASF405:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF1119:
	.string	"OCR1BL _SFR_MEM8(0x8A)"
.LASF156:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF32:
	.string	"__SIZEOF_POINTER__ 2"
.LASF926:
	.string	"__AVR_HAVE_PRR ((1<<PRADC)|(1<<PRUSART0)|(1<<PRSPI)|(1<<PRTIM1)|(1<<PRTIM0)|(1<<PRTIM2)|(1<<PRTWI))"
.LASF261:
	.string	"__LLACCUM_FBIT__ 47"
.LASF138:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF1085:
	.string	"ICR1L3 3"
.LASF753:
	.string	"EECR _SFR_IO8(0x1F)"
.LASF1321:
	.string	"USART_TX_vect _VECTOR(20)"
.LASF1225:
	.string	"TWAM3 3"
.LASF1548:
	.string	"_T_SIZE "
.LASF1462:
	.string	"FUSES __fuse_t __fuse FUSEMEM"
.LASF888:
	.string	"IVCE 0"
.LASF746:
	.string	"GPIOR01 1"
.LASF922:
	.string	"PRTIM1 3"
.LASF1065:
	.string	"TCNT1L2 2"
.LASF544:
	.string	"PRIu16 \"u\""
.LASF353:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF1361:
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
.LASF730:
	.string	"TIFR2 _SFR_IO8(0x17)"
.LASF1315:
	.string	"SPI_STC_vect _VECTOR(17)"
.LASF1019:
	.string	"ADEN 7"
.LASF564:
	.string	"PRIXFAST32 \"lX\""
.LASF1610:
	.string	"adc_init"
.LASF1066:
	.string	"TCNT1L3 3"
.LASF828:
	.string	"GPIOR1 _SFR_IO8(0x2A)"
.LASF555:
	.string	"PRIoFAST32 \"lo\""
.LASF1041:
	.string	"AIN0D 0"
.LASF1491:
	.string	"M_PI 3.14159265358979323846"
.LASF729:
	.string	"ICF1 5"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF410:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF704:
	.string	"DDD0 0"
.LASF1564:
	.string	"_T_WCHAR_ "
.LASF857:
	.string	"WCOL 6"
.LASF726:
	.string	"TOV1 0"
.LASF1:
	.string	"__STDC_VERSION__ 199901L"
.LASF688:
	.string	"PORTC1 1"
.LASF213:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF684:
	.string	"DDC5 5"
.LASF1206:
	.string	"TWD1 1"
.LASF1452:
	.string	"_AVR_VERSION_H_ "
.LASF1374:
	.string	"SLEEP_MODE_STANDBY (0x06<<1)"
.LASF1185:
	.string	"TWBR6 6"
.LASF727:
	.string	"OCF1A 1"
.LASF816:
	.string	"OCR0A_5 5"
.LASF1255:
	.string	"UPM01 5"
.LASF501:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF994:
	.string	"ADCL0 0"
.LASF318:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF464:
	.string	"UINT_LEAST16_MAX UINT16_MAX"
.LASF1528:
	.string	"copysignf copysign"
.LASF1500:
	.string	"INFINITY __builtin_inf()"
.LASF1048:
	.string	"COM1A0 6"
.LASF658:
	.string	"DDB5 5"
.LASF341:
	.string	"__FLASH 1"
.LASF1479:
	.string	"VRX 5"
.LASF627:
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
.LASF721:
	.string	"TIFR0 _SFR_IO8(0x15)"
.LASF642:
	.string	"_AVR_IOM328P_H_ 1"
.LASF1000:
	.string	"ADCL6 6"
.LASF406:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF1350:
	.string	"LFUSE_DEFAULT (FUSE_CKSEL0 & FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_CKDIV8)"
.LASF514:
	.string	"PRIiFAST8 \"i\""
.LASF15:
	.string	"__OPTIMIZE__ 1"
.LASF1572:
	.string	"___int_wchar_t_h "
.LASF1058:
	.string	"TCCR1C _SFR_MEM8(0x82)"
.LASF605:
	.string	"SCNxLEAST16 \"x\""
.LASF1545:
	.string	"_SIZE_T "
.LASF1519:
	.string	"asinf asin"
.LASF83:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF194:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF613:
	.string	"SCNx32 \"lx\""
.LASF822:
	.string	"OCR0B_2 2"
.LASF1235:
	.string	"UDRE0 5"
.LASF170:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF695:
	.string	"PIND0 0"
.LASF936:
	.string	"CAL1 1"
.LASF567:
	.string	"PRIxPTR PRIx16"
.LASF1145:
	.string	"CS20 0"
.LASF676:
	.string	"PINC5 5"
.LASF226:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF278:
	.string	"__DQ_IBIT__ 0"
.LASF1060:
	.string	"FOC1A 7"
.LASF1219:
	.string	"TWEA 6"
.LASF776:
	.string	"EEAR5 5"
.LASF516:
	.string	"PRIdLEAST16 \"d\""
.LASF653:
	.string	"DDB0 0"
.LASF1553:
	.string	"_SIZE_T_DEFINED "
.LASF1316:
	.string	"USART_RX_vect_num 18"
.LASF282:
	.string	"__UQQ_IBIT__ 0"
.LASF374:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF601:
	.string	"SCNu16 \"u\""
.LASF1203:
	.string	"TWA6 7"
.LASF609:
	.string	"SCNoFAST32 \"lo\""
.LASF1004:
	.string	"ADCH1 1"
.LASF1540:
	.string	"__need_NULL "
.LASF1112:
	.string	"OCR1AH2 2"
.LASF1257:
	.string	"UMSEL01 7"
.LASF1280:
	.string	"UDR0_6 6"
.LASF81:
	.string	"__PTRDIFF_MAX__ 0x7fff"
.LASF1428:
	.string	"SREG _SFR_IO8(0x3F)"
.LASF1582:
	.string	"__ATTR_MALLOC__ __attribute__((__malloc__))"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF874:
	.string	"ACO 5"
.LASF953:
	.string	"PCINT0 0"
.LASF1015:
	.string	"ADIE 3"
.LASF1335:
	.string	"RAMEND 0x8FF"
.LASF243:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF200:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF840:
	.string	"GPIOR22 2"
.LASF403:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF28:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF594:
	.string	"SCNuFAST8 \"hhu\""
.LASF472:
	.string	"INT_FAST8_MIN INT8_MIN"
.LASF836:
	.string	"GPIOR17 7"
.LASF1088:
	.string	"ICR1L6 6"
.LASF560:
	.string	"PRIxLEAST32 \"lx\""
.LASF1094:
	.string	"ICR1H3 3"
.LASF882:
	.string	"MCUSR _SFR_IO8(0x34)"
.LASF1105:
	.string	"OCR1AL4 4"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF1297:
	.string	"TIMER2_COMPB_vect _VECTOR(8)"
.LASF1230:
	.string	"MPCM0 0"
.LASF524:
	.string	"PRIi32 \"li\""
.LASF1258:
	.string	"UBRR0 _SFR_MEM16(0xC4)"
.LASF1399:
	.string	"PIN1 1"
.LASF1074:
	.string	"TCNT1H2 2"
.LASF860:
	.string	"SPDR0 0"
.LASF1298:
	.string	"TIMER2_OVF_vect_num 9"
.LASF372:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF856:
	.string	"SPI2X 0"
.LASF563:
	.string	"PRIXLEAST32 \"lX\""
.LASF134:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF720:
	.string	"PORTD7 7"
.LASF517:
	.string	"PRIdFAST16 \"d\""
.LASF1526:
	.string	"isinff isinf"
.LASF467:
	.string	"UINT_LEAST32_MAX UINT32_MAX"
.LASF237:
	.string	"__USACCUM_IBIT__ 8"
.LASF966:
	.string	"PCINT12 4"
.LASF460:
	.string	"INT_LEAST8_MIN INT8_MIN"
.LASF1604:
	.string	"read_adc"
.LASF985:
	.string	"OCIE1B 2"
.LASF218:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF1143:
	.string	"COM2A1 7"
.LASF767:
	.string	"EEDR6 6"
.LASF1104:
	.string	"OCR1AL3 3"
.LASF639:
	.string	"loop_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF1044:
	.string	"WGM10 0"
.LASF1050:
	.string	"TCCR1B _SFR_MEM8(0x81)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 0xffffffffUL"
.LASF1451:
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF16:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1327:
	.string	"ANALOG_COMP_vect _VECTOR(23)"
.LASF1381:
	.string	"PORT3 3"
.LASF987:
	.string	"TIMSK2 _SFR_MEM8(0x70)"
.LASF1003:
	.string	"ADCH0 0"
.LASF569:
	.string	"SCNd8 \"hhd\""
.LASF136:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF801:
	.string	"TCNT0 _SFR_IO8(0x26)"
.LASF1488:
	.string	"M_LOG10E 0.43429448190325182765"
.LASF1092:
	.string	"ICR1H1 1"
.LASF916:
	.string	"CLKPS3 3"
.LASF722:
	.string	"TOV0 0"
.LASF1083:
	.string	"ICR1L1 1"
.LASF754:
	.string	"EERE 0"
.LASF1086:
	.string	"ICR1L4 4"
.LASF163:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF434:
	.string	"__AVR_ATmega328P__ 1"
.LASF934:
	.string	"OSCCAL _SFR_MEM8(0x66)"
.LASF587:
	.string	"SCNdPTR SCNd16"
.LASF1226:
	.string	"TWAM4 4"
.LASF747:
	.string	"GPIOR02 2"
.LASF969:
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
.LASF82:
	.string	"__SIZE_MAX__ 0xffffU"
.LASF924:
	.string	"PRTIM2 6"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF1284:
	.string	"INT1_vect_num 2"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF1266:
	.string	"UBRR0_6 6"
.LASF295:
	.string	"__DA_FBIT__ 31"
.LASF619:
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
.LASF433:
	.string	"__ELF__ 1"
.LASF527:
	.string	"PRIdPTR PRId16"
.LASF1120:
	.string	"OCR1BL0 0"
.LASF1238:
	.string	"UCSR0B _SFR_MEM8(0xC1)"
.LASF310:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF641:
	.string	"_AVR_IOXXX_H_ \"iom328p.h\""
.LASF181:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF705:
	.string	"DDD1 1"
.LASF497:
	.string	"WINT_MIN __WINT_MIN__"
.LASF423:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF689:
	.string	"PORTC2 2"
.LASF296:
	.string	"__DA_IBIT__ 32"
.LASF685:
	.string	"DDC6 6"
.LASF1207:
	.string	"TWD2 2"
.LASF279:
	.string	"__TQ_FBIT__ 127"
.LASF447:
	.string	"INT8_MAX 0x7f"
.LASF1204:
	.string	"TWDR _SFR_MEM8(0xBB)"
.LASF333:
	.string	"__AVR_HAVE_MUL__ 1"
.LASF669:
	.string	"PORTB7 7"
.LASF31:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1186:
	.string	"TWBR7 7"
.LASF817:
	.string	"OCR0A_6 6"
.LASF636:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF995:
	.string	"ADCL1 1"
.LASF388:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF217:
	.string	"__ULFRACT_IBIT__ 0"
.LASF917:
	.string	"CLKPCE 7"
.LASF1049:
	.string	"COM1A1 7"
.LASF548:
	.string	"PRIxLEAST16 \"x\""
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 0xffffU"
.LASF22:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF466:
	.string	"INT_LEAST32_MIN INT32_MIN"
.LASF680:
	.string	"DDC1 1"
.LASF487:
	.string	"INTMAX_MIN INT64_MIN"
.LASF419:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF547:
	.string	"PRIx16 \"x\""
.LASF580:
	.string	"SCNiFAST16 \"i\""
.LASF1025:
	.string	"ADMUX _SFR_MEM8(0x7C)"
.LASF1568:
	.string	"_BSD_WCHAR_T_ "
.LASF1090:
	.string	"ICR1H _SFR_MEM8(0x87)"
.LASF755:
	.string	"EEPE 1"
.LASF1448:
	.string	"AVR_STACK_POINTER_HI_REG SPH"
.LASF1487:
	.string	"M_LOG2E 1.4426950408889634074"
.LASF352:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF1164:
	.string	"OCR2_3 3"
.LASF1283:
	.string	"INT0_vect _VECTOR(1)"
.LASF1040:
	.string	"DIDR1 _SFR_MEM8(0x7F)"
.LASF992:
	.string	"ADCW _SFR_MEM16(0x78)"
.LASF877:
	.string	"SMCR _SFR_IO8(0x33)"
.LASF1532:
	.string	"fmaxf fmax"
.LASF696:
	.string	"PIND1 1"
.LASF937:
	.string	"CAL2 2"
.LASF442:
	.string	"__INTTYPES_H_ "
.LASF1146:
	.string	"CS21 1"
.LASF677:
	.string	"PINC6 6"
.LASF526:
	.string	"PRIiFAST32 \"li\""
.LASF1165:
	.string	"OCR2_4 4"
.LASF777:
	.string	"EEAR6 6"
.LASF807:
	.string	"TCNT0_5 5"
.LASF1499:
	.string	"NAN __builtin_nan(\"\")"
.LASF654:
	.string	"DDB1 1"
.LASF852:
	.string	"DORD 5"
.LASF1128:
	.string	"OCR1BH _SFR_MEM8(0x8B)"
.LASF925:
	.string	"PRTWI 7"
.LASF413:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF904:
	.string	"WDP0 0"
.LASF1252:
	.string	"UDORD0 2"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF1514:
	.string	"expf exp"
.LASF1558:
	.string	"_SIZET_ "
.LASF652:
	.string	"DDRB _SFR_IO8(0x04)"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF441:
	.string	"_SFR_ASM_COMPAT 0"
.LASF1113:
	.string	"OCR1AH3 3"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF1281:
	.string	"UDR0_7 7"
.LASF348:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF954:
	.string	"PCINT1 1"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF244:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF841:
	.string	"GPIOR23 3"
.LASF1118:
	.string	"OCR1B _SFR_MEM16(0x8A)"
.LASF879:
	.string	"SM0 1"
.LASF1385:
	.string	"DD7 7"
.LASF1459:
	.string	"__AVR_LIBC_REVISION__ 0"
.LASF1026:
	.string	"MUX0 0"
.LASF298:
	.string	"__TA_IBIT__ 16"
.LASF782:
	.string	"_EEPROM_REG_LOCATIONS_ 1F2021"
.LASF522:
	.string	"PRIdLEAST32 \"ld\""
.LASF1095:
	.string	"ICR1H4 4"
.LASF1470:
	.string	"BLB0_MODE_2 (0xFB)"
.LASF579:
	.string	"SCNiLEAST16 \"i\""
.LASF342:
	.string	"__MEMX 1"
.LASF750:
	.string	"GPIOR05 5"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF1292:
	.string	"WDT_vect_num 6"
.LASF535:
	.string	"PRIx8 \"x\""
.LASF944:
	.string	"PCIE0 0"
.LASF1398:
	.string	"PIN2 2"
.LASF1075:
	.string	"TCNT1H3 3"
.LASF861:
	.string	"SPDR1 1"
.LASF1437:
	.string	"XL r26"
.LASF1496:
	.string	"M_2_SQRTPI 1.12837916709551257390"
.LASF1586:
	.string	"abs(__i) __builtin_abs(__i)"
.LASF1570:
	.string	"_WCHAR_T_DEFINED "
.LASF1173:
	.string	"OCR2BUB 2"
.LASF1249:
	.string	"UCSZ00 1"
.LASF1396:
	.string	"PIN4 4"
.LASF1522:
	.string	"logf log"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 0xffffU"
.LASF900:
	.string	"SIGRD 5"
.LASF1129:
	.string	"OCR1BH0 0"
.LASF967:
	.string	"PCINT13 5"
.LASF252:
	.string	"__LACCUM_IBIT__ 32"
.LASF1608:
	.string	"../src/ADC.c"
.LASF595:
	.string	"SCNx8 \"hhx\""
.LASF768:
	.string	"EEDR7 7"
.LASF1042:
	.string	"AIN1D 1"
.LASF180:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF1220:
	.string	"TWINT 7"
.LASF1295:
	.string	"TIMER2_COMPA_vect _VECTOR(7)"
.LASF1457:
	.string	"__AVR_LIBC_MAJOR__ 2"
.LASF819:
	.string	"OCR0B _SFR_IO8(0x28)"
.LASF113:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF1518:
	.string	"acosf acos"
.LASF495:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF1033:
	.string	"DIDR0 _SFR_MEM8(0x7E)"
.LASF1476:
	.string	"BLB1_MODE_4 (0xDF)"
.LASF1525:
	.string	"isnanf isnan"
.LASF1603:
	.string	"long long unsigned int"
.LASF20:
	.string	"__SIZEOF_SHORT__ 2"
.LASF1380:
	.string	"PORT4 4"
.LASF1171:
	.string	"TCR2BUB 0"
.LASF146:
	.string	"__DBL_MAX_EXP__ 128"
.LASF1406:
	.string	"PB5 PORTB5"
.LASF461:
	.string	"UINT_LEAST8_MAX UINT8_MAX"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF1340:
	.string	"FLASHEND 0x7FFF"
.LASF93:
	.string	"__UINT8_MAX__ 0xff"
.LASF795:
	.string	"CS00 0"
.LASF1271:
	.string	"UBRR0_10 2"
.LASF790:
	.string	"COM0B0 4"
.LASF1087:
	.string	"ICR1L5 5"
.LASF334:
	.string	"__AVR_HAVE_JMP_CALL__ 1"
.LASF395:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF1227:
	.string	"TWAM5 5"
.LASF1382:
	.string	"PORT2 2"
.LASF1405:
	.string	"PB4 PORTB4"
.LASF829:
	.string	"GPIOR10 0"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF838:
	.string	"GPIOR20 0"
.LASF1067:
	.string	"TCNT1L4 4"
.LASF1512:
	.string	"frexpf frexp"
.LASF324:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF1267:
	.string	"UBRR0_7 7"
.LASF810:
	.string	"OCR0A _SFR_IO8(0x27)"
.LASF1121:
	.string	"OCR1BL1 1"
.LASF1454:
	.string	"__AVR_LIBC_VERSION__ 20000UL"
.LASF1329:
	.string	"TWI_vect _VECTOR(24)"
.LASF297:
	.string	"__TA_FBIT__ 47"
.LASF1172:
	.string	"TCR2AUB 1"
.LASF195:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF690:
	.string	"PORTC3 3"
.LASF1208:
	.string	"TWD3 3"
.LASF1471:
	.string	"BLB0_MODE_3 (0xF3)"
.LASF196:
	.string	"__USFRACT_FBIT__ 8"
.LASF1233:
	.string	"DOR0 3"
.LASF169:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF531:
	.string	"PRIoFAST8 \"o\""
.LASF818:
	.string	"OCR0A_7 7"
.LASF314:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF238:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF770:
	.string	"EEARL _SFR_IO8(0x21)"
.LASF221:
	.string	"__LLFRACT_FBIT__ 63"
.LASF1413:
	.string	"PC4 PORTC4"
.LASF325:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF1309:
	.string	"TIMER0_COMPA_vect _VECTOR(14)"
.LASF557:
	.string	"PRIuLEAST32 \"lu\""
.LASF1542:
	.string	"__need_wchar_t "
.LASF694:
	.string	"PIND _SFR_IO8(0x09)"
.LASF421:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF823:
	.string	"OCR0B_3 3"
.LASF164:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF1320:
	.string	"USART_TX_vect_num 20"
.LASF1056:
	.string	"ICES1 6"
.LASF412:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF583:
	.string	"SCNdFAST32 \"ld\""
.LASF588:
	.string	"SCNiPTR SCNi16"
.LASF1308:
	.string	"TIMER0_COMPA_vect_num 14"
.LASF738:
	.string	"EIFR _SFR_IO8(0x1C)"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF632:
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
.LASF1594:
	.string	"EXIT_FAILURE 1"
.LASF787:
	.string	"TCCR0A _SFR_IO8(0x24)"
.LASF354:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF760:
	.string	"EEDR _SFR_IO8(0x20)"
.LASF1336:
	.string	"XRAMSIZE 0"
.LASF528:
	.string	"PRIiPTR PRIi16"
.LASF824:
	.string	"OCR0B_4 4"
.LASF629:
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
.LASF697:
	.string	"PIND2 2"
.LASF938:
	.string	"CAL3 3"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF1474:
	.string	"BLB1_MODE_2 (0xEF)"
.LASF1365:
	.string	"__BOOT_LOCK_BITS_0_EXIST "
.LASF174:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF1566:
	.string	"__WCHAR_T "
.LASF598:
	.string	"SCNo16 \"o\""
.LASF1160:
	.string	"OCR2A _SFR_MEM8(0xB3)"
.LASF853:
	.string	"SPE 6"
.LASF1166:
	.string	"OCR2_5 5"
.LASF778:
	.string	"EEAR7 7"
.LASF808:
	.string	"TCNT0_6 6"
.LASF404:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF655:
	.string	"DDB2 2"
.LASF886:
	.string	"WDRF 3"
.LASF1229:
	.string	"UCSR0A _SFR_MEM8(0xC0)"
.LASF1581:
	.string	"__ptr_t void *"
.LASF147:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF1334:
	.string	"RAMSTART (0x100)"
.LASF292:
	.string	"__HA_IBIT__ 8"
.LASF905:
	.string	"WDP1 1"
.LASF448:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1426:
	.string	"SP _SFR_IO16(0x3D)"
.LASF274:
	.string	"__HQ_IBIT__ 0"
.LASF518:
	.string	"PRIi16 \"i\""
.LASF590:
	.string	"SCNoLEAST8 \"hho\""
.LASF1602:
	.string	"long long int"
.LASF1449:
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
.LASF125:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1114:
	.string	"OCR1AH4 4"
.LASF996:
	.string	"ADCL2 2"
.LASF1333:
	.string	"SPM_PAGESIZE 128"
.LASF607:
	.string	"SCNo32 \"lo\""
.LASF329:
	.string	"__AVR_ARCH__ 5"
.LASF299:
	.string	"__UHA_FBIT__ 8"
.LASF955:
	.string	"PCINT2 2"
.LASF230:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF1421:
	.string	"PD5 PORTD5"
.LASF190:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF1177:
	.string	"EXCLK 6"
.LASF842:
	.string	"GPIOR24 4"
.LASF135:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF1415:
	.string	"PC6 PORTC6"
.LASF1324:
	.string	"EE_READY_vect_num 22"
.LASF921:
	.string	"PRSPI 2"
.LASF1446:
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
.LASF260:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF763:
	.string	"EEDR2 2"
.LASF1080:
	.string	"ICR1 _SFR_MEM16(0x86)"
.LASF309:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF945:
	.string	"PCIE1 1"
.LASF1397:
	.string	"PIN3 3"
.LASF1076:
	.string	"TCNT1H4 4"
.LASF862:
	.string	"SPDR2 2"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF898:
	.string	"BLBSET 3"
.LASF457:
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
.LASF1588:
	.string	"RAND_MAX 0x7FFF"
.LASF552:
	.string	"PRIXFAST16 \"X\""
.LASF646:
	.string	"PINB2 2"
.LASF1251:
	.string	"UCSZ01 2"
.LASF155:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF797:
	.string	"CS02 2"
.LASF1130:
	.string	"OCR1BH1 1"
.LASF972:
	.string	"PCINT18 2"
.LASF968:
	.string	"PCINT14 6"
.LASF197:
	.string	"__USFRACT_IBIT__ 0"
.LASF418:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF635:
	.string	"_BV(bit) (1 << (bit))"
.LASF1375:
	.string	"SLEEP_MODE_EXT_STANDBY (0x07<<1)"
.LASF126:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1106:
	.string	"OCR1AL5 5"
.LASF168:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1422:
	.string	"PD6 PORTD6"
.LASF1054:
	.string	"WGM12 3"
.LASF854:
	.string	"SPIE 7"
.LASF1601:
	.string	"long unsigned int"
.LASF343:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF858:
	.string	"SPIF 7"
.LASF1359:
	.string	"HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_BOOTSZ1 & FUSE_SPIEN)"
.LASF94:
	.string	"__UINT16_MAX__ 0xffffU"
.LASF1379:
	.string	"PORT5 5"
.LASF1005:
	.string	"ADCH2 2"
.LASF1302:
	.string	"TIMER1_COMPA_vect_num 11"
.LASF1152:
	.string	"TCNT2_0 0"
.LASF949:
	.string	"ISC01 1"
.LASF473:
	.string	"UINT_FAST8_MAX UINT8_MAX"
.LASF731:
	.string	"TOV2 0"
.LASF23:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF1272:
	.string	"UBRR0_11 3"
.LASF791:
	.string	"COM0B1 5"
.LASF159:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF869:
	.string	"ACIS0 0"
.LASF165:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF79:
	.string	"__WINT_MAX__ 0x7fff"
.LASF1228:
	.string	"TWAM6 6"
.LASF139:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1435:
	.string	"SREG_T (6)"
.LASF749:
	.string	"GPIOR04 4"
.LASF1445:
	.string	"AVR_STACK_POINTER_REG SP"
.LASF1068:
	.string	"TCNT1L5 5"
.LASF1269:
	.string	"UBRR0_8 0"
.LASF1109:
	.string	"OCR1AH _SFR_MEM8(0x89)"
.LASF1472:
	.string	"BLB0_MODE_4 (0xF7)"
.LASF280:
	.string	"__TQ_IBIT__ 0"
.LASF615:
	.string	"SCNxFAST32 \"lx\""
.LASF1122:
	.string	"OCR1BL2 2"
.LASF1188:
	.string	"TWPS0 0"
.LASF462:
	.string	"INT_LEAST16_MAX INT16_MAX"
.LASF1423:
	.string	"PD7 PORTD7"
.LASF456:
	.string	"INT64_MAX 0x7fffffffffffffffLL"
.LASF189:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1544:
	.string	"__SIZE_T__ "
.LASF707:
	.string	"DDD3 3"
.LASF1215:
	.string	"TWEN 2"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF691:
	.string	"PORTC4 4"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1209:
	.string	"TWD4 4"
.LASF703:
	.string	"DDRD _SFR_IO8(0x0A)"
.LASF157:
	.string	"__LDBL_DIG__ 6"
.LASF1517:
	.string	"tanhf tanh"
.LASF997:
	.string	"ADCL3 3"
.LASF1473:
	.string	"BLB1_MODE_1 (0xFF)"
.LASF206:
	.string	"__UFRACT_FBIT__ 16"
.LASF1599:
	.string	"unsigned int"
.LASF326:
	.string	"__AVR 1"
.LASF1533:
	.string	"fminf fmin"
.LASF1436:
	.string	"SREG_I (7)"
.LASF1239:
	.string	"TXB80 0"
.LASF1371:
	.string	"SLEEP_MODE_ADC (0x01<<1)"
.LASF1151:
	.string	"TCNT2 _SFR_MEM8(0xB2)"
.LASF1447:
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
.LASF686:
	.string	"PORTC _SFR_IO8(0x08)"
.LASF1301:
	.string	"TIMER1_CAPT_vect _VECTOR(10)"
.LASF300:
	.string	"__UHA_IBIT__ 8"
.LASF1429:
	.string	"SREG_C (0)"
.LASF1432:
	.string	"SREG_V (3)"
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF436:
	.string	"__AVR_DEV_LIB_NAME__ m328p"
.LASF1578:
	.string	"NULL"
.LASF1282:
	.string	"INT0_vect_num 1"
.LASF1296:
	.string	"TIMER2_COMPB_vect_num 8"
.LASF1589:
	.string	"RANDOM_MAX 0x7FFFFFFF"
.LASF6:
	.string	"__GNUC_MINOR__ 4"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF1455:
	.string	"__AVR_LIBC_DATE_STRING__ \"20150208\""
.LASF616:
	.string	"SCNoPTR SCNo16"
.LASF825:
	.string	"OCR0B_5 5"
.LASF621:
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF698:
	.string	"PIND3 3"
.LASF939:
	.string	"CAL4 4"
.LASF408:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF5:
	.string	"__GNUC__ 5"
.LASF437:
	.string	"DEBUG 1"
.LASF780:
	.string	"EEAR8 0"
.LASF1142:
	.string	"COM2A0 6"
.LASF1167:
	.string	"OCR2_6 6"
.LASF332:
	.string	"__AVR_ENHANCED__ 1"
.LASF809:
	.string	"TCNT0_7 7"
.LASF656:
	.string	"DDB3 3"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF565:
	.string	"PRIoPTR PRIo16"
.LASF986:
	.string	"ICIE1 5"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF1250:
	.string	"UCPHA0 1"
.LASF1440:
	.string	"YH r29"
.LASF906:
	.string	"WDP2 2"
.LASF1345:
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
.LASF95:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1546:
	.string	"_SYS_SIZE_T_H "
.LASF151:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF214:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF344:
	.string	"__BUILTIN_AVR_SEI 1"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
