	.set noat
	.set noreorder

glabel func_8007B2CC
/* 7BECC 8007B2CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BED0 8007B2D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7BED4 8007B2D4 3C02800E */  lui        $v0, %hi(D_800E4348)
/* 7BED8 8007B2D8 90424348 */  lbu        $v0, %lo(D_800E4348)($v0)
/* 7BEDC 8007B2DC 2C420003 */  sltiu      $v0, $v0, 3
/* 7BEE0 8007B2E0 14400008 */  bnez       $v0, .L8007B304
/* 7BEE4 8007B2E4 00001021 */   addu      $v0, $zero, $zero
/* 7BEE8 8007B2E8 3C04800E */  lui        $a0, %hi(D_800E434C)
/* 7BEEC 8007B2EC 0C008E22 */  jal        func_80023888
/* 7BEF0 8007B2F0 8C84434C */   lw        $a0, %lo(D_800E434C)($a0)
/* 7BEF4 8007B2F4 3C04800E */  lui        $a0, %hi(D_800E4350)
/* 7BEF8 8007B2F8 0C00915B */  jal        func_8002456C
/* 7BEFC 8007B2FC 84844350 */   lh        $a0, %lo(D_800E4350)($a0)
/* 7BF00 8007B300 24020001 */  addiu      $v0, $zero, 1
.L8007B304:
/* 7BF04 8007B304 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7BF08 8007B308 03E00008 */  jr         $ra
/* 7BF0C 8007B30C 27BD0018 */   addiu     $sp, $sp, 0x18
