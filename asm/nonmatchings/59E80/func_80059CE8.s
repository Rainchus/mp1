	.set noat
	.set noreorder

glabel func_80059CE8
/* 5A8E8 80059CE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5A8EC 80059CEC AFBF001C */  sw         $ra, 0x1c($sp)
/* 5A8F0 80059CF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 5A8F4 80059CF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 5A8F8 80059CF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5A8FC 80059CFC 00808821 */  addu       $s1, $a0, $zero
/* 5A900 80059D00 00A08021 */  addu       $s0, $a1, $zero
/* 5A904 80059D04 02009021 */  addu       $s2, $s0, $zero
/* 5A908 80059D08 00108400 */  sll        $s0, $s0, 0x10
/* 5A90C 80059D0C 00108403 */  sra        $s0, $s0, 0x10
/* 5A910 80059D10 0C01BAD0 */  jal        func_8006EB40
/* 5A914 80059D14 02002021 */   addu      $a0, $s0, $zero
/* 5A918 80059D18 02002021 */  addu       $a0, $s0, $zero
/* 5A91C 80059D1C 0C01B8A2 */  jal        func_8006E288
/* 5A920 80059D20 24050007 */   addiu     $a1, $zero, 7
/* 5A924 80059D24 02002021 */  addu       $a0, $s0, $zero
/* 5A928 80059D28 02202821 */  addu       $a1, $s1, $zero
/* 5A92C 80059D2C 2406FFFF */  addiu      $a2, $zero, -1
/* 5A930 80059D30 0C01B5F6 */  jal        func_8006D7D8
/* 5A934 80059D34 2407FFFF */   addiu     $a3, $zero, -1
/* 5A938 80059D38 00128400 */  sll        $s0, $s2, 0x10
.L80059D3C:
/* 5A93C 80059D3C 0C01BF30 */  jal        func_8006FCC0
/* 5A940 80059D40 00102403 */   sra       $a0, $s0, 0x10
/* 5A944 80059D44 00021400 */  sll        $v0, $v0, 0x10
/* 5A948 80059D48 50400005 */  beql       $v0, $zero, .L80059D60
/* 5A94C 80059D4C 00128400 */   sll       $s0, $s2, 0x10
/* 5A950 80059D50 0C018D6D */  jal        func_800635B4
/* 5A954 80059D54 00000000 */   nop
/* 5A958 80059D58 0801674F */  j          .L80059D3C
/* 5A95C 80059D5C 00000000 */   nop
.L80059D60:
/* 5A960 80059D60 00108403 */  sra        $s0, $s0, 0x10
/* 5A964 80059D64 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 5A968 80059D68 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 5A96C 80059D6C 3C050001 */  lui        $a1, 1
/* 5A970 80059D70 00452804 */  sllv       $a1, $a1, $v0
/* 5A974 80059D74 02002021 */  addu       $a0, $s0, $zero
/* 5A978 80059D78 0C01C557 */  jal        func_8007155C
/* 5A97C 80059D7C 00052C03 */   sra       $a1, $a1, 0x10
/* 5A980 80059D80 02002021 */  addu       $a0, $s0, $zero
/* 5A984 80059D84 00002821 */  addu       $a1, $zero, $zero
/* 5A988 80059D88 0C01BF3C */  jal        func_8006FCF0
/* 5A98C 80059D8C 00003021 */   addu      $a2, $zero, $zero
/* 5A990 80059D90 2C420001 */  sltiu      $v0, $v0, 1
/* 5A994 80059D94 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5A998 80059D98 8FB20018 */  lw         $s2, 0x18($sp)
/* 5A99C 80059D9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5A9A0 80059DA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 5A9A4 80059DA4 03E00008 */  jr         $ra
/* 5A9A8 80059DA8 27BD0020 */   addiu     $sp, $sp, 0x20
