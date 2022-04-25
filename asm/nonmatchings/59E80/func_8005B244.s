	.set noat
	.set noreorder

glabel func_8005B244
/* 5BE44 8005B244 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BE48 8005B248 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BE4C 8005B24C 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BE50 8005B250 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BE54 8005B254 10400005 */  beqz       $v0, .L8005B26C
/* 5BE58 8005B258 00002021 */   addu      $a0, $zero, $zero
/* 5BE5C 8005B25C 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BE60 8005B260 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BE64 8005B264 0C006541 */  jal        func_80019504
/* 5BE68 8005B268 24060050 */   addiu     $a2, $zero, 0x50
.L8005B26C:
/* 5BE6C 8005B26C 0C016C09 */  jal        func_8005B024
/* 5BE70 8005B270 00000000 */   nop
/* 5BE74 8005B274 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BE78 8005B278 03E00008 */  jr         $ra
/* 5BE7C 8005B27C 27BD0018 */   addiu     $sp, $sp, 0x18
