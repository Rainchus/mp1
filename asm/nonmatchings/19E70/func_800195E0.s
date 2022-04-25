	.set noat
	.set noreorder

glabel func_800195E0
/* 1A1E0 800195E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A1E4 800195E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1A1E8 800195E8 3C04800F */  lui        $a0, %hi(D_800EE960)
/* 1A1EC 800195EC 2484E960 */  addiu      $a0, $a0, %lo(D_800EE960)
/* 1A1F0 800195F0 3C06800C */  lui        $a2, %hi(D_800C30B1)
/* 1A1F4 800195F4 24C630B1 */  addiu      $a2, $a2, %lo(D_800C30B1)
/* 1A1F8 800195F8 0C023F5C */  jal        func_8008FD70
/* 1A1FC 800195FC 00002821 */   addu      $a1, $zero, $zero
/* 1A200 80019600 0002102B */  sltu       $v0, $zero, $v0
/* 1A204 80019604 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1A208 80019608 00021040 */  sll        $v0, $v0, 1
/* 1A20C 8001960C 03E00008 */  jr         $ra
/* 1A210 80019610 27BD0018 */   addiu     $sp, $sp, 0x18
