	.set noat
	.set noreorder

glabel func_8004CC8C
/* 4D88C 8004CC8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D890 8004CC90 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4D894 8004CC94 00042400 */  sll        $a0, $a0, 0x10
/* 4D898 8004CC98 00042403 */  sra        $a0, $a0, 0x10
/* 4D89C 8004CC9C 00052C00 */  sll        $a1, $a1, 0x10
/* 4D8A0 8004CCA0 00041040 */  sll        $v0, $a0, 1
/* 4D8A4 8004CCA4 00441021 */  addu       $v0, $v0, $a0
/* 4D8A8 8004CCA8 00021100 */  sll        $v0, $v0, 4
/* 4D8AC 8004CCAC 3C06800F */  lui        $a2, %hi(D_800F32D0)
/* 4D8B0 8004CCB0 00C23021 */  addu       $a2, $a2, $v0
/* 4D8B4 8004CCB4 8CC632D0 */  lw         $a2, %lo(D_800F32D0)($a2)
/* 4D8B8 8004CCB8 00052C03 */  sra        $a1, $a1, 0x10
/* 4D8BC 8004CCBC 0C0132DC */  jal        func_8004CB70
/* 4D8C0 8004CCC0 24C6000C */   addiu     $a2, $a2, 0xc
/* 4D8C4 8004CCC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4D8C8 8004CCC8 03E00008 */  jr         $ra
/* 4D8CC 8004CCCC 27BD0018 */   addiu     $sp, $sp, 0x18
