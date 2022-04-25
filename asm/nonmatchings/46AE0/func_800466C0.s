	.set noat
	.set noreorder

glabel func_800466C0
/* 472C0 800466C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 472C4 800466C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 472C8 800466C8 0C018CEA */  jal        func_800633A8
/* 472CC 800466CC AFB00010 */   sw        $s0, 0x10($sp)
/* 472D0 800466D0 00408021 */  addu       $s0, $v0, $zero
/* 472D4 800466D4 3C048004 */  lui        $a0, %hi(func_80046180)
/* 472D8 800466D8 24846180 */  addiu      $a0, $a0, %lo(func_80046180)
/* 472DC 800466DC 24051003 */  addiu      $a1, $zero, 0x1003
/* 472E0 800466E0 00003021 */  addu       $a2, $zero, $zero
/* 472E4 800466E4 0C01770A */  jal        func_8005DC28
/* 472E8 800466E8 00003821 */   addu      $a3, $zero, $zero
/* 472EC 800466EC 02002021 */  addu       $a0, $s0, $zero
/* 472F0 800466F0 0C018C9C */  jal        func_80063270
/* 472F4 800466F4 00402821 */   addu      $a1, $v0, $zero
/* 472F8 800466F8 0C018CD6 */  jal        func_80063358
/* 472FC 800466FC 00000000 */   nop
/* 47300 80046700 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47304 80046704 8FB00010 */  lw         $s0, 0x10($sp)
/* 47308 80046708 03E00008 */  jr         $ra
/* 4730C 8004670C 27BD0018 */   addiu     $sp, $sp, 0x18
