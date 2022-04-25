	.set noat
	.set noreorder

glabel func_80062088
/* 62C88 80062088 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 62C8C 8006208C AFBF0068 */  sw         $ra, 0x68($sp)
/* 62C90 80062090 AFB30064 */  sw         $s3, 0x64($sp)
/* 62C94 80062094 AFB20060 */  sw         $s2, 0x60($sp)
/* 62C98 80062098 AFB1005C */  sw         $s1, 0x5c($sp)
/* 62C9C 8006209C AFB00058 */  sw         $s0, 0x58($sp)
/* 62CA0 800620A0 00809821 */  addu       $s3, $a0, $zero
/* 62CA4 800620A4 00A08821 */  addu       $s1, $a1, $zero
/* 62CA8 800620A8 00C09021 */  addu       $s2, $a2, $zero
/* 62CAC 800620AC 27A40020 */  addiu      $a0, $sp, 0x20
/* 62CB0 800620B0 27A50050 */  addiu      $a1, $sp, 0x50
/* 62CB4 800620B4 0C022188 */  jal        func_80088620
/* 62CB8 800620B8 24060001 */   addiu     $a2, $zero, 1
/* 62CBC 800620BC 2650000F */  addiu      $s0, $s2, 0xf
/* 62CC0 800620C0 00108102 */  srl        $s0, $s0, 4
/* 62CC4 800620C4 00108100 */  sll        $s0, $s0, 4
/* 62CC8 800620C8 02202021 */  addu       $a0, $s1, $zero
/* 62CCC 800620CC 0C0220EC */  jal        func_800883B0
/* 62CD0 800620D0 02002821 */   addu      $a1, $s0, $zero
/* 62CD4 800620D4 02202021 */  addu       $a0, $s1, $zero
/* 62CD8 800620D8 0C0220C0 */  jal        func_80088300
/* 62CDC 800620DC 02002821 */   addu      $a1, $s0, $zero
/* 62CE0 800620E0 AFB10010 */  sw         $s1, 0x10($sp)
/* 62CE4 800620E4 AFB20014 */  sw         $s2, 0x14($sp)
/* 62CE8 800620E8 27B10020 */  addiu      $s1, $sp, 0x20
/* 62CEC 800620EC AFB10018 */  sw         $s1, 0x18($sp)
/* 62CF0 800620F0 27A40038 */  addiu      $a0, $sp, 0x38
/* 62CF4 800620F4 00002821 */  addu       $a1, $zero, $zero
/* 62CF8 800620F8 00003021 */  addu       $a2, $zero, $zero
/* 62CFC 800620FC 0C0187E8 */  jal        func_80061FA0
/* 62D00 80062100 02603821 */   addu      $a3, $s3, $zero
/* 62D04 80062104 00408021 */  addu       $s0, $v0, $zero
/* 62D08 80062108 16000006 */  bnez       $s0, .L80062124
/* 62D0C 8006210C 02001021 */   addu      $v0, $s0, $zero
/* 62D10 80062110 02202021 */  addu       $a0, $s1, $zero
/* 62D14 80062114 00002821 */  addu       $a1, $zero, $zero
/* 62D18 80062118 0C022278 */  jal        func_800889E0
/* 62D1C 8006211C 24060001 */   addiu     $a2, $zero, 1
/* 62D20 80062120 02001021 */  addu       $v0, $s0, $zero
.L80062124:
/* 62D24 80062124 8FBF0068 */  lw         $ra, 0x68($sp)
/* 62D28 80062128 8FB30064 */  lw         $s3, 0x64($sp)
/* 62D2C 8006212C 8FB20060 */  lw         $s2, 0x60($sp)
/* 62D30 80062130 8FB1005C */  lw         $s1, 0x5c($sp)
/* 62D34 80062134 8FB00058 */  lw         $s0, 0x58($sp)
/* 62D38 80062138 03E00008 */  jr         $ra
/* 62D3C 8006213C 27BD0070 */   addiu     $sp, $sp, 0x70
