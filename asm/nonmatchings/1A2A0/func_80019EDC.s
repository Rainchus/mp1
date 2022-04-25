	.set noat
	.set noreorder

glabel func_80019EDC
/* 1AADC 80019EDC 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* 1AAE0 80019EE0 AFBF00C8 */  sw         $ra, 0xc8($sp)
/* 1AAE4 80019EE4 AFB700C4 */  sw         $s7, 0xc4($sp)
/* 1AAE8 80019EE8 AFB600C0 */  sw         $s6, 0xc0($sp)
/* 1AAEC 80019EEC AFB500BC */  sw         $s5, 0xbc($sp)
/* 1AAF0 80019EF0 AFB400B8 */  sw         $s4, 0xb8($sp)
/* 1AAF4 80019EF4 AFB300B4 */  sw         $s3, 0xb4($sp)
/* 1AAF8 80019EF8 AFB200B0 */  sw         $s2, 0xb0($sp)
/* 1AAFC 80019EFC AFB100AC */  sw         $s1, 0xac($sp)
/* 1AB00 80019F00 AFB000A8 */  sw         $s0, 0xa8($sp)
/* 1AB04 80019F04 F7B600D8 */  sdc1       $f22, 0xd8($sp)
/* 1AB08 80019F08 F7B400D0 */  sdc1       $f20, 0xd0($sp)
/* 1AB0C 80019F0C 00808021 */  addu       $s0, $a0, $zero
/* 1AB10 80019F10 00A0A821 */  addu       $s5, $a1, $zero
/* 1AB14 80019F14 4486B000 */  mtc1       $a2, $f22
/* 1AB18 80019F18 00E0B821 */  addu       $s7, $a3, $zero
/* 1AB1C 80019F1C 27A40018 */  addiu      $a0, $sp, 0x18
/* 1AB20 80019F20 0C028354 */  jal        func_800A0D50
/* 1AB24 80019F24 02002821 */   addu      $a1, $s0, $zero
/* 1AB28 80019F28 27B40028 */  addiu      $s4, $sp, 0x28
/* 1AB2C 80019F2C 02802021 */  addu       $a0, $s4, $zero
/* 1AB30 80019F30 2605000C */  addiu      $a1, $s0, 0xc
/* 1AB34 80019F34 0C0283A0 */  jal        func_800A0E80
/* 1AB38 80019F38 02003021 */   addu      $a2, $s0, $zero
/* 1AB3C 80019F3C 27B30038 */  addiu      $s3, $sp, 0x38
/* 1AB40 80019F40 02602021 */  addu       $a0, $s3, $zero
/* 1AB44 80019F44 26050018 */  addiu      $a1, $s0, 0x18
/* 1AB48 80019F48 0C0283A0 */  jal        func_800A0E80
/* 1AB4C 80019F4C 02003021 */   addu      $a2, $s0, $zero
/* 1AB50 80019F50 27B60048 */  addiu      $s6, $sp, 0x48
/* 1AB54 80019F54 02C02021 */  addu       $a0, $s6, $zero
/* 1AB58 80019F58 26050024 */  addiu      $a1, $s0, 0x24
/* 1AB5C 80019F5C 0C0283A0 */  jal        func_800A0E80
/* 1AB60 80019F60 02003021 */   addu      $a2, $s0, $zero
/* 1AB64 80019F64 27B20058 */  addiu      $s2, $sp, 0x58
/* 1AB68 80019F68 02402021 */  addu       $a0, $s2, $zero
/* 1AB6C 80019F6C 02802821 */  addu       $a1, $s4, $zero
/* 1AB70 80019F70 0C02853C */  jal        func_800A14F0
/* 1AB74 80019F74 02603021 */   addu      $a2, $s3, $zero
/* 1AB78 80019F78 27B10068 */  addiu      $s1, $sp, 0x68
/* 1AB7C 80019F7C 02202021 */  addu       $a0, $s1, $zero
/* 1AB80 80019F80 02A02821 */  addu       $a1, $s5, $zero
/* 1AB84 80019F84 0C0283A0 */  jal        func_800A0E80
/* 1AB88 80019F88 02003021 */   addu      $a2, $s0, $zero
/* 1AB8C 80019F8C AFB10010 */  sw         $s1, 0x10($sp)
/* 1AB90 80019F90 27B00078 */  addiu      $s0, $sp, 0x78
/* 1AB94 80019F94 AFB00014 */  sw         $s0, 0x14($sp)
/* 1AB98 80019F98 27A40018 */  addiu      $a0, $sp, 0x18
/* 1AB9C 80019F9C 02802821 */  addu       $a1, $s4, $zero
/* 1ABA0 80019FA0 02603021 */  addu       $a2, $s3, $zero
/* 1ABA4 80019FA4 0C00669E */  jal        func_80019A78
/* 1ABA8 80019FA8 02403821 */   addu      $a3, $s2, $zero
/* 1ABAC 80019FAC 27B40088 */  addiu      $s4, $sp, 0x88
/* 1ABB0 80019FB0 02802021 */  addu       $a0, $s4, $zero
/* 1ABB4 80019FB4 02002821 */  addu       $a1, $s0, $zero
/* 1ABB8 80019FB8 0C028380 */  jal        func_800A0E00
/* 1ABBC 80019FBC 27A60018 */   addiu     $a2, $sp, 0x18
/* 1ABC0 80019FC0 AFB10010 */  sw         $s1, 0x10($sp)
/* 1ABC4 80019FC4 AFB00014 */  sw         $s0, 0x14($sp)
/* 1ABC8 80019FC8 27A40018 */  addiu      $a0, $sp, 0x18
/* 1ABCC 80019FCC 02602821 */  addu       $a1, $s3, $zero
/* 1ABD0 80019FD0 02C03021 */  addu       $a2, $s6, $zero
/* 1ABD4 80019FD4 0C00669E */  jal        func_80019A78
/* 1ABD8 80019FD8 02403821 */   addu      $a3, $s2, $zero
/* 1ABDC 80019FDC 27B10098 */  addiu      $s1, $sp, 0x98
/* 1ABE0 80019FE0 02202021 */  addu       $a0, $s1, $zero
/* 1ABE4 80019FE4 02002821 */  addu       $a1, $s0, $zero
/* 1ABE8 80019FE8 0C028380 */  jal        func_800A0E00
/* 1ABEC 80019FEC 27A60018 */   addiu     $a2, $sp, 0x18
/* 1ABF0 80019FF0 02802021 */  addu       $a0, $s4, $zero
/* 1ABF4 80019FF4 0C0284F0 */  jal        func_800A13C0
/* 1ABF8 80019FF8 02A02821 */   addu      $a1, $s5, $zero
/* 1ABFC 80019FFC 46000506 */  mov.s      $f20, $f0
/* 1AC00 8001A000 02202021 */  addu       $a0, $s1, $zero
/* 1AC04 8001A004 0C0284F0 */  jal        func_800A13C0
/* 1AC08 8001A008 02A02821 */   addu      $a1, $s5, $zero
/* 1AC0C 8001A00C 4600A03C */  c.lt.s     $f20, $f0
/* 1AC10 8001A010 00000000 */  nop
/* 1AC14 8001A014 00000000 */  nop
/* 1AC18 8001A018 45000003 */  bc1f       .L8001A028
/* 1AC1C 8001A01C 02E02021 */   addu      $a0, $s7, $zero
/* 1AC20 8001A020 0800680C */  j          .L8001A030
/* 1AC24 8001A024 02802821 */   addu      $a1, $s4, $zero
.L8001A028:
/* 1AC28 8001A028 46000506 */  mov.s      $f20, $f0
/* 1AC2C 8001A02C 27A50098 */  addiu      $a1, $sp, 0x98
.L8001A030:
/* 1AC30 8001A030 0C028354 */  jal        func_800A0D50
/* 1AC34 8001A034 00000000 */   nop
/* 1AC38 8001A038 4614B03C */  c.lt.s     $f22, $f20
/* 1AC3C 8001A03C 00000000 */  nop
/* 1AC40 8001A040 00000000 */  nop
/* 1AC44 8001A044 45010002 */  bc1t       .L8001A050
/* 1AC48 8001A048 00001021 */   addu      $v0, $zero, $zero
/* 1AC4C 8001A04C 24020001 */  addiu      $v0, $zero, 1
.L8001A050:
/* 1AC50 8001A050 8FBF00C8 */  lw         $ra, 0xc8($sp)
/* 1AC54 8001A054 8FB700C4 */  lw         $s7, 0xc4($sp)
/* 1AC58 8001A058 8FB600C0 */  lw         $s6, 0xc0($sp)
/* 1AC5C 8001A05C 8FB500BC */  lw         $s5, 0xbc($sp)
/* 1AC60 8001A060 8FB400B8 */  lw         $s4, 0xb8($sp)
/* 1AC64 8001A064 8FB300B4 */  lw         $s3, 0xb4($sp)
/* 1AC68 8001A068 8FB200B0 */  lw         $s2, 0xb0($sp)
/* 1AC6C 8001A06C 8FB100AC */  lw         $s1, 0xac($sp)
/* 1AC70 8001A070 8FB000A8 */  lw         $s0, 0xa8($sp)
/* 1AC74 8001A074 D7B600D8 */  ldc1       $f22, 0xd8($sp)
/* 1AC78 8001A078 D7B400D0 */  ldc1       $f20, 0xd0($sp)
/* 1AC7C 8001A07C 03E00008 */  jr         $ra
/* 1AC80 8001A080 27BD00E0 */   addiu     $sp, $sp, 0xe0
