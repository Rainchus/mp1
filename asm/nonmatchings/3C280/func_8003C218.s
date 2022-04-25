	.set noat
	.set noreorder

glabel func_8003C218
/* 3CE18 8003C218 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3CE1C 8003C21C AFBF0020 */  sw         $ra, 0x20($sp)
/* 3CE20 8003C220 AFB3001C */  sw         $s3, 0x1c($sp)
/* 3CE24 8003C224 AFB20018 */  sw         $s2, 0x18($sp)
/* 3CE28 8003C228 AFB10014 */  sw         $s1, 0x14($sp)
/* 3CE2C 8003C22C AFB00010 */  sw         $s0, 0x10($sp)
/* 3CE30 8003C230 00A08821 */  addu       $s1, $a1, $zero
/* 3CE34 8003C234 00042400 */  sll        $a0, $a0, 0x10
/* 3CE38 8003C238 0C014AA3 */  jal        func_80052A8C
/* 3CE3C 8003C23C 00042403 */   sra       $a0, $a0, 0x10
/* 3CE40 8003C240 0C00EE35 */  jal        func_8003B8D4
/* 3CE44 8003C244 00409821 */   addu      $s3, $v0, $zero
/* 3CE48 8003C248 00409021 */  addu       $s2, $v0, $zero
/* 3CE4C 8003C24C AE530068 */  sw         $s3, 0x68($s2)
/* 3CE50 8003C250 86220000 */  lh         $v0, ($s1)
/* 3CE54 8003C254 04400014 */  bltz       $v0, .L8003C2A8
/* 3CE58 8003C258 02401021 */   addu      $v0, $s2, $zero
.L8003C25C:
/* 3CE5C 8003C25C 0C00EE08 */  jal        func_8003B820
/* 3CE60 8003C260 00000000 */   nop
/* 3CE64 8003C264 86240000 */  lh         $a0, ($s1)
/* 3CE68 8003C268 0C01307B */  jal        func_8004C1EC
/* 3CE6C 8003C26C 00408021 */   addu      $s0, $v0, $zero
/* 3CE70 8003C270 8E650020 */  lw         $a1, 0x20($s3)
/* 3CE74 8003C274 02002021 */  addu       $a0, $s0, $zero
/* 3CE78 8003C278 24A5000C */  addiu      $a1, $a1, 0xc
/* 3CE7C 8003C27C 3C074348 */  lui        $a3, 0x4348
/* 3CE80 8003C280 0C00F066 */  jal        func_8003C198
/* 3CE84 8003C284 24460004 */   addiu     $a2, $v0, 4
/* 3CE88 8003C288 02402021 */  addu       $a0, $s2, $zero
/* 3CE8C 8003C28C 02002821 */  addu       $a1, $s0, $zero
/* 3CE90 8003C290 0C00EE65 */  jal        func_8003B994
/* 3CE94 8003C294 00003021 */   addu      $a2, $zero, $zero
/* 3CE98 8003C298 26310002 */  addiu      $s1, $s1, 2
/* 3CE9C 8003C29C 86220000 */  lh         $v0, ($s1)
/* 3CEA0 8003C2A0 0441FFEE */  bgez       $v0, .L8003C25C
/* 3CEA4 8003C2A4 02401021 */   addu      $v0, $s2, $zero
.L8003C2A8:
/* 3CEA8 8003C2A8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3CEAC 8003C2AC 8FB3001C */  lw         $s3, 0x1c($sp)
/* 3CEB0 8003C2B0 8FB20018 */  lw         $s2, 0x18($sp)
/* 3CEB4 8003C2B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 3CEB8 8003C2B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3CEBC 8003C2BC 03E00008 */  jr         $ra
/* 3CEC0 8003C2C0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 3CEC4 8003C2C4 00000000 */  nop
/* 3CEC8 8003C2C8 00000000 */  nop
/* 3CECC 8003C2CC 00000000 */  nop
