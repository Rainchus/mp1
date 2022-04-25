	.set noat
	.set noreorder

glabel func_8000ACE4
/* B8E4 8000ACE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B8E8 8000ACE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B8EC 8000ACEC AFB20018 */  sw         $s2, 0x18($sp)
/* B8F0 8000ACF0 AFB10014 */  sw         $s1, 0x14($sp)
/* B8F4 8000ACF4 AFB00010 */  sw         $s0, 0x10($sp)
/* B8F8 8000ACF8 00808821 */  addu       $s1, $a0, $zero
/* B8FC 8000ACFC 00A08021 */  addu       $s0, $a1, $zero
/* B900 8000AD00 8E120050 */  lw         $s2, 0x50($s0)
/* B904 8000AD04 C6260018 */  lwc1       $f6, 0x18($s1)
/* B908 8000AD08 C6020018 */  lwc1       $f2, 0x18($s0)
/* B90C 8000AD0C C6240020 */  lwc1       $f4, 0x20($s1)
/* B910 8000AD10 C6000020 */  lwc1       $f0, 0x20($s0)
/* B914 8000AD14 8E240050 */  lw         $a0, 0x50($s1)
/* B918 8000AD18 46023081 */  sub.s      $f2, $f6, $f2
/* B91C 8000AD1C 44051000 */  mfc1       $a1, $f2
/* B920 8000AD20 46002001 */  sub.s      $f0, $f4, $f0
/* B924 8000AD24 44060000 */  mfc1       $a2, $f0
/* B928 8000AD28 0C002B0A */  jal        func_8000AC28
/* B92C 8000AD2C 00000000 */   nop
/* B930 8000AD30 C6060018 */  lwc1       $f6, 0x18($s0)
/* B934 8000AD34 C6220018 */  lwc1       $f2, 0x18($s1)
/* B938 8000AD38 C6040020 */  lwc1       $f4, 0x20($s0)
/* B93C 8000AD3C C6200020 */  lwc1       $f0, 0x20($s1)
/* B940 8000AD40 46023081 */  sub.s      $f2, $f6, $f2
/* B944 8000AD44 44051000 */  mfc1       $a1, $f2
/* B948 8000AD48 46002001 */  sub.s      $f0, $f4, $f0
/* B94C 8000AD4C 44060000 */  mfc1       $a2, $f0
/* B950 8000AD50 00000000 */  nop
/* B954 8000AD54 0C002B0A */  jal        func_8000AC28
/* B958 8000AD58 02402021 */   addu      $a0, $s2, $zero
/* B95C 8000AD5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B960 8000AD60 8FB20018 */  lw         $s2, 0x18($sp)
/* B964 8000AD64 8FB10014 */  lw         $s1, 0x14($sp)
/* B968 8000AD68 8FB00010 */  lw         $s0, 0x10($sp)
/* B96C 8000AD6C 03E00008 */  jr         $ra
/* B970 8000AD70 27BD0020 */   addiu     $sp, $sp, 0x20
/* B974 8000AD74 00000000 */  nop
/* B978 8000AD78 00000000 */  nop
/* B97C 8000AD7C 00000000 */  nop
