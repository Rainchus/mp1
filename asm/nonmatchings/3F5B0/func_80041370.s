	.set noat
	.set noreorder

glabel func_80041370
/* 41F70 80041370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 41F74 80041374 AFBF0014 */  sw         $ra, 0x14($sp)
/* 41F78 80041378 AFB00010 */  sw         $s0, 0x10($sp)
/* 41F7C 8004137C 00008021 */  addu       $s0, $zero, $zero
.L80041380:
/* 41F80 80041380 0C010494 */  jal        func_80041250
/* 41F84 80041384 02002021 */   addu      $a0, $s0, $zero
/* 41F88 80041388 0C010177 */  jal        func_800405DC
/* 41F8C 8004138C 02002021 */   addu      $a0, $s0, $zero
/* 41F90 80041390 26100001 */  addiu      $s0, $s0, 1
/* 41F94 80041394 2A020004 */  slti       $v0, $s0, 4
/* 41F98 80041398 1440FFF9 */  bnez       $v0, .L80041380
/* 41F9C 8004139C 00000000 */   nop
/* 41FA0 800413A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 41FA4 800413A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 41FA8 800413A8 03E00008 */  jr         $ra
/* 41FAC 800413AC 27BD0018 */   addiu     $sp, $sp, 0x18
