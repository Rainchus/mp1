	.set noat
	.set noreorder

glabel func_8004C71C
/* 4D31C 8004C71C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D320 8004C720 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D324 8004C724 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D328 8004C728 00808021 */  addu       $s0, $a0, $zero
/* 4D32C 8004C72C 3C048005 */  lui        $a0, %hi(func_8004C660)
/* 4D330 8004C730 2484C660 */  addiu      $a0, $a0, %lo(func_8004C660)
/* 4D334 8004C734 3405EF00 */  ori        $a1, $zero, 0xef00
/* 4D338 8004C738 00003021 */  addu       $a2, $zero, $zero
/* 4D33C 8004C73C 0C01770A */  jal        func_8005DC28
/* 4D340 8004C740 00003821 */   addu      $a3, $zero, $zero
/* 4D344 8004C744 00108400 */  sll        $s0, $s0, 0x10
/* 4D348 8004C748 00108403 */  sra        $s0, $s0, 0x10
/* 4D34C 8004C74C AC50008C */  sw         $s0, 0x8c($v0)
/* 4D350 8004C750 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D354 8004C754 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D358 8004C758 03E00008 */  jr         $ra
/* 4D35C 8004C75C 27BD0018 */   addiu     $sp, $sp, 0x18
