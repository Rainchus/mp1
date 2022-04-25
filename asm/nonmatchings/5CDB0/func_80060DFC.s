	.set noat
	.set noreorder

glabel func_80060DFC
/* 619FC 80060DFC 24020001 */  addiu      $v0, $zero, 1
/* 61A00 80060E00 3C01800C */  lui        $at, %hi(D_800C5994)
/* 61A04 80060E04 A4225994 */  sh         $v0, %lo(D_800C5994)($at)
/* 61A08 80060E08 24020004 */  addiu      $v0, $zero, 4
/* 61A0C 80060E0C 3C01800F */  lui        $at, %hi(D_800F3184)
/* 61A10 80060E10 A4223184 */  sh         $v0, %lo(D_800F3184)($at)
/* 61A14 80060E14 3C01800F */  lui        $at, %hi(D_800F3705)
/* 61A18 80060E18 03E00008 */  jr         $ra
/* 61A1C 80060E1C A0243705 */   sb        $a0, %lo(D_800F3705)($at)
