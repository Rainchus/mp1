	.set noat
	.set noreorder

glabel func_800601D4
/* 60DD4 800601D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60DD8 800601D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 60DDC 800601DC 2402FFFF */  addiu      $v0, $zero, -1
/* 60DE0 800601E0 3C01800C */  lui        $at, %hi(D_800C5996)
/* 60DE4 800601E4 A4225996 */  sh         $v0, %lo(D_800C5996)($at)
/* 60DE8 800601E8 00042400 */  sll        $a0, $a0, 0x10
/* 60DEC 800601EC 0C003094 */  jal        func_8000C250
/* 60DF0 800601F0 00042403 */   sra       $a0, $a0, 0x10
/* 60DF4 800601F4 3C02800C */  lui        $v0, %hi(D_800C5998)
/* 60DF8 800601F8 94425998 */  lhu        $v0, %lo(D_800C5998)($v0)
/* 60DFC 800601FC 34420008 */  ori        $v0, $v0, 8
/* 60E00 80060200 3C01800C */  lui        $at, %hi(D_800C5998)
/* 60E04 80060204 A4225998 */  sh         $v0, %lo(D_800C5998)($at)
/* 60E08 80060208 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60E0C 8006020C 03E00008 */  jr         $ra
/* 60E10 80060210 27BD0018 */   addiu     $sp, $sp, 0x18
