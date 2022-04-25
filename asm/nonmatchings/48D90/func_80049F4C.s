	.set noat
	.set noreorder

glabel func_80049F4C
/* 4AB4C 80049F4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4AB50 80049F50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4AB54 80049F54 AFB10014 */  sw         $s1, 0x14($sp)
/* 4AB58 80049F58 AFB00010 */  sw         $s0, 0x10($sp)
/* 4AB5C 80049F5C 00808821 */  addu       $s1, $a0, $zero
/* 4AB60 80049F60 3C01800F */  lui        $at, %hi(D_800F6598)
/* 4AB64 80049F64 AC316598 */  sw         $s1, %lo(D_800F6598)($at)
/* 4AB68 80049F68 3C03800C */  lui        $v1, %hi(D_800C4F70)
/* 4AB6C 80049F6C 8C634F70 */  lw         $v1, %lo(D_800C4F70)($v1)
/* 4AB70 80049F70 00111080 */  sll        $v0, $s1, 2
/* 4AB74 80049F74 00431021 */  addu       $v0, $v0, $v1
/* 4AB78 80049F78 3C03800D */  lui        $v1, %hi(D_800D6720)
/* 4AB7C 80049F7C 8C636720 */  lw         $v1, %lo(D_800D6720)($v1)
/* 4AB80 80049F80 8C420000 */  lw         $v0, ($v0)
/* 4AB84 80049F84 00621821 */  addu       $v1, $v1, $v0
/* 4AB88 80049F88 3C01800D */  lui        $at, %hi(D_800D6728)
/* 4AB8C 80049F8C AC236728 */  sw         $v1, %lo(D_800D6728)($at)
/* 4AB90 80049F90 0C00EDDD */  jal        func_8003B774
/* 4AB94 80049F94 24040010 */   addiu     $a0, $zero, 0x10
/* 4AB98 80049F98 00408021 */  addu       $s0, $v0, $zero
/* 4AB9C 80049F9C 3C04800D */  lui        $a0, %hi(D_800D6728)
/* 4ABA0 80049FA0 8C846728 */  lw         $a0, %lo(D_800D6728)($a0)
/* 4ABA4 80049FA4 02002821 */  addu       $a1, $s0, $zero
/* 4ABA8 80049FA8 0C0187FA */  jal        func_80061FE8
/* 4ABAC 80049FAC 24060010 */   addiu     $a2, $zero, 0x10
/* 4ABB0 80049FB0 8E110000 */  lw         $s1, ($s0)
/* 4ABB4 80049FB4 0C00EDE6 */  jal        func_8003B798
/* 4ABB8 80049FB8 02002021 */   addu      $a0, $s0, $zero
/* 4ABBC 80049FBC 00118080 */  sll        $s0, $s1, 2
/* 4ABC0 80049FC0 0C00EDDD */  jal        func_8003B774
/* 4ABC4 80049FC4 02002021 */   addu      $a0, $s0, $zero
/* 4ABC8 80049FC8 3C01800C */  lui        $at, %hi(D_800C4F74)
/* 4ABCC 80049FCC AC224F74 */  sw         $v0, %lo(D_800C4F74)($at)
/* 4ABD0 80049FD0 3C04800D */  lui        $a0, %hi(D_800D6728)
/* 4ABD4 80049FD4 8C846728 */  lw         $a0, %lo(D_800D6728)($a0)
/* 4ABD8 80049FD8 24840004 */  addiu      $a0, $a0, 4
/* 4ABDC 80049FDC 00402821 */  addu       $a1, $v0, $zero
/* 4ABE0 80049FE0 0C0187FA */  jal        func_80061FE8
/* 4ABE4 80049FE4 02003021 */   addu      $a2, $s0, $zero
/* 4ABE8 80049FE8 0C00EDDD */  jal        func_8003B774
/* 4ABEC 80049FEC 2404003C */   addiu     $a0, $zero, 0x3c
/* 4ABF0 80049FF0 3C01800C */  lui        $at, %hi(D_800C4F78)
/* 4ABF4 80049FF4 AC224F78 */  sw         $v0, %lo(D_800C4F78)($at)
/* 4ABF8 80049FF8 3C03800C */  lui        $v1, %hi(D_800C4F74)
/* 4ABFC 80049FFC 8C634F74 */  lw         $v1, %lo(D_800C4F74)($v1)
/* 4AC00 8004A000 3C05800D */  lui        $a1, %hi(D_800D6728)
/* 4AC04 8004A004 8CA56728 */  lw         $a1, %lo(D_800D6728)($a1)
/* 4AC08 8004A008 8C640000 */  lw         $a0, ($v1)
/* 4AC0C 8004A00C 00A42021 */  addu       $a0, $a1, $a0
/* 4AC10 8004A010 00402821 */  addu       $a1, $v0, $zero
/* 4AC14 8004A014 0C0187FA */  jal        func_80061FE8
/* 4AC18 8004A018 2406003C */   addiu     $a2, $zero, 0x3c
/* 4AC1C 8004A01C 3C03800C */  lui        $v1, %hi(D_800C4F78)
/* 4AC20 8004A020 8C634F78 */  lw         $v1, %lo(D_800C4F78)($v1)
/* 4AC24 8004A024 C4600018 */  lwc1       $f0, 0x18($v1)
/* 4AC28 8004A028 3C0140A0 */  lui        $at, 0x40a0
/* 4AC2C 8004A02C 44811000 */  mtc1       $at, $f2
/* 4AC30 8004A030 00000000 */  nop
/* 4AC34 8004A034 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC38 8004A038 E4600018 */  swc1       $f0, 0x18($v1)
/* 4AC3C 8004A03C C460001C */  lwc1       $f0, 0x1c($v1)
/* 4AC40 8004A040 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC44 8004A044 E460001C */  swc1       $f0, 0x1c($v1)
/* 4AC48 8004A048 C4600020 */  lwc1       $f0, 0x20($v1)
/* 4AC4C 8004A04C 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC50 8004A050 E4600020 */  swc1       $f0, 0x20($v1)
/* 4AC54 8004A054 C4600024 */  lwc1       $f0, 0x24($v1)
/* 4AC58 8004A058 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC5C 8004A05C E4600024 */  swc1       $f0, 0x24($v1)
/* 4AC60 8004A060 C4600028 */  lwc1       $f0, 0x28($v1)
/* 4AC64 8004A064 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC68 8004A068 E4600028 */  swc1       $f0, 0x28($v1)
/* 4AC6C 8004A06C C460002C */  lwc1       $f0, 0x2c($v1)
/* 4AC70 8004A070 46020002 */  mul.s      $f0, $f0, $f2
/* 4AC74 8004A074 E460002C */  swc1       $f0, 0x2c($v1)
/* 4AC78 8004A078 3C01800D */  lui        $at, %hi(D_800D6734)
/* 4AC7C 8004A07C A4206734 */  sh         $zero, %lo(D_800D6734)($at)
/* 4AC80 8004A080 3C01800D */  lui        $at, %hi(D_800D6732)
/* 4AC84 8004A084 A4206732 */  sh         $zero, %lo(D_800D6732)($at)
/* 4AC88 8004A088 8C620000 */  lw         $v0, ($v1)
/* 4AC8C 8004A08C 8C640008 */  lw         $a0, 8($v1)
/* 4AC90 8004A090 00440018 */  mult       $v0, $a0
/* 4AC94 8004A094 00001012 */  mflo       $v0
/* 4AC98 8004A098 000227C2 */  srl        $a0, $v0, 0x1f
/* 4AC9C 8004A09C 00441021 */  addu       $v0, $v0, $a0
/* 4ACA0 8004A0A0 00021043 */  sra        $v0, $v0, 1
/* 4ACA4 8004A0A4 3C01800D */  lui        $at, %hi(D_800D6736)
/* 4ACA8 8004A0A8 A4226736 */  sh         $v0, %lo(D_800D6736)($at)
/* 4ACAC 8004A0AC 8C620004 */  lw         $v0, 4($v1)
/* 4ACB0 8004A0B0 8C63000C */  lw         $v1, 0xc($v1)
/* 4ACB4 8004A0B4 00430018 */  mult       $v0, $v1
/* 4ACB8 8004A0B8 00001012 */  mflo       $v0
/* 4ACBC 8004A0BC 00021FC2 */  srl        $v1, $v0, 0x1f
/* 4ACC0 8004A0C0 00431021 */  addu       $v0, $v0, $v1
/* 4ACC4 8004A0C4 00021043 */  sra        $v0, $v0, 1
/* 4ACC8 8004A0C8 3C01800D */  lui        $at, %hi(D_800D6738)
/* 4ACCC 8004A0CC A4226738 */  sh         $v0, %lo(D_800D6738)($at)
/* 4ACD0 8004A0D0 24020001 */  addiu      $v0, $zero, 1
/* 4ACD4 8004A0D4 3C01800D */  lui        $at, %hi(D_800D6730)
/* 4ACD8 8004A0D8 A4226730 */  sh         $v0, %lo(D_800D6730)($at)
/* 4ACDC 8004A0DC 3C058005 */  lui        $a1, %hi(func_8004ACEC)
/* 4ACE0 8004A0E0 24A5ACEC */  addiu      $a1, $a1, %lo(func_8004ACEC)
/* 4ACE4 8004A0E4 0C00A3A3 */  jal        func_80028E8C
/* 4ACE8 8004A0E8 00002021 */   addu      $a0, $zero, $zero
/* 4ACEC 8004A0EC 0C0129E9 */  jal        func_8004A7A4
/* 4ACF0 8004A0F0 00000000 */   nop
/* 4ACF4 8004A0F4 0C012944 */  jal        func_8004A510
/* 4ACF8 8004A0F8 00000000 */   nop
/* 4ACFC 8004A0FC 0C012BFF */  jal        func_8004AFFC
/* 4AD00 8004A100 00000000 */   nop
/* 4AD04 8004A104 3C013F80 */  lui        $at, 0x3f80
/* 4AD08 8004A108 44816000 */  mtc1       $at, $f12
/* 4AD0C 8004A10C 0C012D71 */  jal        func_8004B5C4
/* 4AD10 8004A110 00000000 */   nop
/* 4AD14 8004A114 0C012DFE */  jal        func_8004B7F8
/* 4AD18 8004A118 240400FF */   addiu     $a0, $zero, 0xff
/* 4AD1C 8004A11C 3C01BF80 */  lui        $at, 0xbf80
/* 4AD20 8004A120 44816000 */  mtc1       $at, $f12
/* 4AD24 8004A124 0C012E0E */  jal        func_8004B838
/* 4AD28 8004A128 00000000 */   nop
/* 4AD2C 8004A12C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4AD30 8004A130 8FB10014 */  lw         $s1, 0x14($sp)
/* 4AD34 8004A134 8FB00010 */  lw         $s0, 0x10($sp)
/* 4AD38 8004A138 03E00008 */  jr         $ra
/* 4AD3C 8004A13C 27BD0020 */   addiu     $sp, $sp, 0x20
