	.set noat
	.set noreorder

glabel func_8004F584
/* 50184 8004F584 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50188 8004F588 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5018C 8004F58C AFB00010 */  sw         $s0, 0x10($sp)
/* 50190 8004F590 00042080 */  sll        $a0, $a0, 2
/* 50194 8004F594 3C02800E */  lui        $v0, %hi(D_800D8220)
/* 50198 8004F598 24428220 */  addiu      $v0, $v0, %lo(D_800D8220)
/* 5019C 8004F59C 00828021 */  addu       $s0, $a0, $v0
/* 501A0 8004F5A0 86040000 */  lh         $a0, ($s0)
/* 501A4 8004F5A4 2402FFFF */  addiu      $v0, $zero, -1
/* 501A8 8004F5A8 10820005 */  beq        $a0, $v0, .L8004F5C0
/* 501AC 8004F5AC 00000000 */   nop
/* 501B0 8004F5B0 0C01934E */  jal        func_80064D38
/* 501B4 8004F5B4 00000000 */   nop
/* 501B8 8004F5B8 2402FFFF */  addiu      $v0, $zero, -1
/* 501BC 8004F5BC A6020000 */  sh         $v0, ($s0)
.L8004F5C0:
/* 501C0 8004F5C0 86040002 */  lh         $a0, 2($s0)
/* 501C4 8004F5C4 2402FFFF */  addiu      $v0, $zero, -1
/* 501C8 8004F5C8 10820005 */  beq        $a0, $v0, .L8004F5E0
/* 501CC 8004F5CC 00000000 */   nop
/* 501D0 8004F5D0 0C019DC1 */  jal        func_80067704
/* 501D4 8004F5D4 00000000 */   nop
/* 501D8 8004F5D8 2402FFFF */  addiu      $v0, $zero, -1
/* 501DC 8004F5DC A6020002 */  sh         $v0, 2($s0)
.L8004F5E0:
/* 501E0 8004F5E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 501E4 8004F5E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 501E8 8004F5E8 03E00008 */  jr         $ra
/* 501EC 8004F5EC 27BD0018 */   addiu     $sp, $sp, 0x18
