	.set noat
	.set noreorder

glabel func_80022AD0
/* 236D0 80022AD0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 236D4 80022AD4 AFBF0058 */  sw         $ra, 0x58($sp)
/* 236D8 80022AD8 AFB10054 */  sw         $s1, 0x54($sp)
/* 236DC 80022ADC AFB00050 */  sw         $s0, 0x50($sp)
/* 236E0 80022AE0 00808021 */  addu       $s0, $a0, $zero
/* 236E4 80022AE4 00A08821 */  addu       $s1, $a1, $zero
/* 236E8 80022AE8 0C008A4B */  jal        func_8002292C
/* 236EC 80022AEC 27A50010 */   addiu     $a1, $sp, 0x10
/* 236F0 80022AF0 00021400 */  sll        $v0, $v0, 0x10
/* 236F4 80022AF4 10400006 */  beqz       $v0, .L80022B10
/* 236F8 80022AF8 27A40010 */   addiu     $a0, $sp, 0x10
/* 236FC 80022AFC 02002821 */  addu       $a1, $s0, $zero
/* 23700 80022B00 0C021C3C */  jal        func_800870F0
/* 23704 80022B04 02203021 */   addu      $a2, $s1, $zero
/* 23708 80022B08 08008AC7 */  j          .L80022B1C
/* 2370C 80022B0C 24020001 */   addiu     $v0, $zero, 1
.L80022B10:
/* 23710 80022B10 0C021BEC */  jal        func_80086FB0
/* 23714 80022B14 02202021 */   addu      $a0, $s1, $zero
/* 23718 80022B18 00001021 */  addu       $v0, $zero, $zero
.L80022B1C:
/* 2371C 80022B1C 8FBF0058 */  lw         $ra, 0x58($sp)
/* 23720 80022B20 8FB10054 */  lw         $s1, 0x54($sp)
/* 23724 80022B24 8FB00050 */  lw         $s0, 0x50($sp)
/* 23728 80022B28 03E00008 */  jr         $ra
/* 2372C 80022B2C 27BD0060 */   addiu     $sp, $sp, 0x60
