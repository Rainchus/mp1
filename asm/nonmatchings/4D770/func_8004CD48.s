	.set noat
	.set noreorder

glabel func_8004CD48
/* 4D948 8004CD48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D94C 8004CD4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D950 8004CD50 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D954 8004CD54 00808021 */  addu       $s0, $a0, $zero
/* 4D958 8004CD58 00052400 */  sll        $a0, $a1, 0x10
/* 4D95C 8004CD5C 0C01307B */  jal        func_8004C1EC
/* 4D960 8004CD60 00042403 */   sra       $a0, $a0, 0x10
/* 4D964 8004CD64 2604000C */  addiu      $a0, $s0, 0xc
/* 4D968 8004CD68 24450004 */  addiu      $a1, $v0, 4
/* 4D96C 8004CD6C 0C013334 */  jal        func_8004CCD0
/* 4D970 8004CD70 26060018 */   addiu     $a2, $s0, 0x18
/* 4D974 8004CD74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D978 8004CD78 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D97C 8004CD7C 03E00008 */  jr         $ra
/* 4D980 8004CD80 27BD0018 */   addiu     $sp, $sp, 0x18
