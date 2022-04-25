	.set noat
	.set noreorder

glabel func_8007EE54
/* 7FA54 8007EE54 3C02800E */  lui        $v0, %hi(D_800E6ECC)
/* 7FA58 8007EE58 8C426ECC */  lw         $v0, %lo(D_800E6ECC)($v0)
/* 7FA5C 8007EE5C 27BDFF08 */  addiu      $sp, $sp, -0xf8
/* 7FA60 8007EE60 AFB600E8 */  sw         $s6, 0xe8($sp)
/* 7FA64 8007EE64 0080B021 */  addu       $s6, $a0, $zero
/* 7FA68 8007EE68 3C0A800E */  lui        $t2, %hi(D_800E6ED4)
/* 7FA6C 8007EE6C 254A6ED4 */  addiu      $t2, $t2, %lo(D_800E6ED4)
/* 7FA70 8007EE70 AFBF00F4 */  sw         $ra, 0xf4($sp)
/* 7FA74 8007EE74 AFBE00F0 */  sw         $fp, 0xf0($sp)
/* 7FA78 8007EE78 AFB700EC */  sw         $s7, 0xec($sp)
/* 7FA7C 8007EE7C AFB500E4 */  sw         $s5, 0xe4($sp)
/* 7FA80 8007EE80 AFB400E0 */  sw         $s4, 0xe0($sp)
/* 7FA84 8007EE84 AFB300DC */  sw         $s3, 0xdc($sp)
/* 7FA88 8007EE88 AFB200D8 */  sw         $s2, 0xd8($sp)
/* 7FA8C 8007EE8C AFB100D4 */  sw         $s1, 0xd4($sp)
/* 7FA90 8007EE90 AFB000D0 */  sw         $s0, 0xd0($sp)
/* 7FA94 8007EE94 80430000 */  lb         $v1, ($v0)
/* 7FA98 8007EE98 80440001 */  lb         $a0, 1($v0)
/* 7FA9C 8007EE9C A1430000 */  sb         $v1, ($t2)
/* 7FAA0 8007EEA0 A1440001 */  sb         $a0, 1($t2)
/* 7FAA4 8007EEA4 91420000 */  lbu        $v0, ($t2)
/* 7FAA8 8007EEA8 3C03800E */  lui        $v1, %hi(D_800E6EE4)
/* 7FAAC 8007EEAC 8C636EE4 */  lw         $v1, %lo(D_800E6EE4)($v1)
/* 7FAB0 8007EEB0 3C08800E */  lui        $t0, %hi(D_800E6EEC)
/* 7FAB4 8007EEB4 25086EEC */  addiu      $t0, $t0, %lo(D_800E6EEC)
/* 7FAB8 8007EEB8 3C01800E */  lui        $at, %hi(D_800E6ED8)
/* 7FABC 8007EEBC A0226ED8 */  sb         $v0, %lo(D_800E6ED8)($at)
/* 7FAC0 8007EEC0 80620000 */  lb         $v0, ($v1)
/* 7FAC4 8007EEC4 80640001 */  lb         $a0, 1($v1)
/* 7FAC8 8007EEC8 A1020000 */  sb         $v0, ($t0)
/* 7FACC 8007EECC A1040001 */  sb         $a0, 1($t0)
/* 7FAD0 8007EED0 91020000 */  lbu        $v0, ($t0)
/* 7FAD4 8007EED4 3C03800E */  lui        $v1, %hi(D_800E6EFC)
/* 7FAD8 8007EED8 8C636EFC */  lw         $v1, %lo(D_800E6EFC)($v1)
/* 7FADC 8007EEDC 3C09800E */  lui        $t1, %hi(D_800E6F04)
/* 7FAE0 8007EEE0 25296F04 */  addiu      $t1, $t1, %lo(D_800E6F04)
/* 7FAE4 8007EEE4 3C01800E */  lui        $at, %hi(D_800E6EF0)
/* 7FAE8 8007EEE8 A0226EF0 */  sb         $v0, %lo(D_800E6EF0)($at)
/* 7FAEC 8007EEEC 80620000 */  lb         $v0, ($v1)
/* 7FAF0 8007EEF0 80640001 */  lb         $a0, 1($v1)
/* 7FAF4 8007EEF4 A1220000 */  sb         $v0, ($t1)
/* 7FAF8 8007EEF8 A1240001 */  sb         $a0, 1($t1)
/* 7FAFC 8007EEFC 91220000 */  lbu        $v0, ($t1)
/* 7FB00 8007EF00 3C03800E */  lui        $v1, %hi(D_800E6F14)
/* 7FB04 8007EF04 8C636F14 */  lw         $v1, %lo(D_800E6F14)($v1)
/* 7FB08 8007EF08 3C07800E */  lui        $a3, %hi(D_800E6F1C)
/* 7FB0C 8007EF0C 24E76F1C */  addiu      $a3, $a3, %lo(D_800E6F1C)
/* 7FB10 8007EF10 3C01800E */  lui        $at, %hi(D_800E6F08)
/* 7FB14 8007EF14 A0226F08 */  sb         $v0, %lo(D_800E6F08)($at)
/* 7FB18 8007EF18 80620000 */  lb         $v0, ($v1)
/* 7FB1C 8007EF1C 80640001 */  lb         $a0, 1($v1)
/* 7FB20 8007EF20 A0E20000 */  sb         $v0, ($a3)
/* 7FB24 8007EF24 A0E40001 */  sb         $a0, 1($a3)
/* 7FB28 8007EF28 3C02800E */  lui        $v0, %hi(D_800E7A48)
/* 7FB2C 8007EF2C 8C427A48 */  lw         $v0, %lo(D_800E7A48)($v0)
/* 7FB30 8007EF30 90E30000 */  lbu        $v1, ($a3)
/* 7FB34 8007EF34 2452FFFF */  addiu      $s2, $v0, -1
/* 7FB38 8007EF38 3C01800E */  lui        $at, %hi(D_800E6F20)
/* 7FB3C 8007EF3C A0236F20 */  sb         $v1, %lo(D_800E6F20)($at)
/* 7FB40 8007EF40 1A40006B */  blez       $s2, .L8007F0F0
/* 7FB44 8007EF44 25510002 */   addiu     $s1, $t2, 2
/* 7FB48 8007EF48 25100002 */  addiu      $s0, $t0, 2
/* 7FB4C 8007EF4C 251EFFF4 */  addiu      $fp, $t0, -0xc
/* 7FB50 8007EF50 25340002 */  addiu      $s4, $t1, 2
/* 7FB54 8007EF54 27B70090 */  addiu      $s7, $sp, 0x90
/* 7FB58 8007EF58 24F30002 */  addiu      $s3, $a3, 2
/* 7FB5C 8007EF5C 27B500B0 */  addiu      $s5, $sp, 0xb0
.L8007EF60:
/* 7FB60 8007EF60 8222FFFE */  lb         $v0, -2($s1)
/* 7FB64 8007EF64 8223FFFF */  lb         $v1, -1($s1)
/* 7FB68 8007EF68 A2220000 */  sb         $v0, ($s1)
/* 7FB6C 8007EF6C A2230001 */  sb         $v1, 1($s1)
/* 7FB70 8007EF70 27A40010 */  addiu      $a0, $sp, 0x10
/* 7FB74 8007EF74 3C05800E */  lui        $a1, %hi(D_800E6EC8)
/* 7FB78 8007EF78 24A56EC8 */  addiu      $a1, $a1, %lo(D_800E6EC8)
/* 7FB7C 8007EF7C 8E23FFF6 */  lw         $v1, -0xa($s1)
/* 7FB80 8007EF80 00003021 */  addu       $a2, $zero, $zero
/* 7FB84 8007EF84 24620002 */  addiu      $v0, $v1, 2
/* 7FB88 8007EF88 AE22FFF6 */  sw         $v0, -0xa($s1)
/* 7FB8C 8007EF8C 80620002 */  lb         $v0, 2($v1)
/* 7FB90 8007EF90 80670003 */  lb         $a3, 3($v1)
/* 7FB94 8007EF94 A222FFFE */  sb         $v0, -2($s1)
/* 7FB98 8007EF98 A227FFFF */  sb         $a3, -1($s1)
/* 7FB9C 8007EF9C 0C01F692 */  jal        func_8007DA48
/* 7FBA0 8007EFA0 2652FFFF */   addiu     $s2, $s2, -1
/* 7FBA4 8007EFA4 8222FFFE */  lb         $v0, -2($s1)
/* 7FBA8 8007EFA8 8223FFFF */  lb         $v1, -1($s1)
/* 7FBAC 8007EFAC A2220000 */  sb         $v0, ($s1)
/* 7FBB0 8007EFB0 A2230001 */  sb         $v1, 1($s1)
/* 7FBB4 8007EFB4 27A40030 */  addiu      $a0, $sp, 0x30
/* 7FBB8 8007EFB8 8E23FFF6 */  lw         $v1, -0xa($s1)
/* 7FBBC 8007EFBC 3C05800E */  lui        $a1, %hi(D_800E6EC8)
/* 7FBC0 8007EFC0 24A56EC8 */  addiu      $a1, $a1, %lo(D_800E6EC8)
/* 7FBC4 8007EFC4 24620002 */  addiu      $v0, $v1, 2
/* 7FBC8 8007EFC8 AE22FFF6 */  sw         $v0, -0xa($s1)
/* 7FBCC 8007EFCC 80620002 */  lb         $v0, 2($v1)
/* 7FBD0 8007EFD0 80670003 */  lb         $a3, 3($v1)
/* 7FBD4 8007EFD4 A222FFFE */  sb         $v0, -2($s1)
/* 7FBD8 8007EFD8 A227FFFF */  sb         $a3, -1($s1)
/* 7FBDC 8007EFDC 0C01F692 */  jal        func_8007DA48
/* 7FBE0 8007EFE0 00003021 */   addu      $a2, $zero, $zero
/* 7FBE4 8007EFE4 8202FFFE */  lb         $v0, -2($s0)
/* 7FBE8 8007EFE8 8203FFFF */  lb         $v1, -1($s0)
/* 7FBEC 8007EFEC A2020000 */  sb         $v0, ($s0)
/* 7FBF0 8007EFF0 A2030001 */  sb         $v1, 1($s0)
/* 7FBF4 8007EFF4 27A40050 */  addiu      $a0, $sp, 0x50
/* 7FBF8 8007EFF8 8E03FFF6 */  lw         $v1, -0xa($s0)
/* 7FBFC 8007EFFC 03C02821 */  addu       $a1, $fp, $zero
/* 7FC00 8007F000 24620002 */  addiu      $v0, $v1, 2
/* 7FC04 8007F004 AE02FFF6 */  sw         $v0, -0xa($s0)
/* 7FC08 8007F008 80620002 */  lb         $v0, 2($v1)
/* 7FC0C 8007F00C 80670003 */  lb         $a3, 3($v1)
/* 7FC10 8007F010 A202FFFE */  sb         $v0, -2($s0)
/* 7FC14 8007F014 A207FFFF */  sb         $a3, -1($s0)
/* 7FC18 8007F018 0C01F692 */  jal        func_8007DA48
/* 7FC1C 8007F01C 00003021 */   addu      $a2, $zero, $zero
/* 7FC20 8007F020 8202FFFE */  lb         $v0, -2($s0)
/* 7FC24 8007F024 8203FFFF */  lb         $v1, -1($s0)
/* 7FC28 8007F028 A2020000 */  sb         $v0, ($s0)
/* 7FC2C 8007F02C A2030001 */  sb         $v1, 1($s0)
/* 7FC30 8007F030 27A40070 */  addiu      $a0, $sp, 0x70
/* 7FC34 8007F034 8E03FFF6 */  lw         $v1, -0xa($s0)
/* 7FC38 8007F038 03C02821 */  addu       $a1, $fp, $zero
/* 7FC3C 8007F03C 24620002 */  addiu      $v0, $v1, 2
/* 7FC40 8007F040 AE02FFF6 */  sw         $v0, -0xa($s0)
/* 7FC44 8007F044 80620002 */  lb         $v0, 2($v1)
/* 7FC48 8007F048 80670003 */  lb         $a3, 3($v1)
/* 7FC4C 8007F04C A202FFFE */  sb         $v0, -2($s0)
/* 7FC50 8007F050 A207FFFF */  sb         $a3, -1($s0)
/* 7FC54 8007F054 0C01F692 */  jal        func_8007DA48
/* 7FC58 8007F058 00003021 */   addu      $a2, $zero, $zero
/* 7FC5C 8007F05C 8282FFFE */  lb         $v0, -2($s4)
/* 7FC60 8007F060 8283FFFF */  lb         $v1, -1($s4)
/* 7FC64 8007F064 A2820000 */  sb         $v0, ($s4)
/* 7FC68 8007F068 A2830001 */  sb         $v1, 1($s4)
/* 7FC6C 8007F06C 02E02021 */  addu       $a0, $s7, $zero
/* 7FC70 8007F070 8E83FFF6 */  lw         $v1, -0xa($s4)
/* 7FC74 8007F074 2685FFF2 */  addiu      $a1, $s4, -0xe
/* 7FC78 8007F078 24620002 */  addiu      $v0, $v1, 2
/* 7FC7C 8007F07C AE82FFF6 */  sw         $v0, -0xa($s4)
/* 7FC80 8007F080 80620002 */  lb         $v0, 2($v1)
/* 7FC84 8007F084 80670003 */  lb         $a3, 3($v1)
/* 7FC88 8007F088 A282FFFE */  sb         $v0, -2($s4)
/* 7FC8C 8007F08C A287FFFF */  sb         $a3, -1($s4)
/* 7FC90 8007F090 0C01F692 */  jal        func_8007DA48
/* 7FC94 8007F094 24060001 */   addiu     $a2, $zero, 1
/* 7FC98 8007F098 8262FFFE */  lb         $v0, -2($s3)
/* 7FC9C 8007F09C 8263FFFF */  lb         $v1, -1($s3)
/* 7FCA0 8007F0A0 A2620000 */  sb         $v0, ($s3)
/* 7FCA4 8007F0A4 A2630001 */  sb         $v1, 1($s3)
/* 7FCA8 8007F0A8 02A02021 */  addu       $a0, $s5, $zero
/* 7FCAC 8007F0AC 8E63FFF6 */  lw         $v1, -0xa($s3)
/* 7FCB0 8007F0B0 2665FFF2 */  addiu      $a1, $s3, -0xe
/* 7FCB4 8007F0B4 24620002 */  addiu      $v0, $v1, 2
/* 7FCB8 8007F0B8 AE62FFF6 */  sw         $v0, -0xa($s3)
/* 7FCBC 8007F0BC 80620002 */  lb         $v0, 2($v1)
/* 7FCC0 8007F0C0 80670003 */  lb         $a3, 3($v1)
/* 7FCC4 8007F0C4 A262FFFE */  sb         $v0, -2($s3)
/* 7FCC8 8007F0C8 A267FFFF */  sb         $a3, -1($s3)
/* 7FCCC 8007F0CC 0C01F692 */  jal        func_8007DA48
/* 7FCD0 8007F0D0 24060002 */   addiu     $a2, $zero, 2
/* 7FCD4 8007F0D4 02C02021 */  addu       $a0, $s6, $zero
/* 7FCD8 8007F0D8 27A50010 */  addiu      $a1, $sp, 0x10
/* 7FCDC 8007F0DC 02E03021 */  addu       $a2, $s7, $zero
/* 7FCE0 8007F0E0 0C01F716 */  jal        func_8007DC58
/* 7FCE4 8007F0E4 02A03821 */   addu      $a3, $s5, $zero
/* 7FCE8 8007F0E8 1E40FF9D */  bgtz       $s2, .L8007EF60
/* 7FCEC 8007F0EC 26D60010 */   addiu     $s6, $s6, 0x10
.L8007F0F0:
/* 7FCF0 8007F0F0 3C10800E */  lui        $s0, %hi(D_800E6ED6)
/* 7FCF4 8007F0F4 26106ED6 */  addiu      $s0, $s0, %lo(D_800E6ED6)
/* 7FCF8 8007F0F8 3C02800E */  lui        $v0, %hi(D_800E6ED4)
/* 7FCFC 8007F0FC 80426ED4 */  lb         $v0, %lo(D_800E6ED4)($v0)
/* 7FD00 8007F100 3C03800E */  lui        $v1, %hi(D_800E6ED5)
/* 7FD04 8007F104 80636ED5 */  lb         $v1, %lo(D_800E6ED5)($v1)
/* 7FD08 8007F108 A2020000 */  sb         $v0, ($s0)
/* 7FD0C 8007F10C A2030001 */  sb         $v1, 1($s0)
/* 7FD10 8007F110 27A40010 */  addiu      $a0, $sp, 0x10
/* 7FD14 8007F114 3C03800E */  lui        $v1, %hi(D_800E6ECC)
/* 7FD18 8007F118 8C636ECC */  lw         $v1, %lo(D_800E6ECC)($v1)
/* 7FD1C 8007F11C 2611FFF2 */  addiu      $s1, $s0, -0xe
/* 7FD20 8007F120 02202821 */  addu       $a1, $s1, $zero
/* 7FD24 8007F124 24620002 */  addiu      $v0, $v1, 2
/* 7FD28 8007F128 3C01800E */  lui        $at, %hi(D_800E6ECC)
/* 7FD2C 8007F12C AC226ECC */  sw         $v0, %lo(D_800E6ECC)($at)
/* 7FD30 8007F130 80620002 */  lb         $v0, 2($v1)
/* 7FD34 8007F134 80670003 */  lb         $a3, 3($v1)
/* 7FD38 8007F138 3C01800E */  lui        $at, %hi(D_800E6ED4)
/* 7FD3C 8007F13C A0226ED4 */  sb         $v0, %lo(D_800E6ED4)($at)
/* 7FD40 8007F140 3C01800E */  lui        $at, %hi(D_800E6ED5)
/* 7FD44 8007F144 A0276ED5 */  sb         $a3, %lo(D_800E6ED5)($at)
/* 7FD48 8007F148 0C01F692 */  jal        func_8007DA48
/* 7FD4C 8007F14C 00003021 */   addu      $a2, $zero, $zero
/* 7FD50 8007F150 3C02800E */  lui        $v0, %hi(D_800E6ED4)
/* 7FD54 8007F154 80426ED4 */  lb         $v0, %lo(D_800E6ED4)($v0)
/* 7FD58 8007F158 3C03800E */  lui        $v1, %hi(D_800E6ED5)
/* 7FD5C 8007F15C 80636ED5 */  lb         $v1, %lo(D_800E6ED5)($v1)
/* 7FD60 8007F160 A2020000 */  sb         $v0, ($s0)
/* 7FD64 8007F164 A2030001 */  sb         $v1, 1($s0)
/* 7FD68 8007F168 27A40030 */  addiu      $a0, $sp, 0x30
/* 7FD6C 8007F16C 3C02800E */  lui        $v0, %hi(D_800E6ECC)
/* 7FD70 8007F170 8C426ECC */  lw         $v0, %lo(D_800E6ECC)($v0)
/* 7FD74 8007F174 02202821 */  addu       $a1, $s1, $zero
/* 7FD78 8007F178 24420002 */  addiu      $v0, $v0, 2
/* 7FD7C 8007F17C 3C01800E */  lui        $at, %hi(D_800E6ECC)
/* 7FD80 8007F180 AC226ECC */  sw         $v0, %lo(D_800E6ECC)($at)
/* 7FD84 8007F184 0C01F692 */  jal        func_8007DA48
/* 7FD88 8007F188 00003021 */   addu      $a2, $zero, $zero
/* 7FD8C 8007F18C 3C10800E */  lui        $s0, %hi(D_800E6EEE)
/* 7FD90 8007F190 26106EEE */  addiu      $s0, $s0, %lo(D_800E6EEE)
/* 7FD94 8007F194 3C02800E */  lui        $v0, %hi(D_800E6EEC)
/* 7FD98 8007F198 80426EEC */  lb         $v0, %lo(D_800E6EEC)($v0)
/* 7FD9C 8007F19C 3C03800E */  lui        $v1, %hi(D_800E6EED)
/* 7FDA0 8007F1A0 80636EED */  lb         $v1, %lo(D_800E6EED)($v1)
/* 7FDA4 8007F1A4 A2020000 */  sb         $v0, ($s0)
/* 7FDA8 8007F1A8 A2030001 */  sb         $v1, 1($s0)
/* 7FDAC 8007F1AC 27A40050 */  addiu      $a0, $sp, 0x50
/* 7FDB0 8007F1B0 3C03800E */  lui        $v1, %hi(D_800E6EE4)
/* 7FDB4 8007F1B4 8C636EE4 */  lw         $v1, %lo(D_800E6EE4)($v1)
/* 7FDB8 8007F1B8 2611FFF2 */  addiu      $s1, $s0, -0xe
/* 7FDBC 8007F1BC 02202821 */  addu       $a1, $s1, $zero
/* 7FDC0 8007F1C0 24620002 */  addiu      $v0, $v1, 2
/* 7FDC4 8007F1C4 3C01800E */  lui        $at, %hi(D_800E6EE4)
/* 7FDC8 8007F1C8 AC226EE4 */  sw         $v0, %lo(D_800E6EE4)($at)
/* 7FDCC 8007F1CC 80620002 */  lb         $v0, 2($v1)
/* 7FDD0 8007F1D0 80670003 */  lb         $a3, 3($v1)
/* 7FDD4 8007F1D4 3C01800E */  lui        $at, %hi(D_800E6EEC)
/* 7FDD8 8007F1D8 A0226EEC */  sb         $v0, %lo(D_800E6EEC)($at)
/* 7FDDC 8007F1DC 3C01800E */  lui        $at, %hi(D_800E6EED)
/* 7FDE0 8007F1E0 A0276EED */  sb         $a3, %lo(D_800E6EED)($at)
/* 7FDE4 8007F1E4 0C01F692 */  jal        func_8007DA48
/* 7FDE8 8007F1E8 00003021 */   addu      $a2, $zero, $zero
/* 7FDEC 8007F1EC 3C02800E */  lui        $v0, %hi(D_800E6EEC)
/* 7FDF0 8007F1F0 80426EEC */  lb         $v0, %lo(D_800E6EEC)($v0)
/* 7FDF4 8007F1F4 3C03800E */  lui        $v1, %hi(D_800E6EED)
/* 7FDF8 8007F1F8 80636EED */  lb         $v1, %lo(D_800E6EED)($v1)
/* 7FDFC 8007F1FC A2020000 */  sb         $v0, ($s0)
/* 7FE00 8007F200 A2030001 */  sb         $v1, 1($s0)
/* 7FE04 8007F204 27A40070 */  addiu      $a0, $sp, 0x70
/* 7FE08 8007F208 3C02800E */  lui        $v0, %hi(D_800E6EE4)
/* 7FE0C 8007F20C 8C426EE4 */  lw         $v0, %lo(D_800E6EE4)($v0)
/* 7FE10 8007F210 02202821 */  addu       $a1, $s1, $zero
/* 7FE14 8007F214 24420002 */  addiu      $v0, $v0, 2
/* 7FE18 8007F218 3C01800E */  lui        $at, %hi(D_800E6EE4)
/* 7FE1C 8007F21C AC226EE4 */  sw         $v0, %lo(D_800E6EE4)($at)
/* 7FE20 8007F220 0C01F692 */  jal        func_8007DA48
/* 7FE24 8007F224 00003021 */   addu      $a2, $zero, $zero
/* 7FE28 8007F228 3C05800E */  lui        $a1, %hi(D_800E6F06)
/* 7FE2C 8007F22C 24A56F06 */  addiu      $a1, $a1, %lo(D_800E6F06)
/* 7FE30 8007F230 3C02800E */  lui        $v0, %hi(D_800E6F04)
/* 7FE34 8007F234 80426F04 */  lb         $v0, %lo(D_800E6F04)($v0)
/* 7FE38 8007F238 3C03800E */  lui        $v1, %hi(D_800E6F05)
/* 7FE3C 8007F23C 80636F05 */  lb         $v1, %lo(D_800E6F05)($v1)
/* 7FE40 8007F240 A0A20000 */  sb         $v0, ($a1)
/* 7FE44 8007F244 A0A30001 */  sb         $v1, 1($a1)
/* 7FE48 8007F248 27B10090 */  addiu      $s1, $sp, 0x90
/* 7FE4C 8007F24C 02202021 */  addu       $a0, $s1, $zero
/* 7FE50 8007F250 3C02800E */  lui        $v0, %hi(D_800E6EFC)
/* 7FE54 8007F254 8C426EFC */  lw         $v0, %lo(D_800E6EFC)($v0)
/* 7FE58 8007F258 24A5FFF2 */  addiu      $a1, $a1, -0xe
/* 7FE5C 8007F25C 24420002 */  addiu      $v0, $v0, 2
/* 7FE60 8007F260 3C01800E */  lui        $at, %hi(D_800E6EFC)
/* 7FE64 8007F264 AC226EFC */  sw         $v0, %lo(D_800E6EFC)($at)
/* 7FE68 8007F268 0C01F692 */  jal        func_8007DA48
/* 7FE6C 8007F26C 24060001 */   addiu     $a2, $zero, 1
/* 7FE70 8007F270 3C05800E */  lui        $a1, %hi(D_800E6F1E)
/* 7FE74 8007F274 24A56F1E */  addiu      $a1, $a1, %lo(D_800E6F1E)
/* 7FE78 8007F278 3C02800E */  lui        $v0, %hi(D_800E6F1C)
/* 7FE7C 8007F27C 80426F1C */  lb         $v0, %lo(D_800E6F1C)($v0)
/* 7FE80 8007F280 3C03800E */  lui        $v1, %hi(D_800E6F1D)
/* 7FE84 8007F284 80636F1D */  lb         $v1, %lo(D_800E6F1D)($v1)
/* 7FE88 8007F288 A0A20000 */  sb         $v0, ($a1)
/* 7FE8C 8007F28C A0A30001 */  sb         $v1, 1($a1)
/* 7FE90 8007F290 27B000B0 */  addiu      $s0, $sp, 0xb0
/* 7FE94 8007F294 02002021 */  addu       $a0, $s0, $zero
/* 7FE98 8007F298 3C02800E */  lui        $v0, %hi(D_800E6F14)
/* 7FE9C 8007F29C 8C426F14 */  lw         $v0, %lo(D_800E6F14)($v0)
/* 7FEA0 8007F2A0 24A5FFF2 */  addiu      $a1, $a1, -0xe
/* 7FEA4 8007F2A4 24420002 */  addiu      $v0, $v0, 2
/* 7FEA8 8007F2A8 3C01800E */  lui        $at, %hi(D_800E6F14)
/* 7FEAC 8007F2AC AC226F14 */  sw         $v0, %lo(D_800E6F14)($at)
/* 7FEB0 8007F2B0 0C01F692 */  jal        func_8007DA48
/* 7FEB4 8007F2B4 24060002 */   addiu     $a2, $zero, 2
/* 7FEB8 8007F2B8 02C02021 */  addu       $a0, $s6, $zero
/* 7FEBC 8007F2BC 27A50010 */  addiu      $a1, $sp, 0x10
/* 7FEC0 8007F2C0 02203021 */  addu       $a2, $s1, $zero
/* 7FEC4 8007F2C4 0C01F716 */  jal        func_8007DC58
/* 7FEC8 8007F2C8 02003821 */   addu      $a3, $s0, $zero
/* 7FECC 8007F2CC 8FBF00F4 */  lw         $ra, 0xf4($sp)
/* 7FED0 8007F2D0 8FBE00F0 */  lw         $fp, 0xf0($sp)
/* 7FED4 8007F2D4 8FB700EC */  lw         $s7, 0xec($sp)
/* 7FED8 8007F2D8 8FB600E8 */  lw         $s6, 0xe8($sp)
/* 7FEDC 8007F2DC 8FB500E4 */  lw         $s5, 0xe4($sp)
/* 7FEE0 8007F2E0 8FB400E0 */  lw         $s4, 0xe0($sp)
/* 7FEE4 8007F2E4 8FB300DC */  lw         $s3, 0xdc($sp)
/* 7FEE8 8007F2E8 8FB200D8 */  lw         $s2, 0xd8($sp)
/* 7FEEC 8007F2EC 8FB100D4 */  lw         $s1, 0xd4($sp)
/* 7FEF0 8007F2F0 8FB000D0 */  lw         $s0, 0xd0($sp)
/* 7FEF4 8007F2F4 03E00008 */  jr         $ra
/* 7FEF8 8007F2F8 27BD00F8 */   addiu     $sp, $sp, 0xf8
