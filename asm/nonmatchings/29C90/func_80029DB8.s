	.set noat
	.set noreorder

glabel func_80029DB8
/* 2A9B8 80029DB8 27BDFF40 */  addiu      $sp, $sp, -0xc0
/* 2A9BC 80029DBC AFBF00B4 */  sw         $ra, 0xb4($sp)
/* 2A9C0 80029DC0 AFBE00B0 */  sw         $fp, 0xb0($sp)
/* 2A9C4 80029DC4 AFB700AC */  sw         $s7, 0xac($sp)
/* 2A9C8 80029DC8 AFB600A8 */  sw         $s6, 0xa8($sp)
/* 2A9CC 80029DCC AFB500A4 */  sw         $s5, 0xa4($sp)
/* 2A9D0 80029DD0 AFB400A0 */  sw         $s4, 0xa0($sp)
/* 2A9D4 80029DD4 AFB3009C */  sw         $s3, 0x9c($sp)
/* 2A9D8 80029DD8 AFB20098 */  sw         $s2, 0x98($sp)
/* 2A9DC 80029DDC AFB10094 */  sw         $s1, 0x94($sp)
/* 2A9E0 80029DE0 AFB00090 */  sw         $s0, 0x90($sp)
/* 2A9E4 80029DE4 F7B400B8 */  sdc1       $f20, 0xb8($sp)
/* 2A9E8 80029DE8 00808821 */  addu       $s1, $a0, $zero
/* 2A9EC 80029DEC 00A0A821 */  addu       $s5, $a1, $zero
/* 2A9F0 80029DF0 96B60004 */  lhu        $s6, 4($s5)
/* 2A9F4 80029DF4 02A02021 */  addu       $a0, $s5, $zero
/* 2A9F8 80029DF8 0C00A6BB */  jal        func_80029AEC
/* 2A9FC 80029DFC 27A50010 */   addiu     $a1, $sp, 0x10
/* 2AA00 80029E00 0C021BEC */  jal        func_80086FB0
/* 2AA04 80029E04 27A40050 */   addiu     $a0, $sp, 0x50
/* 2AA08 80029E08 C62C0000 */  lwc1       $f12, ($s1)
/* 2AA0C 80029E0C 0C02BAB0 */  jal        func_800AEAC0
/* 2AA10 80029E10 00000000 */   nop
/* 2AA14 80029E14 00161400 */  sll        $v0, $s6, 0x10
/* 2AA18 80029E18 00021403 */  sra        $v0, $v0, 0x10
/* 2AA1C 80029E1C 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2AA20 80029E20 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2AA24 80029E24 000280C0 */  sll        $s0, $v0, 3
/* 2AA28 80029E28 02028021 */  addu       $s0, $s0, $v0
/* 2AA2C 80029E2C 00108080 */  sll        $s0, $s0, 2
/* 2AA30 80029E30 02031821 */  addu       $v1, $s0, $v1
/* 2AA34 80029E34 C4620000 */  lwc1       $f2, ($v1)
/* 2AA38 80029E38 468010A0 */  cvt.s.w    $f2, $f2
/* 2AA3C 80029E3C C4660008 */  lwc1       $f6, 8($v1)
/* 2AA40 80029E40 46061082 */  mul.s      $f2, $f2, $f6
/* 2AA44 80029E44 3C014000 */  lui        $at, 0x4000
/* 2AA48 80029E48 4481A000 */  mtc1       $at, $f20
/* 2AA4C 80029E4C 00000000 */  nop
/* 2AA50 80029E50 46141083 */  div.s      $f2, $f2, $f20
/* 2AA54 80029E54 C6240004 */  lwc1       $f4, 4($s1)
/* 2AA58 80029E58 46041080 */  add.s      $f2, $f2, $f4
/* 2AA5C 80029E5C C6A40024 */  lwc1       $f4, 0x24($s5)
/* 2AA60 80029E60 46041080 */  add.s      $f2, $f2, $f4
/* 2AA64 80029E64 46000000 */  add.s      $f0, $f0, $f0
/* 2AA68 80029E68 46060002 */  mul.s      $f0, $f0, $f6
/* 2AA6C 80029E6C 46001081 */  sub.s      $f2, $f2, $f0
/* 2AA70 80029E70 46061083 */  div.s      $f2, $f2, $f6
/* 2AA74 80029E74 4600100D */  trunc.w.s  $f0, $f2
/* 2AA78 80029E78 44120000 */  mfc1       $s2, $f0
/* 2AA7C 80029E7C 00000000 */  nop
/* 2AA80 80029E80 06420001 */  bltzl      $s2, .L80029E88
/* 2AA84 80029E84 00129023 */   negu      $s2, $s2
.L80029E88:
/* 2AA88 80029E88 C62C0000 */  lwc1       $f12, ($s1)
/* 2AA8C 80029E8C 0C02BBF4 */  jal        func_800AEFD0
/* 2AA90 80029E90 00000000 */   nop
/* 2AA94 80029E94 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2AA98 80029E98 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2AA9C 80029E9C 02028021 */  addu       $s0, $s0, $v0
/* 2AAA0 80029EA0 C6020004 */  lwc1       $f2, 4($s0)
/* 2AAA4 80029EA4 468010A0 */  cvt.s.w    $f2, $f2
/* 2AAA8 80029EA8 C606000C */  lwc1       $f6, 0xc($s0)
/* 2AAAC 80029EAC 46061082 */  mul.s      $f2, $f2, $f6
/* 2AAB0 80029EB0 46141083 */  div.s      $f2, $f2, $f20
/* 2AAB4 80029EB4 C6240008 */  lwc1       $f4, 8($s1)
/* 2AAB8 80029EB8 46041080 */  add.s      $f2, $f2, $f4
/* 2AABC 80029EBC C6A4002C */  lwc1       $f4, 0x2c($s5)
/* 2AAC0 80029EC0 46041080 */  add.s      $f2, $f2, $f4
/* 2AAC4 80029EC4 46000000 */  add.s      $f0, $f0, $f0
/* 2AAC8 80029EC8 46060002 */  mul.s      $f0, $f0, $f6
/* 2AACC 80029ECC 46001081 */  sub.s      $f2, $f2, $f0
/* 2AAD0 80029ED0 46061083 */  div.s      $f2, $f2, $f6
/* 2AAD4 80029ED4 4600100D */  trunc.w.s  $f0, $f2
/* 2AAD8 80029ED8 44130000 */  mfc1       $s3, $f0
/* 2AADC 80029EDC 00000000 */  nop
/* 2AAE0 80029EE0 06620001 */  bltzl      $s3, .L80029EE8
/* 2AAE4 80029EE4 00139823 */   negu      $s3, $s3
.L80029EE8:
/* 2AAE8 80029EE8 8E22000C */  lw         $v0, 0xc($s1)
/* 2AAEC 80029EEC 0242F023 */  subu       $fp, $s2, $v0
/* 2AAF0 80029EF0 0242A021 */  addu       $s4, $s2, $v0
/* 2AAF4 80029EF4 26940001 */  addiu      $s4, $s4, 1
/* 2AAF8 80029EF8 8E220010 */  lw         $v0, 0x10($s1)
/* 2AAFC 80029EFC 02622823 */  subu       $a1, $s3, $v0
/* 2AB00 80029F00 0262B821 */  addu       $s7, $s3, $v0
/* 2AB04 80029F04 001E1027 */  nor        $v0, $zero, $fp
/* 2AB08 80029F08 000217C3 */  sra        $v0, $v0, 0x1f
/* 2AB0C 80029F0C 005EF024 */  and        $fp, $v0, $fp
/* 2AB10 80029F10 00051027 */  nor        $v0, $zero, $a1
/* 2AB14 80029F14 000217C3 */  sra        $v0, $v0, 0x1f
/* 2AB18 80029F18 00452824 */  and        $a1, $v0, $a1
/* 2AB1C 80029F1C 8E100000 */  lw         $s0, ($s0)
/* 2AB20 80029F20 0214102A */  slt        $v0, $s0, $s4
/* 2AB24 80029F24 10400002 */  beqz       $v0, .L80029F30
/* 2AB28 80029F28 26F70001 */   addiu     $s7, $s7, 1
/* 2AB2C 80029F2C 0200A021 */  addu       $s4, $s0, $zero
.L80029F30:
/* 2AB30 80029F30 00161C00 */  sll        $v1, $s6, 0x10
/* 2AB34 80029F34 00031C03 */  sra        $v1, $v1, 0x10
/* 2AB38 80029F38 3C04800F */  lui        $a0, %hi(D_800F32AC)
/* 2AB3C 80029F3C 8C8432AC */  lw         $a0, %lo(D_800F32AC)($a0)
/* 2AB40 80029F40 000310C0 */  sll        $v0, $v1, 3
/* 2AB44 80029F44 00431021 */  addu       $v0, $v0, $v1
/* 2AB48 80029F48 00021080 */  sll        $v0, $v0, 2
/* 2AB4C 80029F4C 00441021 */  addu       $v0, $v0, $a0
/* 2AB50 80029F50 8C430004 */  lw         $v1, 4($v0)
/* 2AB54 80029F54 0077102A */  slt        $v0, $v1, $s7
/* 2AB58 80029F58 54400001 */  bnel       $v0, $zero, .L80029F60
/* 2AB5C 80029F5C 0060B821 */   addu      $s7, $v1, $zero
.L80029F60:
/* 2AB60 80029F60 00A09821 */  addu       $s3, $a1, $zero
/* 2AB64 80029F64 0277102A */  slt        $v0, $s3, $s7
/* 2AB68 80029F68 1040004C */  beqz       $v0, .L8002A09C
/* 2AB6C 80029F6C 00161C00 */   sll       $v1, $s6, 0x10
/* 2AB70 80029F70 00031C03 */  sra        $v1, $v1, 0x10
/* 2AB74 80029F74 000310C0 */  sll        $v0, $v1, 3
/* 2AB78 80029F78 00431021 */  addu       $v0, $v0, $v1
/* 2AB7C 80029F7C 00028880 */  sll        $s1, $v0, 2
/* 2AB80 80029F80 03C09021 */  addu       $s2, $fp, $zero
.L80029F84:
/* 2AB84 80029F84 0254102A */  slt        $v0, $s2, $s4
/* 2AB88 80029F88 50400041 */  beql       $v0, $zero, .L8002A090
/* 2AB8C 80029F8C 26730001 */   addiu     $s3, $s3, 1
/* 2AB90 80029F90 2416FFFF */  addiu      $s6, $zero, -1
.L80029F94:
/* 2AB94 80029F94 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2AB98 80029F98 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2AB9C 80029F9C 02231821 */  addu       $v1, $s1, $v1
/* 2ABA0 80029FA0 8C620000 */  lw         $v0, ($v1)
/* 2ABA4 80029FA4 02620018 */  mult       $s3, $v0
/* 2ABA8 80029FA8 00001012 */  mflo       $v0
/* 2ABAC 80029FAC 00528021 */  addu       $s0, $v0, $s2
/* 2ABB0 80029FB0 8C630014 */  lw         $v1, 0x14($v1)
/* 2ABB4 80029FB4 00101040 */  sll        $v0, $s0, 1
/* 2ABB8 80029FB8 00431021 */  addu       $v0, $v0, $v1
/* 2ABBC 80029FBC 84450000 */  lh         $a1, ($v0)
/* 2ABC0 80029FC0 10B6000A */  beq        $a1, $s6, .L80029FEC
/* 2ABC4 80029FC4 00000000 */   nop
/* 2ABC8 80029FC8 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2ABCC 80029FCC 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2ABD0 80029FD0 00063180 */  sll        $a2, $a2, 6
/* 2ABD4 80029FD4 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2ABD8 80029FD8 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2ABDC 80029FDC 8EA4006C */  lw         $a0, 0x6c($s5)
/* 2ABE0 80029FE0 00C23021 */  addu       $a2, $a2, $v0
/* 2ABE4 80029FE4 0C00B4B3 */  jal        func_8002D2CC
/* 2ABE8 80029FE8 27A70010 */   addiu     $a3, $sp, 0x10
.L80029FEC:
/* 2ABEC 80029FEC 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2ABF0 80029FF0 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2ABF4 80029FF4 02221021 */  addu       $v0, $s1, $v0
/* 2ABF8 80029FF8 8C430018 */  lw         $v1, 0x18($v0)
/* 2ABFC 80029FFC 00101040 */  sll        $v0, $s0, 1
/* 2AC00 8002A000 00431021 */  addu       $v0, $v0, $v1
/* 2AC04 8002A004 84450000 */  lh         $a1, ($v0)
/* 2AC08 8002A008 10B6000A */  beq        $a1, $s6, .L8002A034
/* 2AC0C 8002A00C 00000000 */   nop
/* 2AC10 8002A010 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2AC14 8002A014 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2AC18 8002A018 00063180 */  sll        $a2, $a2, 6
/* 2AC1C 8002A01C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2AC20 8002A020 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2AC24 8002A024 8EA4006C */  lw         $a0, 0x6c($s5)
/* 2AC28 8002A028 00C23021 */  addu       $a2, $a2, $v0
/* 2AC2C 8002A02C 0C00B4B3 */  jal        func_8002D2CC
/* 2AC30 8002A030 27A70010 */   addiu     $a3, $sp, 0x10
.L8002A034:
/* 2AC34 8002A034 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2AC38 8002A038 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2AC3C 8002A03C 02221021 */  addu       $v0, $s1, $v0
/* 2AC40 8002A040 8C43001C */  lw         $v1, 0x1c($v0)
/* 2AC44 8002A044 00101040 */  sll        $v0, $s0, 1
/* 2AC48 8002A048 00431021 */  addu       $v0, $v0, $v1
/* 2AC4C 8002A04C 84450000 */  lh         $a1, ($v0)
/* 2AC50 8002A050 50B6000B */  beql       $a1, $s6, .L8002A080
/* 2AC54 8002A054 26520001 */   addiu     $s2, $s2, 1
/* 2AC58 8002A058 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2AC5C 8002A05C 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2AC60 8002A060 00063180 */  sll        $a2, $a2, 6
/* 2AC64 8002A064 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2AC68 8002A068 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2AC6C 8002A06C 8EA4006C */  lw         $a0, 0x6c($s5)
/* 2AC70 8002A070 00C23021 */  addu       $a2, $a2, $v0
/* 2AC74 8002A074 0C00B4B3 */  jal        func_8002D2CC
/* 2AC78 8002A078 27A70010 */   addiu     $a3, $sp, 0x10
/* 2AC7C 8002A07C 26520001 */  addiu      $s2, $s2, 1
.L8002A080:
/* 2AC80 8002A080 0254102A */  slt        $v0, $s2, $s4
/* 2AC84 8002A084 1440FFC3 */  bnez       $v0, .L80029F94
/* 2AC88 8002A088 00000000 */   nop
/* 2AC8C 8002A08C 26730001 */  addiu      $s3, $s3, 1
.L8002A090:
/* 2AC90 8002A090 0277102A */  slt        $v0, $s3, $s7
/* 2AC94 8002A094 5440FFBB */  bnel       $v0, $zero, .L80029F84
/* 2AC98 8002A098 03C09021 */   addu      $s2, $fp, $zero
.L8002A09C:
/* 2AC9C 8002A09C 3C02800F */  lui        $v0, %hi(D_800ED52C)
/* 2ACA0 8002A0A0 9442D52C */  lhu        $v0, %lo(D_800ED52C)($v0)
/* 2ACA4 8002A0A4 24420001 */  addiu      $v0, $v0, 1
/* 2ACA8 8002A0A8 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2ACAC 8002A0AC A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2ACB0 8002A0B0 8FBF00B4 */  lw         $ra, 0xb4($sp)
/* 2ACB4 8002A0B4 8FBE00B0 */  lw         $fp, 0xb0($sp)
/* 2ACB8 8002A0B8 8FB700AC */  lw         $s7, 0xac($sp)
/* 2ACBC 8002A0BC 8FB600A8 */  lw         $s6, 0xa8($sp)
/* 2ACC0 8002A0C0 8FB500A4 */  lw         $s5, 0xa4($sp)
/* 2ACC4 8002A0C4 8FB400A0 */  lw         $s4, 0xa0($sp)
/* 2ACC8 8002A0C8 8FB3009C */  lw         $s3, 0x9c($sp)
/* 2ACCC 8002A0CC 8FB20098 */  lw         $s2, 0x98($sp)
/* 2ACD0 8002A0D0 8FB10094 */  lw         $s1, 0x94($sp)
/* 2ACD4 8002A0D4 8FB00090 */  lw         $s0, 0x90($sp)
/* 2ACD8 8002A0D8 D7B400B8 */  ldc1       $f20, 0xb8($sp)
/* 2ACDC 8002A0DC 03E00008 */  jr         $ra
/* 2ACE0 8002A0E0 27BD00C0 */   addiu     $sp, $sp, 0xc0
