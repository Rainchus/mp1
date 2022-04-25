	.set noat
	.set noreorder

glabel func_800F7318_CE788
/* CE788 800F7318 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE78C 800F731C AFBF0014 */  sw         $ra, 0x14($sp)
/* CE790 800F7320 AFB00010 */  sw         $s0, 0x10($sp)
/* CE794 800F7324 0C01C9C6 */  jal        func_80072718
/* CE798 800F7328 00808021 */   addu      $s0, $a0, $zero
/* CE79C 800F732C 14400004 */  bnez       $v0, .L800F7340
/* CE7A0 800F7330 00000000 */   nop
/* CE7A4 800F7334 3C02800F */  lui        $v0, %hi(func_800F7350_CE7C0)
/* CE7A8 800F7338 24427350 */  addiu      $v0, $v0, %lo(func_800F7350_CE7C0)
/* CE7AC 800F733C AE020014 */  sw         $v0, 0x14($s0)
.L800F7340:
/* CE7B0 800F7340 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE7B4 800F7344 8FB00010 */  lw         $s0, 0x10($sp)
/* CE7B8 800F7348 03E00008 */  jr         $ra
/* CE7BC 800F734C 27BD0018 */   addiu     $sp, $sp, 0x18
