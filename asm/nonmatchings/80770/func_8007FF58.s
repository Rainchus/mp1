	.set noat
	.set noreorder

glabel func_8007FF58
/* 80B58 8007FF58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 80B5C 8007FF5C 3C18800E */  lui        $t8, %hi(D_800E7A70)
/* 80B60 8007FF60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80B64 8007FF64 240E000F */  addiu      $t6, $zero, 0xf
/* 80B68 8007FF68 240F0080 */  addiu      $t7, $zero, 0x80
/* 80B6C 8007FF6C 27187A70 */  addiu      $t8, $t8, %lo(D_800E7A70)
/* 80B70 8007FF70 3C04800F */  lui        $a0, %hi(D_800E8748)
/* 80B74 8007FF74 A3AE001C */  sb         $t6, 0x1c($sp)
/* 80B78 8007FF78 A3AF001E */  sb         $t7, 0x1e($sp)
/* 80B7C 8007FF7C A3A00020 */  sb         $zero, 0x20($sp)
/* 80B80 8007FF80 AFB80024 */  sw         $t8, 0x24($sp)
/* 80B84 8007FF84 24848748 */  addiu      $a0, $a0, %lo(D_800E8748)
/* 80B88 8007FF88 27A5001C */  addiu      $a1, $sp, 0x1c
/* 80B8C 8007FF8C 0C0222C4 */  jal        func_80088B10
/* 80B90 8007FF90 00003025 */   or        $a2, $zero, $zero
/* 80B94 8007FF94 10400003 */  beqz       $v0, .L8007FFA4
/* 80B98 8007FF98 3C04800E */   lui       $a0, %hi(D_800E7A70)
/* 80B9C 8007FF9C 1000000B */  b          .L8007FFCC
/* 80BA0 8007FFA0 24020023 */   addiu     $v0, $zero, 0x23
.L8007FFA4:
/* 80BA4 8007FFA4 24847A70 */  addiu      $a0, $a0, %lo(D_800E7A70)
/* 80BA8 8007FFA8 00002825 */  or         $a1, $zero, $zero
/* 80BAC 8007FFAC 0C022278 */  jal        func_800889E0
/* 80BB0 8007FFB0 24060001 */   addiu     $a2, $zero, 1
/* 80BB4 8007FFB4 93B90020 */  lbu        $t9, 0x20($sp)
/* 80BB8 8007FFB8 93A20021 */  lbu        $v0, 0x21($sp)
/* 80BBC 8007FFBC 17200003 */  bnez       $t9, .L8007FFCC
/* 80BC0 8007FFC0 00000000 */   nop
/* 80BC4 8007FFC4 10000001 */  b          .L8007FFCC
/* 80BC8 8007FFC8 00001025 */   or        $v0, $zero, $zero
.L8007FFCC:
/* 80BCC 8007FFCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80BD0 8007FFD0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 80BD4 8007FFD4 03E00008 */  jr         $ra
/* 80BD8 8007FFD8 00000000 */   nop
/* 80BDC 8007FFDC 00000000 */  nop
