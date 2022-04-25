	.set noat
	.set noreorder

glabel func_8000A72C
/* B32C 8000A72C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B330 8000A730 AFBF0034 */  sw         $ra, 0x34($sp)
/* B334 8000A734 AFB00030 */  sw         $s0, 0x30($sp)
/* B338 8000A738 F7B60040 */  sdc1       $f22, 0x40($sp)
/* B33C 8000A73C F7B40038 */  sdc1       $f20, 0x38($sp)
/* B340 8000A740 4486A000 */  mtc1       $a2, $f20
/* B344 8000A744 4487B000 */  mtc1       $a3, $f22
/* B348 8000A748 E7AC0010 */  swc1       $f12, 0x10($sp)
/* B34C 8000A74C AFA00014 */  sw         $zero, 0x14($sp)
/* B350 8000A750 E7AE0018 */  swc1       $f14, 0x18($sp)
/* B354 8000A754 0C00A55B */  jal        func_8002956C
/* B358 8000A758 27A40010 */   addiu     $a0, $sp, 0x10
/* B35C 8000A75C E7B40020 */  swc1       $f20, 0x20($sp)
/* B360 8000A760 AFA00024 */  sw         $zero, 0x24($sp)
/* B364 8000A764 E7B60028 */  swc1       $f22, 0x28($sp)
/* B368 8000A768 27B00020 */  addiu      $s0, $sp, 0x20
/* B36C 8000A76C 0C00A55B */  jal        func_8002956C
/* B370 8000A770 02002021 */   addu      $a0, $s0, $zero
/* B374 8000A774 02002021 */  addu       $a0, $s0, $zero
/* B378 8000A778 0C028520 */  jal        func_800A1480
/* B37C 8000A77C 27A50010 */   addiu     $a1, $sp, 0x10
/* B380 8000A780 8FBF0034 */  lw         $ra, 0x34($sp)
/* B384 8000A784 8FB00030 */  lw         $s0, 0x30($sp)
/* B388 8000A788 D7B60040 */  ldc1       $f22, 0x40($sp)
/* B38C 8000A78C D7B40038 */  ldc1       $f20, 0x38($sp)
/* B390 8000A790 03E00008 */  jr         $ra
/* B394 8000A794 27BD0048 */   addiu     $sp, $sp, 0x48
