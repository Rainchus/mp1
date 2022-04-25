	.set noat
	.set noreorder

glabel func_800619E8
/* 625E8 800619E8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 625EC 800619EC AFBF004C */  sw         $ra, 0x4c($sp)
/* 625F0 800619F0 AFB00048 */  sw         $s0, 0x48($sp)
/* 625F4 800619F4 00C08021 */  addu       $s0, $a2, $zero
/* 625F8 800619F8 A7A40020 */  sh         $a0, 0x20($sp)
/* 625FC 800619FC AFA50024 */  sw         $a1, 0x24($sp)
/* 62600 80061A00 27A40010 */  addiu      $a0, $sp, 0x10
/* 62604 80061A04 3C058006 */  lui        $a1, %hi(func_800619A0)
/* 62608 80061A08 24A519A0 */  addiu      $a1, $a1, %lo(func_800619A0)
/* 6260C 80061A0C 27A60020 */  addiu      $a2, $sp, 0x20
/* 62610 80061A10 0C0190BF */  jal        func_800642FC
/* 62614 80061A14 24070002 */   addiu     $a3, $zero, 2
/* 62618 80061A18 27A40028 */  addiu      $a0, $sp, 0x28
/* 6261C 80061A1C 02002821 */  addu       $a1, $s0, $zero
/* 62620 80061A20 0C023010 */  jal        func_8008C040
/* 62624 80061A24 24060020 */   addiu     $a2, $zero, 0x20
/* 62628 80061A28 8FA20018 */  lw         $v0, 0x18($sp)
/* 6262C 80061A2C 8FBF004C */  lw         $ra, 0x4c($sp)
/* 62630 80061A30 8FB00048 */  lw         $s0, 0x48($sp)
/* 62634 80061A34 03E00008 */  jr         $ra
/* 62638 80061A38 27BD0050 */   addiu     $sp, $sp, 0x50
