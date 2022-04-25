	.set noat
	.set noreorder

glabel func_80042B60
/* 43760 80042B60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43764 80042B64 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43768 80042B68 3C03800C */  lui        $v1, %hi(D_800C4E0C)
/* 4376C 80042B6C 8C634E0C */  lw         $v1, %lo(D_800C4E0C)($v1)
/* 43770 80042B70 24630004 */  addiu      $v1, $v1, 4
/* 43774 80042B74 3C02800F */  lui        $v0, %hi(D_800F383C)
/* 43778 80042B78 8C42383C */  lw         $v0, %lo(D_800F383C)($v0)
/* 4377C 80042B7C 0043102B */  sltu       $v0, $v0, $v1
/* 43780 80042B80 14400007 */  bnez       $v0, .L80042BA0
/* 43784 80042B84 00000000 */   nop
/* 43788 80042B88 0C0180AB */  jal        func_800602AC
/* 4378C 80042B8C 2404003D */   addiu     $a0, $zero, 0x3d
/* 43790 80042B90 3C02800F */  lui        $v0, %hi(D_800F383C)
/* 43794 80042B94 8C42383C */  lw         $v0, %lo(D_800F383C)($v0)
/* 43798 80042B98 3C01800C */  lui        $at, %hi(D_800C4E0C)
/* 4379C 80042B9C AC224E0C */  sw         $v0, %lo(D_800C4E0C)($at)
.L80042BA0:
/* 437A0 80042BA0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 437A4 80042BA4 03E00008 */  jr         $ra
/* 437A8 80042BA8 27BD0018 */   addiu     $sp, $sp, 0x18
