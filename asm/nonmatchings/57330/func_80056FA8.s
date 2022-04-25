	.set noat
	.set noreorder

glabel func_80056FA8
/* 57BA8 80056FA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 57BAC 80056FAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 57BB0 80056FB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 57BB4 80056FB4 3C10800F */  lui        $s0, %hi(D_800ED5C0)
/* 57BB8 80056FB8 2610D5C0 */  addiu      $s0, $s0, %lo(D_800ED5C0)
/* 57BBC 80056FBC 0C0165E6 */  jal        func_80059798
/* 57BC0 80056FC0 2404002C */   addiu     $a0, $zero, 0x2c
/* 57BC4 80056FC4 10400003 */  beqz       $v0, .L80056FD4
/* 57BC8 80056FC8 24030003 */   addiu     $v1, $zero, 3
/* 57BCC 80056FCC 08015BFF */  j          .L80056FFC
/* 57BD0 80056FD0 00001021 */   addu      $v0, $zero, $zero
.L80056FD4:
/* 57BD4 80056FD4 8604001C */  lh         $a0, 0x1c($s0)
/* 57BD8 80056FD8 14830008 */  bne        $a0, $v1, .L80056FFC
/* 57BDC 80056FDC 00001021 */   addu      $v0, $zero, $zero
/* 57BE0 80056FE0 86030006 */  lh         $v1, 6($s0)
/* 57BE4 80056FE4 04600005 */  bltz       $v1, .L80056FFC
/* 57BE8 80056FE8 00000000 */   nop
/* 57BEC 80056FEC 86020008 */  lh         $v0, 8($s0)
/* 57BF0 80056FF0 00621023 */  subu       $v0, $v1, $v0
/* 57BF4 80056FF4 38420005 */  xori       $v0, $v0, 5
/* 57BF8 80056FF8 2C420001 */  sltiu      $v0, $v0, 1
.L80056FFC:
/* 57BFC 80056FFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57C00 80057000 8FB00010 */  lw         $s0, 0x10($sp)
/* 57C04 80057004 03E00008 */  jr         $ra
/* 57C08 80057008 27BD0018 */   addiu     $sp, $sp, 0x18
