	.set noat
	.set noreorder

glabel func_8005B3B0
/* 5BFB0 8005B3B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BFB4 8005B3B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BFB8 8005B3B8 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BFBC 8005B3BC 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BFC0 8005B3C0 1040000F */  beqz       $v0, .L8005B400
/* 5BFC4 8005B3C4 00002021 */   addu      $a0, $zero, $zero
/* 5BFC8 8005B3C8 3C05800F */  lui        $a1, %hi(D_800ED100)
/* 5BFCC 8005B3CC 24A5D100 */  addiu      $a1, $a1, %lo(D_800ED100)
/* 5BFD0 8005B3D0 0C006541 */  jal        func_80019504
/* 5BFD4 8005B3D4 24060094 */   addiu     $a2, $zero, 0x94
/* 5BFD8 8005B3D8 24040094 */  addiu      $a0, $zero, 0x94
/* 5BFDC 8005B3DC 3C05800F */  lui        $a1, %hi(D_800F32B0)
/* 5BFE0 8005B3E0 24A532B0 */  addiu      $a1, $a1, %lo(D_800F32B0)
/* 5BFE4 8005B3E4 0C006541 */  jal        func_80019504
/* 5BFE8 8005B3E8 240600C0 */   addiu     $a2, $zero, 0xc0
/* 5BFEC 8005B3EC 24040154 */  addiu      $a0, $zero, 0x154
/* 5BFF0 8005B3F0 3C05800F */  lui        $a1, %hi(D_800ED5C0)
/* 5BFF4 8005B3F4 24A5D5C0 */  addiu      $a1, $a1, %lo(D_800ED5C0)
/* 5BFF8 8005B3F8 0C006541 */  jal        func_80019504
/* 5BFFC 8005B3FC 24060026 */   addiu     $a2, $zero, 0x26
.L8005B400:
/* 5C000 8005B400 0C016C09 */  jal        func_8005B024
/* 5C004 8005B404 00000000 */   nop
/* 5C008 8005B408 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5C00C 8005B40C 03E00008 */  jr         $ra
/* 5C010 8005B410 27BD0018 */   addiu     $sp, $sp, 0x18
