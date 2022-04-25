	.set noat
	.set noreorder

glabel func_8003E940
/* 3F540 8003E940 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F544 8003E944 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3F548 8003E948 AFB10014 */  sw         $s1, 0x14($sp)
/* 3F54C 8003E94C AFB00010 */  sw         $s0, 0x10($sp)
/* 3F550 8003E950 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 3F554 8003E954 00008821 */  addu       $s1, $zero, $zero
/* 3F558 8003E958 8C82003C */  lw         $v0, 0x3c($a0)
/* 3F55C 8003E95C 8C420040 */  lw         $v0, 0x40($v0)
/* 3F560 8003E960 84500000 */  lh         $s0, ($v0)
/* 3F564 8003E964 0C009746 */  jal        func_80025D18
/* 3F568 8003E968 02002021 */   addu      $a0, $s0, $zero
/* 3F56C 8003E96C 46000506 */  mov.s      $f20, $f0
/* 3F570 8003E970 0C009750 */  jal        func_80025D40
/* 3F574 8003E974 02002021 */   addu      $a0, $s0, $zero
/* 3F578 8003E978 4600A032 */  c.eq.s     $f20, $f0
/* 3F57C 8003E97C 00000000 */  nop
/* 3F580 8003E980 00000000 */  nop
/* 3F584 8003E984 45030001 */  bc1tl      .L8003E98C
/* 3F588 8003E988 24110001 */   addiu     $s1, $zero, 1
.L8003E98C:
/* 3F58C 8003E98C 3222FFFF */  andi       $v0, $s1, 0xffff
/* 3F590 8003E990 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3F594 8003E994 8FB10014 */  lw         $s1, 0x14($sp)
/* 3F598 8003E998 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F59C 8003E99C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 3F5A0 8003E9A0 03E00008 */  jr         $ra
/* 3F5A4 8003E9A4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 3F5A8 8003E9A8 00000000 */  nop
/* 3F5AC 8003E9AC 00000000 */  nop
