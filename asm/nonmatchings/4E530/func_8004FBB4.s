	.set noat
	.set noreorder

glabel func_8004FBB4
/* 507B4 8004FBB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 507B8 8004FBB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 507BC 8004FBBC AFB00010 */  sw         $s0, 0x10($sp)
/* 507C0 8004FBC0 00008021 */  addu       $s0, $zero, $zero
.L8004FBC4:
/* 507C4 8004FBC4 0C013ED4 */  jal        func_8004FB50
/* 507C8 8004FBC8 02002021 */   addu      $a0, $s0, $zero
/* 507CC 8004FBCC 26100001 */  addiu      $s0, $s0, 1
/* 507D0 8004FBD0 2A020010 */  slti       $v0, $s0, 0x10
/* 507D4 8004FBD4 1440FFFB */  bnez       $v0, .L8004FBC4
/* 507D8 8004FBD8 00000000 */   nop
/* 507DC 8004FBDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 507E0 8004FBE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 507E4 8004FBE4 03E00008 */  jr         $ra
/* 507E8 8004FBE8 27BD0018 */   addiu     $sp, $sp, 0x18
