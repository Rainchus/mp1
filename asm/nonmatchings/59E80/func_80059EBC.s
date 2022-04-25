	.set noat
	.set noreorder

glabel func_80059EBC
/* 5AABC 80059EBC 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 5AAC0 80059EC0 AFBF007C */  sw         $ra, 0x7c($sp)
/* 5AAC4 80059EC4 AFB20078 */  sw         $s2, 0x78($sp)
/* 5AAC8 80059EC8 AFB10074 */  sw         $s1, 0x74($sp)
/* 5AACC 80059ECC AFB00070 */  sw         $s0, 0x70($sp)
/* 5AAD0 80059ED0 F7BA0098 */  sdc1       $f26, 0x98($sp)
/* 5AAD4 80059ED4 F7B80090 */  sdc1       $f24, 0x90($sp)
/* 5AAD8 80059ED8 F7B60088 */  sdc1       $f22, 0x88($sp)
/* 5AADC 80059EDC F7B40080 */  sdc1       $f20, 0x80($sp)
/* 5AAE0 80059EE0 3C12800F */  lui        $s2, %hi(D_800ED610)
/* 5AAE4 80059EE4 8E52D610 */  lw         $s2, %lo(D_800ED610)($s2)
/* 5AAE8 80059EE8 3C11800F */  lui        $s1, %hi(D_800ED72C)
/* 5AAEC 80059EEC 8E31D72C */  lw         $s1, %lo(D_800ED72C)($s1)
/* 5AAF0 80059EF0 3C02800F */  lui        $v0, %hi(D_800F64F8)
/* 5AAF4 80059EF4 904264F8 */  lbu        $v0, %lo(D_800F64F8)($v0)
/* 5AAF8 80059EF8 14400085 */  bnez       $v0, .L8005A110
/* 5AAFC 80059EFC 00000000 */   nop
/* 5AB00 80059F00 3C10800F */  lui        $s0, %hi(D_800F33EC)
/* 5AB04 80059F04 261033EC */  addiu      $s0, $s0, %lo(D_800F33EC)
/* 5AB08 80059F08 C62C0000 */  lwc1       $f12, ($s1)
/* 5AB0C 80059F0C 0C01678A */  jal        func_80059E28
/* 5AB10 80059F10 C60E0000 */   lwc1      $f14, ($s0)
/* 5AB14 80059F14 3C0140C0 */  lui        $at, 0x40c0
/* 5AB18 80059F18 44811000 */  mtc1       $at, $f2
/* 5AB1C 80059F1C 00000000 */  nop
/* 5AB20 80059F20 46020003 */  div.s      $f0, $f0, $f2
/* 5AB24 80059F24 C60C0000 */  lwc1       $f12, ($s0)
/* 5AB28 80059F28 0C01676B */  jal        func_80059DAC
/* 5AB2C 80059F2C 460C0300 */   add.s     $f12, $f0, $f12
/* 5AB30 80059F30 E6000000 */  swc1       $f0, ($s0)
/* 5AB34 80059F34 C62C0004 */  lwc1       $f12, 4($s1)
/* 5AB38 80059F38 0C01678A */  jal        func_80059E28
/* 5AB3C 80059F3C C60E0004 */   lwc1      $f14, 4($s0)
/* 5AB40 80059F40 0C017F57 */  jal        func_8005FD5C
/* 5AB44 80059F44 46000686 */   mov.s     $f26, $f0
/* 5AB48 80059F48 3042FFFF */  andi       $v0, $v0, 0xffff
/* 5AB4C 80059F4C 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* 5AB50 80059F50 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* 5AB54 80059F54 00431021 */  addu       $v0, $v0, $v1
/* 5AB58 80059F58 14400047 */  bnez       $v0, .L8005A078
/* 5AB5C 80059F5C 00000000 */   nop
/* 5AB60 80059F60 3C02800F */  lui        $v0, %hi(D_800F384C)
/* 5AB64 80059F64 9442384C */  lhu        $v0, %lo(D_800F384C)($v0)
/* 5AB68 80059F68 00021202 */  srl        $v0, $v0, 8
/* 5AB6C 80059F6C 30420001 */  andi       $v0, $v0, 1
/* 5AB70 80059F70 44800000 */  mtc1       $zero, $f0
/* 5AB74 80059F74 00000000 */  nop
/* 5AB78 80059F78 461A003C */  c.lt.s     $f0, $f26
/* 5AB7C 80059F7C 00000000 */  nop
/* 5AB80 80059F80 00000000 */  nop
/* 5AB84 80059F84 45010002 */  bc1t       .L80059F90
/* 5AB88 80059F88 24030001 */   addiu     $v1, $zero, 1
/* 5AB8C 80059F8C 00001821 */  addu       $v1, $zero, $zero
.L80059F90:
/* 5AB90 80059F90 00431024 */  and        $v0, $v0, $v1
/* 5AB94 80059F94 10400003 */  beqz       $v0, .L80059FA4
/* 5AB98 80059F98 00000000 */   nop
/* 5AB9C 80059F9C 3C01C334 */  lui        $at, 0xc334
/* 5ABA0 80059FA0 4481D000 */  mtc1       $at, $f26
.L80059FA4:
/* 5ABA4 80059FA4 3C02800F */  lui        $v0, %hi(D_800F384C)
/* 5ABA8 80059FA8 9442384C */  lhu        $v0, %lo(D_800F384C)($v0)
/* 5ABAC 80059FAC 00021242 */  srl        $v0, $v0, 9
/* 5ABB0 80059FB0 30420001 */  andi       $v0, $v0, 1
/* 5ABB4 80059FB4 44800000 */  mtc1       $zero, $f0
/* 5ABB8 80059FB8 00000000 */  nop
/* 5ABBC 80059FBC 4600D03C */  c.lt.s     $f26, $f0
/* 5ABC0 80059FC0 00000000 */  nop
/* 5ABC4 80059FC4 00000000 */  nop
/* 5ABC8 80059FC8 45010002 */  bc1t       .L80059FD4
/* 5ABCC 80059FCC 24030001 */   addiu     $v1, $zero, 1
/* 5ABD0 80059FD0 00001821 */  addu       $v1, $zero, $zero
.L80059FD4:
/* 5ABD4 80059FD4 00431024 */  and        $v0, $v0, $v1
/* 5ABD8 80059FD8 10400004 */  beqz       $v0, .L80059FEC
/* 5ABDC 80059FDC 00000000 */   nop
/* 5ABE0 80059FE0 3C014334 */  lui        $at, 0x4334
/* 5ABE4 80059FE4 4481D000 */  mtc1       $at, $f26
/* 5ABE8 80059FE8 00000000 */  nop
.L80059FEC:
/* 5ABEC 80059FEC 4600D00D */  trunc.w.s  $f0, $f26
/* 5ABF0 80059FF0 44020000 */  mfc1       $v0, $f0
/* 5ABF4 80059FF4 00000000 */  nop
/* 5ABF8 80059FF8 04420001 */  bltzl      $v0, .L8005A000
/* 5ABFC 80059FFC 00021023 */   negu      $v0, $v0
.L8005A000:
/* 5AC00 8005A000 44821000 */  mtc1       $v0, $f2
/* 5AC04 8005A004 00000000 */  nop
/* 5AC08 8005A008 468010A0 */  cvt.s.w    $f2, $f2
/* 5AC0C 8005A00C 3C0142B4 */  lui        $at, 0x42b4
/* 5AC10 8005A010 44810000 */  mtc1       $at, $f0
/* 5AC14 8005A014 00000000 */  nop
/* 5AC18 8005A018 4602003C */  c.lt.s     $f0, $f2
/* 5AC1C 8005A01C 00000000 */  nop
/* 5AC20 8005A020 45000015 */  bc1f       .L8005A078
/* 5AC24 8005A024 00000000 */   nop
/* 5AC28 8005A028 44800000 */  mtc1       $zero, $f0
/* 5AC2C 8005A02C 00000000 */  nop
/* 5AC30 8005A030 4600D03C */  c.lt.s     $f26, $f0
/* 5AC34 8005A034 00000000 */  nop
/* 5AC38 8005A038 45000006 */  bc1f       .L8005A054
/* 5AC3C 8005A03C 00000000 */   nop
/* 5AC40 8005A040 3C01C2B4 */  lui        $at, 0xc2b4
/* 5AC44 8005A044 44810000 */  mtc1       $at, $f0
/* 5AC48 8005A048 00000000 */  nop
/* 5AC4C 8005A04C 0801681E */  j          .L8005A078
/* 5AC50 8005A050 46000686 */   mov.s     $f26, $f0
.L8005A054:
/* 5AC54 8005A054 4600D032 */  c.eq.s     $f26, $f0
/* 5AC58 8005A058 00000000 */  nop
/* 5AC5C 8005A05C 00000000 */  nop
/* 5AC60 8005A060 45010005 */  bc1t       .L8005A078
/* 5AC64 8005A064 46000686 */   mov.s     $f26, $f0
/* 5AC68 8005A068 3C0142B4 */  lui        $at, 0x42b4
/* 5AC6C 8005A06C 44810000 */  mtc1       $at, $f0
/* 5AC70 8005A070 00000000 */  nop
/* 5AC74 8005A074 46000686 */  mov.s      $f26, $f0
.L8005A078:
/* 5AC78 8005A078 3C10800F */  lui        $s0, %hi(D_800F33F0)
/* 5AC7C 8005A07C 261033F0 */  addiu      $s0, $s0, %lo(D_800F33F0)
/* 5AC80 8005A080 3C0140C0 */  lui        $at, 0x40c0
/* 5AC84 8005A084 4481A000 */  mtc1       $at, $f20
/* 5AC88 8005A088 00000000 */  nop
/* 5AC8C 8005A08C 4614D003 */  div.s      $f0, $f26, $f20
/* 5AC90 8005A090 C60C0000 */  lwc1       $f12, ($s0)
/* 5AC94 8005A094 0C01676B */  jal        func_80059DAC
/* 5AC98 8005A098 460C0300 */   add.s     $f12, $f0, $f12
/* 5AC9C 8005A09C E6000000 */  swc1       $f0, ($s0)
/* 5ACA0 8005A0A0 C62C0008 */  lwc1       $f12, 8($s1)
/* 5ACA4 8005A0A4 0C01678A */  jal        func_80059E28
/* 5ACA8 8005A0A8 C60E0004 */   lwc1      $f14, 4($s0)
/* 5ACAC 8005A0AC 46140003 */  div.s      $f0, $f0, $f20
/* 5ACB0 8005A0B0 C60C0004 */  lwc1       $f12, 4($s0)
/* 5ACB4 8005A0B4 0C01676B */  jal        func_80059DAC
/* 5ACB8 8005A0B8 460C0300 */   add.s     $f12, $f0, $f12
/* 5ACBC 8005A0BC E6000004 */  swc1       $f0, 4($s0)
/* 5ACC0 8005A0C0 3C02800F */  lui        $v0, %hi(D_800F6524)
/* 5ACC4 8005A0C4 24426524 */  addiu      $v0, $v0, %lo(D_800F6524)
/* 5ACC8 8005A0C8 C6400000 */  lwc1       $f0, ($s2)
/* 5ACCC 8005A0CC C4420000 */  lwc1       $f2, ($v0)
/* 5ACD0 8005A0D0 46020001 */  sub.s      $f0, $f0, $f2
/* 5ACD4 8005A0D4 46140003 */  div.s      $f0, $f0, $f20
/* 5ACD8 8005A0D8 46020000 */  add.s      $f0, $f0, $f2
/* 5ACDC 8005A0DC E4400000 */  swc1       $f0, ($v0)
/* 5ACE0 8005A0E0 C6400004 */  lwc1       $f0, 4($s2)
/* 5ACE4 8005A0E4 C4420004 */  lwc1       $f2, 4($v0)
/* 5ACE8 8005A0E8 46020001 */  sub.s      $f0, $f0, $f2
/* 5ACEC 8005A0EC 46140003 */  div.s      $f0, $f0, $f20
/* 5ACF0 8005A0F0 46020000 */  add.s      $f0, $f0, $f2
/* 5ACF4 8005A0F4 E4400004 */  swc1       $f0, 4($v0)
/* 5ACF8 8005A0F8 C6400008 */  lwc1       $f0, 8($s2)
/* 5ACFC 8005A0FC C4420008 */  lwc1       $f2, 8($v0)
/* 5AD00 8005A100 46020001 */  sub.s      $f0, $f0, $f2
/* 5AD04 8005A104 46140003 */  div.s      $f0, $f0, $f20
/* 5AD08 8005A108 46020000 */  add.s      $f0, $f0, $f2
/* 5AD0C 8005A10C E4400008 */  swc1       $f0, 8($v0)
.L8005A110:
/* 5AD10 8005A110 3C02800F */  lui        $v0, %hi(D_800F33EC)
/* 5AD14 8005A114 244233EC */  addiu      $v0, $v0, %lo(D_800F33EC)
/* 5AD18 8005A118 C4580000 */  lwc1       $f24, ($v0)
/* 5AD1C 8005A11C C45A0004 */  lwc1       $f26, 4($v0)
/* 5AD20 8005A120 0C02BAB0 */  jal        func_800AEAC0
/* 5AD24 8005A124 4600D306 */   mov.s     $f12, $f26
/* 5AD28 8005A128 46000506 */  mov.s      $f20, $f0
/* 5AD2C 8005A12C 0C02BBF4 */  jal        func_800AEFD0
/* 5AD30 8005A130 4600C306 */   mov.s     $f12, $f24
/* 5AD34 8005A134 3C10800F */  lui        $s0, %hi(D_800F6524)
/* 5AD38 8005A138 26106524 */  addiu      $s0, $s0, %lo(D_800F6524)
/* 5AD3C 8005A13C 4600A502 */  mul.s      $f20, $f20, $f0
/* 5AD40 8005A140 3C01447A */  lui        $at, 0x447a
/* 5AD44 8005A144 4481B000 */  mtc1       $at, $f22
/* 5AD48 8005A148 00000000 */  nop
/* 5AD4C 8005A14C 4616A502 */  mul.s      $f20, $f20, $f22
/* 5AD50 8005A150 C6000000 */  lwc1       $f0, ($s0)
/* 5AD54 8005A154 4600A500 */  add.s      $f20, $f20, $f0
/* 5AD58 8005A158 E7B40050 */  swc1       $f20, 0x50($sp)
/* 5AD5C 8005A15C 0C02BAB0 */  jal        func_800AEAC0
/* 5AD60 8005A160 4600C306 */   mov.s     $f12, $f24
/* 5AD64 8005A164 46000007 */  neg.s      $f0, $f0
/* 5AD68 8005A168 46160002 */  mul.s      $f0, $f0, $f22
/* 5AD6C 8005A16C C6020004 */  lwc1       $f2, 4($s0)
/* 5AD70 8005A170 46020000 */  add.s      $f0, $f0, $f2
/* 5AD74 8005A174 E7A00054 */  swc1       $f0, 0x54($sp)
/* 5AD78 8005A178 0C02BBF4 */  jal        func_800AEFD0
/* 5AD7C 8005A17C 4600D306 */   mov.s     $f12, $f26
/* 5AD80 8005A180 46000506 */  mov.s      $f20, $f0
/* 5AD84 8005A184 0C02BBF4 */  jal        func_800AEFD0
/* 5AD88 8005A188 4600C306 */   mov.s     $f12, $f24
/* 5AD8C 8005A18C 4600A502 */  mul.s      $f20, $f20, $f0
/* 5AD90 8005A190 00000000 */  nop
/* 5AD94 8005A194 4616A502 */  mul.s      $f20, $f20, $f22
/* 5AD98 8005A198 C6000008 */  lwc1       $f0, 8($s0)
/* 5AD9C 8005A19C 4600A500 */  add.s      $f20, $f20, $f0
/* 5ADA0 8005A1A0 E7B40058 */  swc1       $f20, 0x58($sp)
/* 5ADA4 8005A1A4 0C02BAB0 */  jal        func_800AEAC0
/* 5ADA8 8005A1A8 4600D306 */   mov.s     $f12, $f26
/* 5ADAC 8005A1AC 46000506 */  mov.s      $f20, $f0
/* 5ADB0 8005A1B0 0C02BAB0 */  jal        func_800AEAC0
/* 5ADB4 8005A1B4 4600C306 */   mov.s     $f12, $f24
/* 5ADB8 8005A1B8 4600A502 */  mul.s      $f20, $f20, $f0
/* 5ADBC 8005A1BC E7B40060 */  swc1       $f20, 0x60($sp)
/* 5ADC0 8005A1C0 0C02BBF4 */  jal        func_800AEFD0
/* 5ADC4 8005A1C4 4600C306 */   mov.s     $f12, $f24
/* 5ADC8 8005A1C8 E7A00064 */  swc1       $f0, 0x64($sp)
/* 5ADCC 8005A1CC 0C02BBF4 */  jal        func_800AEFD0
/* 5ADD0 8005A1D0 4600D306 */   mov.s     $f12, $f26
/* 5ADD4 8005A1D4 46000506 */  mov.s      $f20, $f0
/* 5ADD8 8005A1D8 0C02BAB0 */  jal        func_800AEAC0
/* 5ADDC 8005A1DC 4600C306 */   mov.s     $f12, $f24
/* 5ADE0 8005A1E0 4600A502 */  mul.s      $f20, $f20, $f0
/* 5ADE4 8005A1E4 E7B40068 */  swc1       $f20, 0x68($sp)
/* 5ADE8 8005A1E8 00002021 */  addu       $a0, $zero, $zero
/* 5ADEC 8005A1EC 02002821 */  addu       $a1, $s0, $zero
/* 5ADF0 8005A1F0 27A60050 */  addiu      $a2, $sp, 0x50
/* 5ADF4 8005A1F4 0C007508 */  jal        func_8001D420
/* 5ADF8 8005A1F8 27A70060 */   addiu     $a3, $sp, 0x60
/* 5ADFC 8005A1FC 0C00755F */  jal        func_8001D57C
/* 5AE00 8005A200 00002021 */   addu      $a0, $zero, $zero
/* 5AE04 8005A204 8FBF007C */  lw         $ra, 0x7c($sp)
/* 5AE08 8005A208 8FB20078 */  lw         $s2, 0x78($sp)
/* 5AE0C 8005A20C 8FB10074 */  lw         $s1, 0x74($sp)
/* 5AE10 8005A210 8FB00070 */  lw         $s0, 0x70($sp)
/* 5AE14 8005A214 D7BA0098 */  ldc1       $f26, 0x98($sp)
/* 5AE18 8005A218 D7B80090 */  ldc1       $f24, 0x90($sp)
/* 5AE1C 8005A21C D7B60088 */  ldc1       $f22, 0x88($sp)
/* 5AE20 8005A220 D7B40080 */  ldc1       $f20, 0x80($sp)
/* 5AE24 8005A224 03E00008 */  jr         $ra
/* 5AE28 8005A228 27BD00A0 */   addiu     $sp, $sp, 0xa0
