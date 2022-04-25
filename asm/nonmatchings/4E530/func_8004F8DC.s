	.set noat
	.set noreorder

glabel func_8004F8DC
/* 504DC 8004F8DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 504E0 8004F8E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 504E4 8004F8E4 0C00779C */  jal        func_8001DE70
/* 504E8 8004F8E8 24040020 */   addiu     $a0, $zero, 0x20
/* 504EC 8004F8EC 00001821 */  addu       $v1, $zero, $zero
/* 504F0 8004F8F0 000310C0 */  sll        $v0, $v1, 3
.L8004F8F4:
/* 504F4 8004F8F4 3C01800E */  lui        $at, %hi(D_800D8264)
/* 504F8 8004F8F8 00220821 */  addu       $at, $at, $v0
/* 504FC 8004F8FC AC208264 */  sw         $zero, %lo(D_800D8264)($at)
/* 50500 8004F900 3C01800E */  lui        $at, %hi(D_800D8260)
/* 50504 8004F904 00220821 */  addu       $at, $at, $v0
/* 50508 8004F908 AC208260 */  sw         $zero, %lo(D_800D8260)($at)
/* 5050C 8004F90C 24630001 */  addiu      $v1, $v1, 1
/* 50510 8004F910 28620010 */  slti       $v0, $v1, 0x10
/* 50514 8004F914 1440FFF7 */  bnez       $v0, .L8004F8F4
/* 50518 8004F918 000310C0 */   sll       $v0, $v1, 3
/* 5051C 8004F91C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50520 8004F920 03E00008 */  jr         $ra
/* 50524 8004F924 27BD0018 */   addiu     $sp, $sp, 0x18
