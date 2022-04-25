	.set noat
	.set noreorder

glabel func_8000AFA0
/* BBA0 8000AFA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BBA4 8000AFA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* BBA8 8000AFA8 AFB00018 */  sw         $s0, 0x18($sp)
/* BBAC 8000AFAC AFA40010 */  sw         $a0, 0x10($sp)
/* BBB0 8000AFB0 00002021 */  addu       $a0, $zero, $zero
/* BBB4 8000AFB4 00002821 */  addu       $a1, $zero, $zero
/* BBB8 8000AFB8 3C06800D */  lui        $a2, %hi(D_800CDAA8)
/* BBBC 8000AFBC 24C6DAA8 */  addiu      $a2, $a2, %lo(D_800CDAA8)
/* BBC0 8000AFC0 0C02266C */  jal        func_800899B0
/* BBC4 8000AFC4 24070001 */   addiu     $a3, $zero, 1
/* BBC8 8000AFC8 00408021 */  addu       $s0, $v0, $zero
/* BBCC 8000AFCC 16000006 */  bnez       $s0, .L8000AFE8
/* BBD0 8000AFD0 02001021 */   addu      $v0, $s0, $zero
/* BBD4 8000AFD4 00002021 */  addu       $a0, $zero, $zero
/* BBD8 8000AFD8 00002821 */  addu       $a1, $zero, $zero
/* BBDC 8000AFDC 0C002BFE */  jal        func_8000AFF8
/* BBE0 8000AFE0 24060001 */   addiu     $a2, $zero, 1
/* BBE4 8000AFE4 02001021 */  addu       $v0, $s0, $zero
.L8000AFE8:
/* BBE8 8000AFE8 8FBF001C */  lw         $ra, 0x1c($sp)
/* BBEC 8000AFEC 8FB00018 */  lw         $s0, 0x18($sp)
/* BBF0 8000AFF0 03E00008 */  jr         $ra
/* BBF4 8000AFF4 27BD0020 */   addiu     $sp, $sp, 0x20
