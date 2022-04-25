	.set noat
	.set noreorder

glabel func_80064E64
/* 65A64 80064E64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65A68 80064E68 AFBF0018 */  sw         $ra, 0x18($sp)
/* 65A6C 80064E6C AFB10014 */  sw         $s1, 0x14($sp)
/* 65A70 80064E70 AFB00010 */  sw         $s0, 0x10($sp)
/* 65A74 80064E74 3C01800F */  lui        $at, %hi(D_800F502E)
/* 65A78 80064E78 A420502E */  sh         $zero, %lo(D_800F502E)($at)
/* 65A7C 80064E7C 00008021 */  addu       $s0, $zero, $zero
/* 65A80 80064E80 3C11800F */  lui        $s1, %hi(D_800EE330)
/* 65A84 80064E84 2631E330 */  addiu      $s1, $s1, %lo(D_800EE330)
/* 65A88 80064E88 00101400 */  sll        $v0, $s0, 0x10
.L80064E8C:
/* 65A8C 80064E8C 00022403 */  sra        $a0, $v0, 0x10
/* 65A90 80064E90 00041080 */  sll        $v0, $a0, 2
/* 65A94 80064E94 00511021 */  addu       $v0, $v0, $s1
/* 65A98 80064E98 8C420000 */  lw         $v0, ($v0)
/* 65A9C 80064E9C 10400004 */  beqz       $v0, .L80064EB0
/* 65AA0 80064EA0 26020001 */   addiu     $v0, $s0, 1
/* 65AA4 80064EA4 0C01934E */  jal        func_80064D38
/* 65AA8 80064EA8 00000000 */   nop
/* 65AAC 80064EAC 26020001 */  addiu      $v0, $s0, 1
.L80064EB0:
/* 65AB0 80064EB0 00408021 */  addu       $s0, $v0, $zero
/* 65AB4 80064EB4 00021400 */  sll        $v0, $v0, 0x10
/* 65AB8 80064EB8 00021403 */  sra        $v0, $v0, 0x10
/* 65ABC 80064EBC 28420100 */  slti       $v0, $v0, 0x100
/* 65AC0 80064EC0 5440FFF2 */  bnel       $v0, $zero, .L80064E8C
/* 65AC4 80064EC4 00101400 */   sll       $v0, $s0, 0x10
/* 65AC8 80064EC8 3C01800F */  lui        $at, %hi(D_800ED0C0)
/* 65ACC 80064ECC AC20D0C0 */  sw         $zero, %lo(D_800ED0C0)($at)
/* 65AD0 80064ED0 3C01800F */  lui        $at, %hi(D_800ECB04)
/* 65AD4 80064ED4 AC20CB04 */  sw         $zero, %lo(D_800ECB04)($at)
/* 65AD8 80064ED8 3C01800F */  lui        $at, %hi(D_800ECB20)
/* 65ADC 80064EDC A420CB20 */  sh         $zero, %lo(D_800ECB20)($at)
/* 65AE0 80064EE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 65AE4 80064EE4 8FB10014 */  lw         $s1, 0x14($sp)
/* 65AE8 80064EE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 65AEC 80064EEC 03E00008 */  jr         $ra
/* 65AF0 80064EF0 27BD0020 */   addiu     $sp, $sp, 0x20
