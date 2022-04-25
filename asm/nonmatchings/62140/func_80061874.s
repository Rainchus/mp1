	.set noat
	.set noreorder

glabel func_80061874
/* 62474 80061874 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 62478 80061878 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6247C 8006187C A7A40020 */  sh         $a0, 0x20($sp)
/* 62480 80061880 27A40010 */  addiu      $a0, $sp, 0x10
/* 62484 80061884 3C058006 */  lui        $a1, %hi(func_80061838)
/* 62488 80061888 24A51838 */  addiu      $a1, $a1, %lo(func_80061838)
/* 6248C 8006188C 27A60020 */  addiu      $a2, $sp, 0x20
/* 62490 80061890 0C0190BF */  jal        func_800642FC
/* 62494 80061894 24070002 */   addiu     $a3, $zero, 2
/* 62498 80061898 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6249C 8006189C 03E00008 */  jr         $ra
/* 624A0 800618A0 27BD0030 */   addiu     $sp, $sp, 0x30
