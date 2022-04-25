	.set noat
	.set noreorder

glabel func_80061D30
/* 62930 80061D30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 62934 80061D34 AFBF0028 */  sw         $ra, 0x28($sp)
/* 62938 80061D38 A7A40020 */  sh         $a0, 0x20($sp)
/* 6293C 80061D3C AFA50024 */  sw         $a1, 0x24($sp)
/* 62940 80061D40 27A40010 */  addiu      $a0, $sp, 0x10
/* 62944 80061D44 3C058006 */  lui        $a1, %hi(func_80061CB4)
/* 62948 80061D48 24A51CB4 */  addiu      $a1, $a1, %lo(func_80061CB4)
/* 6294C 80061D4C 27A60020 */  addiu      $a2, $sp, 0x20
/* 62950 80061D50 0C0190BF */  jal        func_800642FC
/* 62954 80061D54 24070002 */   addiu     $a3, $zero, 2
/* 62958 80061D58 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6295C 80061D5C 03E00008 */  jr         $ra
/* 62960 80061D60 27BD0030 */   addiu     $sp, $sp, 0x30
