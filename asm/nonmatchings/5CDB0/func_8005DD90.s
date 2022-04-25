	.set noat
	.set noreorder

glabel func_8005DD90
/* 5E990 8005DD90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E994 8005DD94 10800005 */  beqz       $a0, .L8005DDAC
/* 5E998 8005DD98 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5E99C 8005DD9C 0C018D06 */  jal        func_80063418
/* 5E9A0 8005DDA0 00000000 */   nop
/* 5E9A4 8005DDA4 08017774 */  j          .L8005DDD0
/* 5E9A8 8005DDA8 00000000 */   nop
.L8005DDAC:
/* 5E9AC 8005DDAC 0C018CEA */  jal        func_800633A8
/* 5E9B0 8005DDB0 00000000 */   nop
/* 5E9B4 8005DDB4 0C018D06 */  jal        func_80063418
/* 5E9B8 8005DDB8 00402021 */   addu      $a0, $v0, $zero
/* 5E9BC 8005DDBC 14400004 */  bnez       $v0, .L8005DDD0
/* 5E9C0 8005DDC0 2402FFFF */   addiu     $v0, $zero, -1
/* 5E9C4 8005DDC4 0C018D6D */  jal        func_800635B4
/* 5E9C8 8005DDC8 00000000 */   nop
/* 5E9CC 8005DDCC 2402FFFF */  addiu      $v0, $zero, -1
.L8005DDD0:
/* 5E9D0 8005DDD0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5E9D4 8005DDD4 03E00008 */  jr         $ra
/* 5E9D8 8005DDD8 27BD0018 */   addiu     $sp, $sp, 0x18
