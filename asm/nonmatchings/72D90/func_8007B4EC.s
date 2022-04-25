	.set noat
	.set noreorder

glabel func_8007B4EC
/* 7C0EC 8007B4EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C0F0 8007B4F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7C0F4 8007B4F4 3C048008 */  lui        $a0, %hi(func_8007B52C)
/* 7C0F8 8007B4F8 2484B52C */  addiu      $a0, $a0, %lo(func_8007B52C)
/* 7C0FC 8007B4FC 24053FFF */  addiu      $a1, $zero, 0x3fff
/* 7C100 8007B500 24060800 */  addiu      $a2, $zero, 0x800
/* 7C104 8007B504 0C01770A */  jal        func_8005DC28
/* 7C108 8007B508 00003821 */   addu      $a3, $zero, $zero
/* 7C10C 8007B50C 3C01800F */  lui        $at, %hi(D_800F0A24)
/* 7C110 8007B510 AC220A24 */  sw         $v0, %lo(D_800F0A24)($at)
/* 7C114 8007B514 00402021 */  addu       $a0, $v0, $zero
/* 7C118 8007B518 0C017640 */  jal        func_8005D900
/* 7C11C 8007B51C 240500A0 */   addiu     $a1, $zero, 0xa0
/* 7C120 8007B520 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C124 8007B524 03E00008 */  jr         $ra
/* 7C128 8007B528 27BD0018 */   addiu     $sp, $sp, 0x18
