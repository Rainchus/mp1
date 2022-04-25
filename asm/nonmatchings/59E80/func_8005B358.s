	.set noat
	.set noreorder

glabel func_8005B358
/* 5BF58 8005B358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BF5C 8005B35C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BF60 8005B360 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BF64 8005B364 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BF68 8005B368 10400004 */  beqz       $v0, .L8005B37C
/* 5BF6C 8005B36C 00802821 */   addu      $a1, $a0, $zero
/* 5BF70 8005B370 2404017A */  addiu      $a0, $zero, 0x17a
/* 5BF74 8005B374 0C006569 */  jal        func_800195A4
/* 5BF78 8005B378 2406000F */   addiu     $a2, $zero, 0xf
.L8005B37C:
/* 5BF7C 8005B37C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BF80 8005B380 03E00008 */  jr         $ra
/* 5BF84 8005B384 27BD0018 */   addiu     $sp, $sp, 0x18
