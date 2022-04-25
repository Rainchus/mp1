	.set noat
	.set noreorder

glabel func_80080E70
/* 81A70 80080E70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81A74 80080E74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81A78 80080E78 0C02035E */  jal        func_80080D78
/* 81A7C 80080E7C AFA40018 */   sw        $a0, 0x18($sp)
/* 81A80 80080E80 10400003 */  beqz       $v0, .L80080E90
/* 81A84 80080E84 00000000 */   nop
/* 81A88 80080E88 10000003 */  b          .L80080E98
/* 81A8C 80080E8C 304200FF */   andi      $v0, $v0, 0xff
.L80080E90:
/* 81A90 80080E90 0C020388 */  jal        func_80080E20
/* 81A94 80080E94 8FA40018 */   lw        $a0, 0x18($sp)
.L80080E98:
/* 81A98 80080E98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81A9C 80080E9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81AA0 80080EA0 03E00008 */  jr         $ra
/* 81AA4 80080EA4 00000000 */   nop
