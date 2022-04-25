	.set noat
	.set noreorder

glabel func_80018E0C
/* 19A0C 80018E0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19A10 80018E10 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19A14 80018E14 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19A18 80018E18 000410C0 */  sll        $v0, $a0, 3
/* 19A1C 80018E1C 00441021 */  addu       $v0, $v0, $a0
/* 19A20 80018E20 00021080 */  sll        $v0, $v0, 2
/* 19A24 80018E24 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19A28 80018E28 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19A2C 80018E2C 00431021 */  addu       $v0, $v0, $v1
/* 19A30 80018E30 00053400 */  sll        $a2, $a1, 0x10
/* 19A34 80018E34 84440004 */  lh         $a0, 4($v0)
/* 19A38 80018E38 00002821 */  addu       $a1, $zero, $zero
/* 19A3C 80018E3C 0C019C77 */  jal        func_800671DC
/* 19A40 80018E40 00063403 */   sra       $a2, $a2, 0x10
/* 19A44 80018E44 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19A48 80018E48 03E00008 */  jr         $ra
/* 19A4C 80018E4C 27BD0018 */   addiu     $sp, $sp, 0x18
