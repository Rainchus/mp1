	.set noat
	.set noreorder

glabel func_8005FFFC
/* 60BFC 8005FFFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 60C00 80060000 AFBF0018 */  sw         $ra, 0x18($sp)
/* 60C04 80060004 3C028006 */  lui        $v0, %hi(func_80060058)
/* 60C08 80060008 24420058 */  addiu      $v0, $v0, %lo(func_80060058)
/* 60C0C 8006000C AFA20010 */  sw         $v0, 0x10($sp)
/* 60C10 80060010 24047FD8 */  addiu      $a0, $zero, 0x7fd8
/* 60C14 80060014 00002821 */  addu       $a1, $zero, $zero
/* 60C18 80060018 00003021 */  addu       $a2, $zero, $zero
/* 60C1C 8006001C 0C0174E1 */  jal        func_8005D384
/* 60C20 80060020 2407FFFF */   addiu     $a3, $zero, -1
/* 60C24 80060024 3C01800F */  lui        $at, %hi(D_800EE750)
/* 60C28 80060028 AC22E750 */  sw         $v0, %lo(D_800EE750)($at)
/* 60C2C 8006002C 00402021 */  addu       $a0, $v0, $zero
/* 60C30 80060030 0C01762E */  jal        func_8005D8B8
/* 60C34 80060034 240500A0 */   addiu     $a1, $zero, 0xa0
/* 60C38 80060038 3C03800F */  lui        $v1, %hi(D_800EE750)
/* 60C3C 8006003C 8C63E750 */  lw         $v1, %lo(D_800EE750)($v1)
/* 60C40 80060040 3C02800F */  lui        $v0, %hi(D_800F6520)
/* 60C44 80060044 8C426520 */  lw         $v0, %lo(D_800F6520)($v0)
/* 60C48 80060048 8FBF0018 */  lw         $ra, 0x18($sp)
/* 60C4C 8006004C AC62004C */  sw         $v0, 0x4c($v1)
/* 60C50 80060050 03E00008 */  jr         $ra
/* 60C54 80060054 27BD0020 */   addiu     $sp, $sp, 0x20
