	.set noat
	.set noreorder

glabel func_8005AF60
/* 5BB60 8005AF60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5BB64 8005AF64 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5BB68 8005AF68 AFB00018 */  sw         $s0, 0x18($sp)
/* 5BB6C 8005AF6C 24020001 */  addiu      $v0, $zero, 1
/* 5BB70 8005AF70 3C01800F */  lui        $at, %hi(D_800F64F2)
/* 5BB74 8005AF74 A02264F2 */  sb         $v0, %lo(D_800F64F2)($at)
/* 5BB78 8005AF78 3C028006 */  lui        $v0, %hi(func_8005A4C0)
/* 5BB7C 8005AF7C 2442A4C0 */  addiu      $v0, $v0, %lo(func_8005A4C0)
/* 5BB80 8005AF80 AFA20010 */  sw         $v0, 0x10($sp)
/* 5BB84 8005AF84 00002021 */  addu       $a0, $zero, $zero
/* 5BB88 8005AF88 00002821 */  addu       $a1, $zero, $zero
/* 5BB8C 8005AF8C 00003021 */  addu       $a2, $zero, $zero
/* 5BB90 8005AF90 0C0174E1 */  jal        func_8005D384
/* 5BB94 8005AF94 2407FFFF */   addiu     $a3, $zero, -1
/* 5BB98 8005AF98 00408021 */  addu       $s0, $v0, $zero
/* 5BB9C 8005AF9C 02002021 */  addu       $a0, $s0, $zero
/* 5BBA0 8005AFA0 0C01762E */  jal        func_8005D8B8
/* 5BBA4 8005AFA4 240500A0 */   addiu     $a1, $zero, 0xa0
/* 5BBA8 8005AFA8 0C016D76 */  jal        func_8005B5D8
/* 5BBAC 8005AFAC A200004C */   sb        $zero, 0x4c($s0)
/* 5BBB0 8005AFB0 0C016BA2 */  jal        func_8005AE88
/* 5BBB4 8005AFB4 00000000 */   nop
/* 5BBB8 8005AFB8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5BBBC 8005AFBC 8FB00018 */  lw         $s0, 0x18($sp)
/* 5BBC0 8005AFC0 03E00008 */  jr         $ra
/* 5BBC4 8005AFC4 27BD0020 */   addiu     $sp, $sp, 0x20
