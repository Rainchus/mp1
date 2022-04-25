	.set noat
	.set noreorder

glabel func_8004C61C
/* 4D21C 8004C61C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D220 8004C620 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D224 8004C624 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D228 8004C628 00808021 */  addu       $s0, $a0, $zero
/* 4D22C 8004C62C 3C048005 */  lui        $a0, %hi(func_8004C558)
/* 4D230 8004C630 2484C558 */  addiu      $a0, $a0, %lo(func_8004C558)
/* 4D234 8004C634 3405EF00 */  ori        $a1, $zero, 0xef00
/* 4D238 8004C638 00003021 */  addu       $a2, $zero, $zero
/* 4D23C 8004C63C 0C01770A */  jal        func_8005DC28
/* 4D240 8004C640 00003821 */   addu      $a3, $zero, $zero
/* 4D244 8004C644 00108400 */  sll        $s0, $s0, 0x10
/* 4D248 8004C648 00108403 */  sra        $s0, $s0, 0x10
/* 4D24C 8004C64C AC50008C */  sw         $s0, 0x8c($v0)
/* 4D250 8004C650 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D254 8004C654 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D258 8004C658 03E00008 */  jr         $ra
/* 4D25C 8004C65C 27BD0018 */   addiu     $sp, $sp, 0x18
