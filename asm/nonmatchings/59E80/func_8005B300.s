	.set noat
	.set noreorder

glabel func_8005B300
/* 5BF00 8005B300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BF04 8005B304 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BF08 8005B308 0C017378 */  jal        func_8005CDE0
/* 5BF0C 8005B30C 00000000 */   nop
/* 5BF10 8005B310 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BF14 8005B314 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BF18 8005B318 1040000A */  beqz       $v0, .L8005B344
/* 5BF1C 8005B31C 00002021 */   addu      $a0, $zero, $zero
/* 5BF20 8005B320 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BF24 8005B324 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BF28 8005B328 0C006541 */  jal        func_80019504
/* 5BF2C 8005B32C 24060050 */   addiu     $a2, $zero, 0x50
/* 5BF30 8005B330 2404017A */  addiu      $a0, $zero, 0x17a
/* 5BF34 8005B334 3C05800F */  lui        $a1, %hi(D_800F37B8)
/* 5BF38 8005B338 24A537B8 */  addiu      $a1, $a1, %lo(D_800F37B8)
/* 5BF3C 8005B33C 0C006541 */  jal        func_80019504
/* 5BF40 8005B340 2406000F */   addiu     $a2, $zero, 0xf
.L8005B344:
/* 5BF44 8005B344 0C016C09 */  jal        func_8005B024
/* 5BF48 8005B348 00000000 */   nop
/* 5BF4C 8005B34C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BF50 8005B350 03E00008 */  jr         $ra
/* 5BF54 8005B354 27BD0018 */   addiu     $sp, $sp, 0x18
