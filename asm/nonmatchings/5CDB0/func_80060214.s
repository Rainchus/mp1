	.set noat
	.set noreorder

glabel func_80060214
/* 60E14 80060214 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60E18 80060218 AFBF0010 */  sw         $ra, 0x10($sp)
/* 60E1C 8006021C 00042600 */  sll        $a0, $a0, 0x18
/* 60E20 80060220 0C0030E4 */  jal        func_8000C390
/* 60E24 80060224 00042603 */   sra       $a0, $a0, 0x18
/* 60E28 80060228 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60E2C 8006022C 03E00008 */  jr         $ra
/* 60E30 80060230 27BD0018 */   addiu     $sp, $sp, 0x18
