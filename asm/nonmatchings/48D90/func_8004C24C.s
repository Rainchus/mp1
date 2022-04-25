	.set noat
	.set noreorder

glabel func_8004C24C
/* 4CE4C 8004C24C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4CE50 8004C250 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4CE54 8004C254 AFB20018 */  sw         $s2, 0x18($sp)
/* 4CE58 8004C258 AFB10014 */  sw         $s1, 0x14($sp)
/* 4CE5C 8004C25C AFB00010 */  sw         $s0, 0x10($sp)
/* 4CE60 8004C260 00008021 */  addu       $s0, $zero, $zero
/* 4CE64 8004C264 30B1FFFF */  andi       $s1, $a1, 0xffff
/* 4CE68 8004C268 00042400 */  sll        $a0, $a0, 0x10
/* 4CE6C 8004C26C 00049403 */  sra        $s2, $a0, 0x10
.L8004C270:
/* 4CE70 8004C270 0C01308C */  jal        func_8004C230
/* 4CE74 8004C274 02202021 */   addu      $a0, $s1, $zero
/* 4CE78 8004C278 00021400 */  sll        $v0, $v0, 0x10
/* 4CE7C 8004C27C 00021403 */  sra        $v0, $v0, 0x10
/* 4CE80 8004C280 0202102A */  slt        $v0, $s0, $v0
/* 4CE84 8004C284 1040000A */  beqz       $v0, .L8004C2B0
/* 4CE88 8004C288 02202021 */   addu      $a0, $s1, $zero
/* 4CE8C 8004C28C 0C013081 */  jal        func_8004C204
/* 4CE90 8004C290 3205FFFF */   andi      $a1, $s0, 0xffff
/* 4CE94 8004C294 00021400 */  sll        $v0, $v0, 0x10
/* 4CE98 8004C298 00021403 */  sra        $v0, $v0, 0x10
/* 4CE9C 8004C29C 5452FFF4 */  bnel       $v0, $s2, .L8004C270
/* 4CEA0 8004C2A0 26100001 */   addiu     $s0, $s0, 1
/* 4CEA4 8004C2A4 00101400 */  sll        $v0, $s0, 0x10
/* 4CEA8 8004C2A8 080130AD */  j          .L8004C2B4
/* 4CEAC 8004C2AC 00021403 */   sra       $v0, $v0, 0x10
.L8004C2B0:
/* 4CEB0 8004C2B0 2402FFFF */  addiu      $v0, $zero, -1
.L8004C2B4:
/* 4CEB4 8004C2B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4CEB8 8004C2B8 8FB20018 */  lw         $s2, 0x18($sp)
/* 4CEBC 8004C2BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 4CEC0 8004C2C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 4CEC4 8004C2C4 03E00008 */  jr         $ra
/* 4CEC8 8004C2C8 27BD0020 */   addiu     $sp, $sp, 0x20
