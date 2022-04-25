	.set noat
	.set noreorder

glabel func_8005949C
/* 5A09C 8005949C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5A0A0 800594A0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5A0A4 800594A4 00042400 */  sll        $a0, $a0, 0x10
/* 5A0A8 800594A8 00042403 */  sra        $a0, $a0, 0x10
/* 5A0AC 800594AC 27A50010 */  addiu      $a1, $sp, 0x10
/* 5A0B0 800594B0 0C0164D5 */  jal        func_80059354
/* 5A0B4 800594B4 27A60012 */   addiu     $a2, $sp, 0x12
/* 5A0B8 800594B8 87A20010 */  lh         $v0, 0x10($sp)
/* 5A0BC 800594BC 3C04800F */  lui        $a0, %hi(D_800ED119)
/* 5A0C0 800594C0 00822021 */  addu       $a0, $a0, $v0
/* 5A0C4 800594C4 9084D119 */  lbu        $a0, %lo(D_800ED119)($a0)
/* 5A0C8 800594C8 87A30012 */  lh         $v1, 0x12($sp)
/* 5A0CC 800594CC 24020001 */  addiu      $v0, $zero, 1
/* 5A0D0 800594D0 00621004 */  sllv       $v0, $v0, $v1
/* 5A0D4 800594D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5A0D8 800594D8 00821024 */  and        $v0, $a0, $v0
/* 5A0DC 800594DC 03E00008 */  jr         $ra
/* 5A0E0 800594E0 27BD0020 */   addiu     $sp, $sp, 0x20
