	.set noat
	.set noreorder

glabel func_80061FA0
/* 62BA0 80061FA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62BA4 80061FA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 62BA8 80061FA8 00801021 */  addu       $v0, $a0, $zero
/* 62BAC 80061FAC 8FA40028 */  lw         $a0, 0x28($sp)
/* 62BB0 80061FB0 8FA8002C */  lw         $t0, 0x2c($sp)
/* 62BB4 80061FB4 8FA30030 */  lw         $v1, 0x30($sp)
/* 62BB8 80061FB8 A0450002 */  sb         $a1, 2($v0)
/* 62BBC 80061FBC AC430004 */  sw         $v1, 4($v0)
/* 62BC0 80061FC0 AC440008 */  sw         $a0, 8($v0)
/* 62BC4 80061FC4 AC47000C */  sw         $a3, 0xc($v0)
/* 62BC8 80061FC8 AC480010 */  sw         $t0, 0x10($v0)
/* 62BCC 80061FCC 3C04800F */  lui        $a0, %hi(D_800EE31C)
/* 62BD0 80061FD0 8C84E31C */  lw         $a0, %lo(D_800EE31C)($a0)
/* 62BD4 80061FD4 0C022FAC */  jal        func_8008BEB0
/* 62BD8 80061FD8 00402821 */   addu      $a1, $v0, $zero
/* 62BDC 80061FDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 62BE0 80061FE0 03E00008 */  jr         $ra
/* 62BE4 80061FE4 27BD0018 */   addiu     $sp, $sp, 0x18
