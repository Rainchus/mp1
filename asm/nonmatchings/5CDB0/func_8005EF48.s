	.set noat
	.set noreorder

glabel func_8005EF48
/* 5FB48 8005EF48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5FB4C 8005EF4C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5FB50 8005EF50 AFB00018 */  sw         $s0, 0x18($sp)
/* 5FB54 8005EF54 3C028006 */  lui        $v0, %hi(func_8005F9C0)
/* 5FB58 8005EF58 2442F9C0 */  addiu      $v0, $v0, %lo(func_8005F9C0)
/* 5FB5C 8005EF5C AFA20010 */  sw         $v0, 0x10($sp)
/* 5FB60 8005EF60 24047FD9 */  addiu      $a0, $zero, 0x7fd9
/* 5FB64 8005EF64 00002821 */  addu       $a1, $zero, $zero
/* 5FB68 8005EF68 00003021 */  addu       $a2, $zero, $zero
/* 5FB6C 8005EF6C 0C0174E1 */  jal        func_8005D384
/* 5FB70 8005EF70 2407FFFF */   addiu     $a3, $zero, -1
/* 5FB74 8005EF74 00408021 */  addu       $s0, $v0, $zero
/* 5FB78 8005EF78 3C01800F */  lui        $at, %hi(D_800F3858)
/* 5FB7C 8005EF7C AC303858 */  sw         $s0, %lo(D_800F3858)($at)
/* 5FB80 8005EF80 02002021 */  addu       $a0, $s0, $zero
/* 5FB84 8005EF84 0C01762E */  jal        func_8005D8B8
/* 5FB88 8005EF88 240500A0 */   addiu     $a1, $zero, 0xa0
/* 5FB8C 8005EF8C A200004C */  sb         $zero, 0x4c($s0)
/* 5FB90 8005EF90 A200004D */  sb         $zero, 0x4d($s0)
/* 5FB94 8005EF94 A200004E */  sb         $zero, 0x4e($s0)
/* 5FB98 8005EF98 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FB9C 8005EF9C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5FBA0 8005EFA0 03E00008 */  jr         $ra
/* 5FBA4 8005EFA4 27BD0020 */   addiu     $sp, $sp, 0x20
