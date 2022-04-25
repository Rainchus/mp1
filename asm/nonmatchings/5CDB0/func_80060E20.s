	.set noat
	.set noreorder

glabel func_80060E20
/* 61A20 80060E20 3C01800F */  lui        $at, %hi(D_800F3F30)
/* 61A24 80060E24 A4243F30 */  sh         $a0, %lo(D_800F3F30)($at)
/* 61A28 80060E28 3C01800F */  lui        $at, %hi(D_800ED726)
/* 61A2C 80060E2C A425D726 */  sh         $a1, %lo(D_800ED726)($at)
/* 61A30 80060E30 3C01800F */  lui        $at, %hi(D_800F64EC)
/* 61A34 80060E34 A42664EC */  sh         $a2, %lo(D_800F64EC)($at)
/* 61A38 80060E38 24020001 */  addiu      $v0, $zero, 1
/* 61A3C 80060E3C 3C01800C */  lui        $at, %hi(D_800C5994)
/* 61A40 80060E40 A4225994 */  sh         $v0, %lo(D_800C5994)($at)
/* 61A44 80060E44 24020004 */  addiu      $v0, $zero, 4
/* 61A48 80060E48 3C01800F */  lui        $at, %hi(D_800F3184)
/* 61A4C 80060E4C 03E00008 */  jr         $ra
/* 61A50 80060E50 A4223184 */   sh        $v0, %lo(D_800F3184)($at)
