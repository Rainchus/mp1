	.set noat
	.set noreorder

glabel func_8005B024
/* 5BC24 8005B024 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5BC28 8005B028 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5BC2C 8005B02C 0C016BF2 */  jal        func_8005AFC8
/* 5BC30 8005B030 00000000 */   nop
/* 5BC34 8005B034 A7A20010 */  sh         $v0, 0x10($sp)
/* 5BC38 8005B038 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BC3C 8005B03C 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BC40 8005B040 10400004 */  beqz       $v0, .L8005B054
/* 5BC44 8005B044 240401F0 */   addiu     $a0, $zero, 0x1f0
/* 5BC48 8005B048 27A50010 */  addiu      $a1, $sp, 0x10
/* 5BC4C 8005B04C 0C006541 */  jal        func_80019504
/* 5BC50 8005B050 24060002 */   addiu     $a2, $zero, 2
.L8005B054:
/* 5BC54 8005B054 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5BC58 8005B058 03E00008 */  jr         $ra
/* 5BC5C 8005B05C 27BD0020 */   addiu     $sp, $sp, 0x20
