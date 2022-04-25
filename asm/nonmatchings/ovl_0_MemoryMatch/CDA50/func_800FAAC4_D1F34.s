	.set noat
	.set noreorder

glabel func_800FAAC4_D1F34
/* D1F34 800FAAC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D1F38 800FAAC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D1F3C 800FAACC AFB00010 */  sw         $s0, 0x10($sp)
/* D1F40 800FAAD0 00808021 */  addu       $s0, $a0, $zero
/* D1F44 800FAAD4 8E020050 */  lw         $v0, 0x50($s0)
/* D1F48 800FAAD8 8C42005C */  lw         $v0, 0x5c($v0)
/* D1F4C 800FAADC 30426324 */  andi       $v0, $v0, 0x6324
/* D1F50 800FAAE0 10400005 */  beqz       $v0, .L800FAAF8
/* D1F54 800FAAE4 00000000 */   nop
/* D1F58 800FAAE8 0C00168A */  jal        func_80005A28
/* D1F5C 800FAAEC 00000000 */   nop
/* D1F60 800FAAF0 0803EADC */  j          .L800FAB70
/* D1F64 800FAAF4 00000000 */   nop
.L800FAAF8:
/* D1F68 800FAAF8 0C03EB77 */  jal        func_800FADDC_D224C
/* D1F6C 800FAAFC 02002021 */   addu      $a0, $s0, $zero
/* D1F70 800FAB00 8E020040 */  lw         $v0, 0x40($s0)
/* D1F74 800FAB04 84440002 */  lh         $a0, 2($v0)
/* D1F78 800FAB08 8E050018 */  lw         $a1, 0x18($s0)
/* D1F7C 800FAB0C 8E06001C */  lw         $a2, 0x1c($s0)
/* D1F80 800FAB10 0C0095E6 */  jal        func_80025798
/* D1F84 800FAB14 8E070020 */   lw        $a3, 0x20($s0)
/* D1F88 800FAB18 3C038010 */  lui        $v1, %hi(D_800FE2C2)
/* D1F8C 800FAB1C 9463E2C2 */  lhu        $v1, %lo(D_800FE2C2)($v1)
/* D1F90 800FAB20 24020005 */  addiu      $v0, $zero, 5
/* D1F94 800FAB24 1462000E */  bne        $v1, $v0, .L800FAB60
/* D1F98 800FAB28 02002021 */   addu      $a0, $s0, $zero
/* D1F9C 800FAB2C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* D1FA0 800FAB30 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* D1FA4 800FAB34 28420008 */  slti       $v0, $v0, 8
/* D1FA8 800FAB38 10400005 */  beqz       $v0, .L800FAB50
/* D1FAC 800FAB3C 00000000 */   nop
/* D1FB0 800FAB40 0C03EB65 */  jal        func_800FAD94_D2204
/* D1FB4 800FAB44 24050024 */   addiu     $a1, $zero, 0x24
/* D1FB8 800FAB48 0803EADA */  j          .L800FAB68
/* D1FBC 800FAB4C 00000000 */   nop
.L800FAB50:
/* D1FC0 800FAB50 0C03EB65 */  jal        func_800FAD94_D2204
/* D1FC4 800FAB54 24050026 */   addiu     $a1, $zero, 0x26
/* D1FC8 800FAB58 0803EADA */  j          .L800FAB68
/* D1FCC 800FAB5C 00000000 */   nop
.L800FAB60:
/* D1FD0 800FAB60 0C00612F */  jal        func_800184BC
/* D1FD4 800FAB64 00002821 */   addu      $a1, $zero, $zero
.L800FAB68:
/* D1FD8 800FAB68 0C005F6C */  jal        func_80017DB0
/* D1FDC 800FAB6C 02002021 */   addu      $a0, $s0, $zero
.L800FAB70:
/* D1FE0 800FAB70 8FBF0014 */  lw         $ra, 0x14($sp)
/* D1FE4 800FAB74 8FB00010 */  lw         $s0, 0x10($sp)
/* D1FE8 800FAB78 03E00008 */  jr         $ra
/* D1FEC 800FAB7C 27BD0018 */   addiu     $sp, $sp, 0x18
