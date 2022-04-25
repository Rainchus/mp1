	.set noat
	.set noreorder

glabel func_8006407C
/* 64C7C 8006407C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 64C80 80064080 AFBF0044 */  sw         $ra, 0x44($sp)
/* 64C84 80064084 AFB00040 */  sw         $s0, 0x40($sp)
/* 64C88 80064088 3C028006 */  lui        $v0, %hi(func_8006401C)
/* 64C8C 8006408C 2442401C */  addiu      $v0, $v0, %lo(func_8006401C)
/* 64C90 80064090 AFA20028 */  sw         $v0, 0x28($sp)
/* 64C94 80064094 AFA4002C */  sw         $a0, 0x2c($sp)
/* 64C98 80064098 27B00010 */  addiu      $s0, $sp, 0x10
/* 64C9C 8006409C AFB00034 */  sw         $s0, 0x34($sp)
/* 64CA0 800640A0 AC860004 */  sw         $a2, 4($a0)
/* 64CA4 800640A4 A4850008 */  sh         $a1, 8($a0)
/* 64CA8 800640A8 02002021 */  addu       $a0, $s0, $zero
/* 64CAC 800640AC 27A50038 */  addiu      $a1, $sp, 0x38
/* 64CB0 800640B0 0C022188 */  jal        func_80088620
/* 64CB4 800640B4 24060001 */   addiu     $a2, $zero, 1
/* 64CB8 800640B8 3C04800F */  lui        $a0, %hi(D_800F3370)
/* 64CBC 800640BC 24843370 */  addiu      $a0, $a0, %lo(D_800F3370)
/* 64CC0 800640C0 27A50028 */  addiu      $a1, $sp, 0x28
/* 64CC4 800640C4 0C0222C4 */  jal        func_80088B10
/* 64CC8 800640C8 24060001 */   addiu     $a2, $zero, 1
/* 64CCC 800640CC 02002021 */  addu       $a0, $s0, $zero
/* 64CD0 800640D0 00002821 */  addu       $a1, $zero, $zero
/* 64CD4 800640D4 0C022278 */  jal        func_800889E0
/* 64CD8 800640D8 24060001 */   addiu     $a2, $zero, 1
/* 64CDC 800640DC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 64CE0 800640E0 8FB00040 */  lw         $s0, 0x40($sp)
/* 64CE4 800640E4 03E00008 */  jr         $ra
/* 64CE8 800640E8 27BD0048 */   addiu     $sp, $sp, 0x48
