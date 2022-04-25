	.set noat
	.set noreorder

glabel func_8003A060
/* 3AC60 8003A060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3AC64 8003A064 AFB50014 */  sw         $s5, 0x14($sp)
/* 3AC68 8003A068 AFB40010 */  sw         $s4, 0x10($sp)
/* 3AC6C 8003A06C AFB3000C */  sw         $s3, 0xc($sp)
/* 3AC70 8003A070 AFB20008 */  sw         $s2, 8($sp)
/* 3AC74 8003A074 AFB10004 */  sw         $s1, 4($sp)
/* 3AC78 8003A078 AFB00000 */  sw         $s0, ($sp)
/* 3AC7C 8003A07C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 3AC80 8003A080 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3AC84 8003A084 8FAD0034 */  lw         $t5, 0x34($sp)
/* 3AC88 8003A088 8FAC0038 */  lw         $t4, 0x38($sp)
/* 3AC8C 8003A08C 8FB4003C */  lw         $s4, 0x3c($sp)
/* 3AC90 8003A090 8FA90040 */  lw         $t1, 0x40($sp)
/* 3AC94 8003A094 8FB30044 */  lw         $s3, 0x44($sp)
/* 3AC98 8003A098 8FB10048 */  lw         $s1, 0x48($sp)
/* 3AC9C 8003A09C 8FB2004C */  lw         $s2, 0x4c($sp)
/* 3ACA0 8003A0A0 8FB00050 */  lw         $s0, 0x50($sp)
/* 3ACA4 8003A0A4 8FB50054 */  lw         $s5, 0x54($sp)
/* 3ACA8 8003A0A8 8FAF0058 */  lw         $t7, 0x58($sp)
/* 3ACAC 8003A0AC 8C880000 */  lw         $t0, ($a0)
/* 3ACB0 8003A0B0 01007021 */  addu       $t6, $t0, $zero
/* 3ACB4 8003A0B4 25080008 */  addiu      $t0, $t0, 8
/* 3ACB8 8003A0B8 30C60007 */  andi       $a2, $a2, 7
/* 3ACBC 8003A0BC 00063540 */  sll        $a2, $a2, 0x15
/* 3ACC0 8003A0C0 30E30003 */  andi       $v1, $a3, 3
/* 3ACC4 8003A0C4 00031CC0 */  sll        $v1, $v1, 0x13
/* 3ACC8 8003A0C8 3C02FD00 */  lui        $v0, 0xfd00
/* 3ACCC 8003A0CC 00621025 */  or         $v0, $v1, $v0
/* 3ACD0 8003A0D0 00C21025 */  or         $v0, $a2, $v0
/* 3ACD4 8003A0D4 254AFFFF */  addiu      $t2, $t2, -1
/* 3ACD8 8003A0D8 314A0FFF */  andi       $t2, $t2, 0xfff
/* 3ACDC 8003A0DC 004A1025 */  or         $v0, $v0, $t2
/* 3ACE0 8003A0E0 ADC20000 */  sw         $v0, ($t6)
/* 3ACE4 8003A0E4 ADC50004 */  sw         $a1, 4($t6)
/* 3ACE8 8003A0E8 01007021 */  addu       $t6, $t0, $zero
/* 3ACEC 8003A0EC 25080008 */  addiu      $t0, $t0, 8
/* 3ACF0 8003A0F0 3C02F500 */  lui        $v0, 0xf500
/* 3ACF4 8003A0F4 00621825 */  or         $v1, $v1, $v0
/* 3ACF8 8003A0F8 00C33025 */  or         $a2, $a2, $v1
/* 3ACFC 8003A0FC 018B2823 */  subu       $a1, $t4, $t3
/* 3AD00 8003A100 24A50001 */  addiu      $a1, $a1, 1
/* 3AD04 8003A104 3C02800C */  lui        $v0, %hi(D_800C4210)
/* 3AD08 8003A108 24424210 */  addiu      $v0, $v0, %lo(D_800C4210)
/* 3AD0C 8003A10C 00073880 */  sll        $a3, $a3, 2
/* 3AD10 8003A110 00E23821 */  addu       $a3, $a3, $v0
/* 3AD14 8003A114 8CE20000 */  lw         $v0, ($a3)
/* 3AD18 8003A118 00A20018 */  mult       $a1, $v0
/* 3AD1C 8003A11C 00001012 */  mflo       $v0
/* 3AD20 8003A120 24420007 */  addiu      $v0, $v0, 7
/* 3AD24 8003A124 000210C2 */  srl        $v0, $v0, 3
/* 3AD28 8003A128 304201FF */  andi       $v0, $v0, 0x1ff
/* 3AD2C 8003A12C 00021240 */  sll        $v0, $v0, 9
/* 3AD30 8003A130 00C21025 */  or         $v0, $a2, $v0
/* 3AD34 8003A134 ADC20000 */  sw         $v0, ($t6)
/* 3AD38 8003A138 32310003 */  andi       $s1, $s1, 3
/* 3AD3C 8003A13C 00118C80 */  sll        $s1, $s1, 0x12
/* 3AD40 8003A140 3210000F */  andi       $s0, $s0, 0xf
/* 3AD44 8003A144 00108380 */  sll        $s0, $s0, 0xe
/* 3AD48 8003A148 3C0A0700 */  lui        $t2, 0x700
/* 3AD4C 8003A14C 020A1025 */  or         $v0, $s0, $t2
/* 3AD50 8003A150 02221025 */  or         $v0, $s1, $v0
/* 3AD54 8003A154 31EF000F */  andi       $t7, $t7, 0xf
/* 3AD58 8003A158 000F7A80 */  sll        $t7, $t7, 0xa
/* 3AD5C 8003A15C 004F1025 */  or         $v0, $v0, $t7
/* 3AD60 8003A160 32730003 */  andi       $s3, $s3, 3
/* 3AD64 8003A164 00139A00 */  sll        $s3, $s3, 8
/* 3AD68 8003A168 00531025 */  or         $v0, $v0, $s3
/* 3AD6C 8003A16C 3252000F */  andi       $s2, $s2, 0xf
/* 3AD70 8003A170 00129100 */  sll        $s2, $s2, 4
/* 3AD74 8003A174 00521025 */  or         $v0, $v0, $s2
/* 3AD78 8003A178 32B5000F */  andi       $s5, $s5, 0xf
/* 3AD7C 8003A17C 00551025 */  or         $v0, $v0, $s5
/* 3AD80 8003A180 ADC20004 */  sw         $v0, 4($t6)
/* 3AD84 8003A184 01001821 */  addu       $v1, $t0, $zero
/* 3AD88 8003A188 25080008 */  addiu      $t0, $t0, 8
/* 3AD8C 8003A18C 3C02E600 */  lui        $v0, 0xe600
/* 3AD90 8003A190 AC620000 */  sw         $v0, ($v1)
/* 3AD94 8003A194 AC600004 */  sw         $zero, 4($v1)
/* 3AD98 8003A198 01001821 */  addu       $v1, $t0, $zero
/* 3AD9C 8003A19C 25080008 */  addiu      $t0, $t0, 8
/* 3ADA0 8003A1A0 000B5880 */  sll        $t3, $t3, 2
/* 3ADA4 8003A1A4 316B0FFF */  andi       $t3, $t3, 0xfff
/* 3ADA8 8003A1A8 000B5B00 */  sll        $t3, $t3, 0xc
/* 3ADAC 8003A1AC 000D6880 */  sll        $t5, $t5, 2
/* 3ADB0 8003A1B0 31AD0FFF */  andi       $t5, $t5, 0xfff
/* 3ADB4 8003A1B4 3C02F400 */  lui        $v0, 0xf400
/* 3ADB8 8003A1B8 01A21025 */  or         $v0, $t5, $v0
/* 3ADBC 8003A1BC 01621025 */  or         $v0, $t3, $v0
/* 3ADC0 8003A1C0 AC620000 */  sw         $v0, ($v1)
/* 3ADC4 8003A1C4 000C6080 */  sll        $t4, $t4, 2
/* 3ADC8 8003A1C8 318C0FFF */  andi       $t4, $t4, 0xfff
/* 3ADCC 8003A1CC 000C6300 */  sll        $t4, $t4, 0xc
/* 3ADD0 8003A1D0 0014A080 */  sll        $s4, $s4, 2
/* 3ADD4 8003A1D4 32940FFF */  andi       $s4, $s4, 0xfff
/* 3ADD8 8003A1D8 028A5025 */  or         $t2, $s4, $t2
/* 3ADDC 8003A1DC 018A5025 */  or         $t2, $t4, $t2
/* 3ADE0 8003A1E0 AC6A0004 */  sw         $t2, 4($v1)
/* 3ADE4 8003A1E4 01001821 */  addu       $v1, $t0, $zero
/* 3ADE8 8003A1E8 25080008 */  addiu      $t0, $t0, 8
/* 3ADEC 8003A1EC 3C02E700 */  lui        $v0, 0xe700
/* 3ADF0 8003A1F0 AC620000 */  sw         $v0, ($v1)
/* 3ADF4 8003A1F4 AC600004 */  sw         $zero, 4($v1)
/* 3ADF8 8003A1F8 01001821 */  addu       $v1, $t0, $zero
/* 3ADFC 8003A1FC 25080008 */  addiu      $t0, $t0, 8
/* 3AE00 8003A200 8CE20000 */  lw         $v0, ($a3)
/* 3AE04 8003A204 00A20018 */  mult       $a1, $v0
/* 3AE08 8003A208 00002812 */  mflo       $a1
/* 3AE0C 8003A20C 24A50007 */  addiu      $a1, $a1, 7
/* 3AE10 8003A210 000528C2 */  srl        $a1, $a1, 3
/* 3AE14 8003A214 30A501FF */  andi       $a1, $a1, 0x1ff
/* 3AE18 8003A218 00052A40 */  sll        $a1, $a1, 9
/* 3AE1C 8003A21C 00C53025 */  or         $a2, $a2, $a1
/* 3AE20 8003A220 AC660000 */  sw         $a2, ($v1)
/* 3AE24 8003A224 3129000F */  andi       $t1, $t1, 0xf
/* 3AE28 8003A228 00094D00 */  sll        $t1, $t1, 0x14
/* 3AE2C 8003A22C 01314825 */  or         $t1, $t1, $s1
/* 3AE30 8003A230 01304825 */  or         $t1, $t1, $s0
/* 3AE34 8003A234 012F4825 */  or         $t1, $t1, $t7
/* 3AE38 8003A238 01334825 */  or         $t1, $t1, $s3
/* 3AE3C 8003A23C 01324825 */  or         $t1, $t1, $s2
/* 3AE40 8003A240 01354825 */  or         $t1, $t1, $s5
/* 3AE44 8003A244 AC690004 */  sw         $t1, 4($v1)
/* 3AE48 8003A248 01001821 */  addu       $v1, $t0, $zero
/* 3AE4C 8003A24C 25080008 */  addiu      $t0, $t0, 8
/* 3AE50 8003A250 3C02F200 */  lui        $v0, 0xf200
/* 3AE54 8003A254 01A26825 */  or         $t5, $t5, $v0
/* 3AE58 8003A258 016D5825 */  or         $t3, $t3, $t5
/* 3AE5C 8003A25C AC6B0000 */  sw         $t3, ($v1)
/* 3AE60 8003A260 01946025 */  or         $t4, $t4, $s4
/* 3AE64 8003A264 AC6C0004 */  sw         $t4, 4($v1)
/* 3AE68 8003A268 AC880000 */  sw         $t0, ($a0)
/* 3AE6C 8003A26C 8FB50014 */  lw         $s5, 0x14($sp)
/* 3AE70 8003A270 8FB40010 */  lw         $s4, 0x10($sp)
/* 3AE74 8003A274 8FB3000C */  lw         $s3, 0xc($sp)
/* 3AE78 8003A278 8FB20008 */  lw         $s2, 8($sp)
/* 3AE7C 8003A27C 8FB10004 */  lw         $s1, 4($sp)
/* 3AE80 8003A280 8FB00000 */  lw         $s0, ($sp)
/* 3AE84 8003A284 03E00008 */  jr         $ra
/* 3AE88 8003A288 27BD0018 */   addiu     $sp, $sp, 0x18
