	.set noat
	.set noreorder

glabel func_80052BE8
/* 537E8 80052BE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 537EC 80052BEC AFBF001C */  sw         $ra, 0x1c($sp)
/* 537F0 80052BF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 537F4 80052BF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 537F8 80052BF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 537FC 80052BFC 00A08821 */  addu       $s1, $a1, $zero
/* 53800 80052C00 0C014AA3 */  jal        func_80052A8C
/* 53804 80052C04 00C09021 */   addu      $s2, $a2, $zero
/* 53808 80052C08 00408021 */  addu       $s0, $v0, $zero
/* 5380C 80052C0C 0C014AA3 */  jal        func_80052A8C
/* 53810 80052C10 2404FFFF */   addiu     $a0, $zero, -1
/* 53814 80052C14 16020005 */  bne        $s0, $v0, .L80052C2C
/* 53818 80052C18 00112C00 */   sll       $a1, $s1, 0x10
/* 5381C 80052C1C 8E040020 */  lw         $a0, 0x20($s0)
/* 53820 80052C20 00052C03 */  sra        $a1, $a1, 0x10
/* 53824 80052C24 0C00FA07 */  jal        func_8003E81C
/* 53828 80052C28 3246FFFF */   andi      $a2, $s2, 0xffff
.L80052C2C:
/* 5382C 80052C2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 53830 80052C30 8FB20018 */  lw         $s2, 0x18($sp)
/* 53834 80052C34 8FB10014 */  lw         $s1, 0x14($sp)
/* 53838 80052C38 8FB00010 */  lw         $s0, 0x10($sp)
/* 5383C 80052C3C 03E00008 */  jr         $ra
/* 53840 80052C40 27BD0020 */   addiu     $sp, $sp, 0x20
