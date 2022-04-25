	.set noat
	.set noreorder

glabel func_8001A0F0
/* 1ACF0 8001A0F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1ACF4 8001A0F4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1ACF8 8001A0F8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1ACFC 8001A0FC 0C018D6D */  jal        func_800635B4
/* 1AD00 8001A100 AFB00018 */   sw        $s0, 0x18($sp)
/* 1AD04 8001A104 3C03800F */  lui        $v1, %hi(D_800F33EC)
/* 1AD08 8001A108 246333EC */  addiu      $v1, $v1, %lo(D_800F33EC)
/* 1AD0C 8001A10C 3C0143A2 */  lui        $at, 0x43a2
/* 1AD10 8001A110 34218000 */  ori        $at, $at, 0x8000
/* 1AD14 8001A114 44810000 */  mtc1       $at, $f0
/* 1AD18 8001A118 00000000 */  nop
/* 1AD1C 8001A11C E4600000 */  swc1       $f0, ($v1)
/* 1AD20 8001A120 AC600004 */  sw         $zero, 4($v1)
/* 1AD24 8001A124 AC600008 */  sw         $zero, 8($v1)
/* 1AD28 8001A128 3C01450C */  lui        $at, 0x450c
/* 1AD2C 8001A12C 3421A000 */  ori        $at, $at, 0xa000
/* 1AD30 8001A130 44810000 */  mtc1       $at, $f0
/* 1AD34 8001A134 3C01800F */  lui        $at, %hi(D_800EE98C)
/* 1AD38 8001A138 E420E98C */  swc1       $f0, %lo(D_800EE98C)($at)
/* 1AD3C 8001A13C 3C02800F */  lui        $v0, %hi(D_800F6524)
/* 1AD40 8001A140 24426524 */  addiu      $v0, $v0, %lo(D_800F6524)
/* 1AD44 8001A144 C4600004 */  lwc1       $f0, 4($v1)
/* 1AD48 8001A148 E4400008 */  swc1       $f0, 8($v0)
/* 1AD4C 8001A14C E4400004 */  swc1       $f0, 4($v0)
/* 1AD50 8001A150 E4400000 */  swc1       $f0, ($v0)
/* 1AD54 8001A154 00002021 */  addu       $a0, $zero, $zero
/* 1AD58 8001A158 3C0143A2 */  lui        $at, 0x43a2
/* 1AD5C 8001A15C 34218000 */  ori        $at, $at, 0x8000
/* 1AD60 8001A160 44812000 */  mtc1       $at, $f4
/* 1AD64 8001A164 3C07800F */  lui        $a3, %hi(D_800F6550)
/* 1AD68 8001A168 24E76550 */  addiu      $a3, $a3, %lo(D_800F6550)
/* 1AD6C 8001A16C 44800000 */  mtc1       $zero, $f0
/* 1AD70 8001A170 3C06800F */  lui        $a2, %hi(D_800ED6C0)
/* 1AD74 8001A174 24C6D6C0 */  addiu      $a2, $a2, %lo(D_800ED6C0)
/* 1AD78 8001A178 3C01450C */  lui        $at, 0x450c
/* 1AD7C 8001A17C 3421A000 */  ori        $at, $at, 0xa000
/* 1AD80 8001A180 44811000 */  mtc1       $at, $f2
/* 1AD84 8001A184 3C05800F */  lui        $a1, %hi(D_800F52F8)
/* 1AD88 8001A188 24A552F8 */  addiu      $a1, $a1, %lo(D_800F52F8)
/* 1AD8C 8001A18C 00041840 */  sll        $v1, $a0, 1
.L8001A190:
/* 1AD90 8001A190 00641821 */  addu       $v1, $v1, $a0
/* 1AD94 8001A194 00031880 */  sll        $v1, $v1, 2
/* 1AD98 8001A198 3C01800F */  lui        $at, %hi(D_800F6550)
/* 1AD9C 8001A19C 00230821 */  addu       $at, $at, $v1
/* 1ADA0 8001A1A0 E4246550 */  swc1       $f4, %lo(D_800F6550)($at)
/* 1ADA4 8001A1A4 00671021 */  addu       $v0, $v1, $a3
/* 1ADA8 8001A1A8 E4400008 */  swc1       $f0, 8($v0)
/* 1ADAC 8001A1AC 3C01800F */  lui        $at, %hi(D_800F6554)
/* 1ADB0 8001A1B0 00230821 */  addu       $at, $at, $v1
/* 1ADB4 8001A1B4 E4206554 */  swc1       $f0, %lo(D_800F6554)($at)
/* 1ADB8 8001A1B8 00041080 */  sll        $v0, $a0, 2
/* 1ADBC 8001A1BC 00461021 */  addu       $v0, $v0, $a2
/* 1ADC0 8001A1C0 E4420000 */  swc1       $f2, ($v0)
/* 1ADC4 8001A1C4 00651021 */  addu       $v0, $v1, $a1
/* 1ADC8 8001A1C8 E4400008 */  swc1       $f0, 8($v0)
/* 1ADCC 8001A1CC E4400004 */  swc1       $f0, 4($v0)
/* 1ADD0 8001A1D0 3C01800F */  lui        $at, %hi(D_800F52F8)
/* 1ADD4 8001A1D4 00230821 */  addu       $at, $at, $v1
/* 1ADD8 8001A1D8 E42052F8 */  swc1       $f0, %lo(D_800F52F8)($at)
/* 1ADDC 8001A1DC 24840001 */  addiu      $a0, $a0, 1
/* 1ADE0 8001A1E0 28820004 */  slti       $v0, $a0, 4
/* 1ADE4 8001A1E4 1440FFEA */  bnez       $v0, .L8001A190
/* 1ADE8 8001A1E8 00041840 */   sll       $v1, $a0, 1
/* 1ADEC 8001A1EC 24020003 */  addiu      $v0, $zero, 3
/* 1ADF0 8001A1F0 3C01800F */  lui        $at, %hi(D_800F3705)
/* 1ADF4 8001A1F4 A0223705 */  sb         $v0, %lo(D_800F3705)($at)
/* 1ADF8 8001A1F8 24021000 */  addiu      $v0, $zero, 0x1000
/* 1ADFC 8001A1FC 3C01800F */  lui        $at, %hi(D_800F3F30)
/* 1AE00 8001A200 A4223F30 */  sh         $v0, %lo(D_800F3F30)($at)
/* 1AE04 8001A204 24022004 */  addiu      $v0, $zero, 0x2004
/* 1AE08 8001A208 3C01800F */  lui        $at, %hi(D_800ED726)
/* 1AE0C 8001A20C A422D726 */  sh         $v0, %lo(D_800ED726)($at)
/* 1AE10 8001A210 24020180 */  addiu      $v0, $zero, 0x180
/* 1AE14 8001A214 3C01800F */  lui        $at, %hi(D_800F64EC)
/* 1AE18 8001A218 0C01C864 */  jal        func_80072190
/* 1AE1C 8001A21C A42264EC */   sh        $v0, %lo(D_800F64EC)($at)
/* 1AE20 8001A220 3C06800F */  lui        $a2, %hi(D_800F3F30)
/* 1AE24 8001A224 94C63F30 */  lhu        $a2, %lo(D_800F3F30)($a2)
/* 1AE28 8001A228 3C07800F */  lui        $a3, %hi(D_800ED726)
/* 1AE2C 8001A22C 94E7D726 */  lhu        $a3, %lo(D_800ED726)($a3)
/* 1AE30 8001A230 3C02800F */  lui        $v0, %hi(D_800F64EC)
/* 1AE34 8001A234 944264EC */  lhu        $v0, %lo(D_800F64EC)($v0)
/* 1AE38 8001A238 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AE3C 8001A23C 3C02800F */  lui        $v0, %hi(D_800F3705)
/* 1AE40 8001A240 90423705 */  lbu        $v0, %lo(D_800F3705)($v0)
/* 1AE44 8001A244 3C048004 */  lui        $a0, %hi(func_8003B6A4)
/* 1AE48 8001A248 2484B6A4 */  addiu      $a0, $a0, %lo(func_8003B6A4)
/* 1AE4C 8001A24C 3C058004 */  lui        $a1, %hi(func_8003B6C8)
/* 1AE50 8001A250 24A5B6C8 */  addiu      $a1, $a1, %lo(func_8003B6C8)
/* 1AE54 8001A254 0C008ED0 */  jal        func_80023B40
/* 1AE58 8001A258 AFA20014 */   sw        $v0, 0x14($sp)
/* 1AE5C 8001A25C 0C007490 */  jal        func_8001D240
/* 1AE60 8001A260 24040001 */   addiu     $a0, $zero, 1
/* 1AE64 8001A264 0C018850 */  jal        func_80062140
/* 1AE68 8001A268 00000000 */   nop
/* 1AE6C 8001A26C 3C0400FD */  lui        $a0, 0xfd
/* 1AE70 8001A270 0C016DB4 */  jal        func_8005B6D0
/* 1AE74 8001A274 2484B860 */   addiu     $a0, $a0, -0x47a0
/* 1AE78 8001A278 0C00EDC4 */  jal        func_8003B710
/* 1AE7C 8001A27C 00000000 */   nop
/* 1AE80 8001A280 3C048002 */  lui        $a0, %hi(func_8001A3DC)
/* 1AE84 8001A284 2484A3DC */  addiu      $a0, $a0, %lo(func_8001A3DC)
/* 1AE88 8001A288 3405F000 */  ori        $a1, $zero, 0xf000
/* 1AE8C 8001A28C 24063000 */  addiu      $a2, $zero, 0x3000
/* 1AE90 8001A290 0C018C51 */  jal        func_80063144
/* 1AE94 8001A294 00003821 */   addu      $a3, $zero, $zero
/* 1AE98 8001A298 3C01800F */  lui        $at, %hi(D_800F2BD0)
/* 1AE9C 8001A29C AC222BD0 */  sw         $v0, %lo(D_800F2BD0)($at)
/* 1AEA0 8001A2A0 3C048002 */  lui        $a0, %hi(func_8001A428)
/* 1AEA4 8001A2A4 2484A428 */  addiu      $a0, $a0, %lo(func_8001A428)
/* 1AEA8 8001A2A8 24054000 */  addiu      $a1, $zero, 0x4000
/* 1AEAC 8001A2AC 24063000 */  addiu      $a2, $zero, 0x3000
/* 1AEB0 8001A2B0 0C018C51 */  jal        func_80063144
/* 1AEB4 8001A2B4 00003821 */   addu      $a3, $zero, $zero
/* 1AEB8 8001A2B8 3C048002 */  lui        $a0, %hi(func_8001A454)
/* 1AEBC 8001A2BC 2484A454 */  addiu      $a0, $a0, %lo(func_8001A454)
/* 1AEC0 8001A2C0 24051000 */  addiu      $a1, $zero, 0x1000
/* 1AEC4 8001A2C4 24063000 */  addiu      $a2, $zero, 0x3000
/* 1AEC8 8001A2C8 0C018C51 */  jal        func_80063144
/* 1AECC 8001A2CC 00003821 */   addu      $a3, $zero, $zero
/* 1AED0 8001A2D0 3C01800F */  lui        $at, %hi(D_800F3700)
/* 1AED4 8001A2D4 0C006926 */  jal        func_8001A498
/* 1AED8 8001A2D8 AC223700 */   sw        $v0, %lo(D_800F3700)($at)
/* 1AEDC 8001A2DC 0C016C31 */  jal        func_8005B0C4
/* 1AEE0 8001A2E0 00000000 */   nop
/* 1AEE4 8001A2E4 0C002CAF */  jal        func_8000B2BC
/* 1AEE8 8001A2E8 00408021 */   addu      $s0, $v0, $zero
/* 1AEEC 8001A2EC 00408821 */  addu       $s1, $v0, $zero
/* 1AEF0 8001A2F0 24020001 */  addiu      $v0, $zero, 1
/* 1AEF4 8001A2F4 16020002 */  bne        $s0, $v0, .L8001A300
/* 1AEF8 8001A2F8 24040067 */   addiu     $a0, $zero, 0x67
/* 1AEFC 8001A2FC 24040068 */  addiu      $a0, $zero, 0x68
.L8001A300:
/* 1AF00 8001A300 00002821 */  addu       $a1, $zero, $zero
/* 1AF04 8001A304 0C0177D1 */  jal        func_8005DF44
/* 1AF08 8001A308 24060081 */   addiu     $a2, $zero, 0x81
/* 1AF0C 8001A30C 3C0401BC */  lui        $a0, 0x1bc
/* 1AF10 8001A310 24848460 */  addiu      $a0, $a0, -0x7ba0
/* 1AF14 8001A314 00002821 */  addu       $a1, $zero, $zero
/* 1AF18 8001A318 00003021 */  addu       $a2, $zero, $zero
/* 1AF1C 8001A31C 0C00430C */  jal        func_80010C30
/* 1AF20 8001A320 00003821 */   addu      $a3, $zero, $zero
/* 1AF24 8001A324 AFA00010 */  sw         $zero, 0x10($sp)
/* 1AF28 8001A328 3C040178 */  lui        $a0, 0x178
/* 1AF2C 8001A32C 24848BC0 */  addiu      $a0, $a0, -0x7440
/* 1AF30 8001A330 3C050183 */  lui        $a1, 0x183
/* 1AF34 8001A334 24A52AE0 */  addiu      $a1, $a1, 0x2ae0
/* 1AF38 8001A338 00003021 */  addu       $a2, $zero, $zero
/* 1AF3C 8001A33C 0C002FA6 */  jal        func_8000BE98
/* 1AF40 8001A340 00003821 */   addu      $a3, $zero, $zero
/* 1AF44 8001A344 24020001 */  addiu      $v0, $zero, 1
/* 1AF48 8001A348 3C01800C */  lui        $at, %hi(D_800C59A0)
/* 1AF4C 8001A34C A42259A0 */  sh         $v0, %lo(D_800C59A0)($at)
/* 1AF50 8001A350 3C01800C */  lui        $at, %hi(D_800C599E)
/* 1AF54 8001A354 A422599E */  sh         $v0, %lo(D_800C599E)($at)
/* 1AF58 8001A358 3C0201CF */  lui        $v0, 0x1cf
/* 1AF5C 8001A35C 2442CC60 */  addiu      $v0, $v0, -0x33a0
/* 1AF60 8001A360 AE220024 */  sw         $v0, 0x24($s1)
/* 1AF64 8001A364 3C0201CF */  lui        $v0, 0x1cf
/* 1AF68 8001A368 2442D490 */  addiu      $v0, $v0, -0x2b70
/* 1AF6C 8001A36C AE220028 */  sw         $v0, 0x28($s1)
/* 1AF70 8001A370 24020014 */  addiu      $v0, $zero, 0x14
/* 1AF74 8001A374 AE220040 */  sw         $v0, 0x40($s1)
/* 1AF78 8001A378 2404006E */  addiu      $a0, $zero, 0x6e
/* 1AF7C 8001A37C 00002821 */  addu       $a1, $zero, $zero
/* 1AF80 8001A380 3C06802E */  lui        $a2, 0x802e
/* 1AF84 8001A384 0C002C03 */  jal        func_8000B00C
/* 1AF88 8001A388 3C070008 */   lui       $a3, 8
/* 1AF8C 8001A38C 0C0165E6 */  jal        func_80059798
/* 1AF90 8001A390 24040010 */   addiu     $a0, $zero, 0x10
/* 1AF94 8001A394 10400002 */  beqz       $v0, .L8001A3A0
/* 1AF98 8001A398 24040001 */   addiu     $a0, $zero, 1
/* 1AF9C 8001A39C 00002021 */  addu       $a0, $zero, $zero
.L8001A3A0:
/* 1AFA0 8001A3A0 0C002CD9 */  jal        func_8000B364
/* 1AFA4 8001A3A4 00000000 */   nop
/* 1AFA8 8001A3A8 0C018CEA */  jal        func_800633A8
/* 1AFAC 8001A3AC 00000000 */   nop
/* 1AFB0 8001A3B0 0C018D06 */  jal        func_80063418
/* 1AFB4 8001A3B4 00402021 */   addu      $a0, $v0, $zero
.L8001A3B8:
/* 1AFB8 8001A3B8 0C018D6D */  jal        func_800635B4
/* 1AFBC 8001A3BC 00000000 */   nop
/* 1AFC0 8001A3C0 080068EE */  j          .L8001A3B8
/* 1AFC4 8001A3C4 00000000 */   nop
/* 1AFC8 8001A3C8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1AFCC 8001A3CC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1AFD0 8001A3D0 8FB00018 */  lw         $s0, 0x18($sp)
/* 1AFD4 8001A3D4 03E00008 */  jr         $ra
/* 1AFD8 8001A3D8 27BD0028 */   addiu     $sp, $sp, 0x28
