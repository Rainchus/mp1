	.set noat
	.set noreorder

glabel func_8004DB9C
/* 4E79C 8004DB9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4E7A0 8004DBA0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4E7A4 8004DBA4 3C01800C */  lui        $at, %hi(D_800C5214)
/* 4E7A8 8004DBA8 0C0136F2 */  jal        func_8004DBC8
/* 4E7AC 8004DBAC AC245214 */   sw        $a0, %lo(D_800C5214)($at)
/* 4E7B0 8004DBB0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4E7B4 8004DBB4 03E00008 */  jr         $ra
/* 4E7B8 8004DBB8 27BD0018 */   addiu     $sp, $sp, 0x18
