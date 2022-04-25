	.set noat
	.set noreorder

glabel func_80059C28
/* 5A828 80059C28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5A82C 80059C2C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5A830 80059C30 AFB00018 */  sw         $s0, 0x18($sp)
/* 5A834 80059C34 AFA00010 */  sw         $zero, 0x10($sp)
/* 5A838 80059C38 AFA00014 */  sw         $zero, 0x14($sp)
/* 5A83C 80059C3C 24040040 */  addiu      $a0, $zero, 0x40
/* 5A840 80059C40 240500AA */  addiu      $a1, $zero, 0xaa
/* 5A844 80059C44 240600C0 */  addiu      $a2, $zero, 0xc0
/* 5A848 80059C48 0C01B404 */  jal        func_8006D010
/* 5A84C 80059C4C 24070030 */   addiu     $a3, $zero, 0x30
/* 5A850 80059C50 00028400 */  sll        $s0, $v0, 0x10
/* 5A854 80059C54 00108403 */  sra        $s0, $s0, 0x10
/* 5A858 80059C58 02002021 */  addu       $a0, $s0, $zero
/* 5A85C 80059C5C 24050040 */  addiu      $a1, $zero, 0x40
/* 5A860 80059C60 0C01B687 */  jal        func_8006DA1C
/* 5A864 80059C64 24060040 */   addiu     $a2, $zero, 0x40
/* 5A868 80059C68 02002021 */  addu       $a0, $s0, $zero
/* 5A86C 80059C6C 0C01B81C */  jal        func_8006E070
/* 5A870 80059C70 00002821 */   addu      $a1, $zero, $zero
/* 5A874 80059C74 0C01C5F0 */  jal        func_800717C0
/* 5A878 80059C78 02002021 */   addu      $a0, $s0, $zero
/* 5A87C 80059C7C 02002021 */  addu       $a0, $s0, $zero
/* 5A880 80059C80 0C01B855 */  jal        func_8006E154
/* 5A884 80059C84 240500C8 */   addiu     $a1, $zero, 0xc8
/* 5A888 80059C88 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 5A88C 80059C8C 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 5A890 80059C90 3C050001 */  lui        $a1, 1
/* 5A894 80059C94 00452804 */  sllv       $a1, $a1, $v0
/* 5A898 80059C98 02002021 */  addu       $a0, $s0, $zero
/* 5A89C 80059C9C 0C01C557 */  jal        func_8007155C
/* 5A8A0 80059CA0 00052C03 */   sra       $a1, $a1, 0x10
/* 5A8A4 80059CA4 02001021 */  addu       $v0, $s0, $zero
/* 5A8A8 80059CA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5A8AC 80059CAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 5A8B0 80059CB0 03E00008 */  jr         $ra
/* 5A8B4 80059CB4 27BD0020 */   addiu     $sp, $sp, 0x20
