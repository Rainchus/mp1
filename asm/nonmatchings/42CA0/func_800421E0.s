	.set noat
	.set noreorder

glabel func_800421E0
/* 42DE0 800421E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42DE4 800421E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 42DE8 800421E8 3C048004 */  lui        $a0, %hi(func_80042140)
/* 42DEC 800421EC 24842140 */  addiu      $a0, $a0, %lo(func_80042140)
/* 42DF0 800421F0 3405EFFF */  ori        $a1, $zero, 0xefff
/* 42DF4 800421F4 00003021 */  addu       $a2, $zero, $zero
/* 42DF8 800421F8 0C01770A */  jal        func_8005DC28
/* 42DFC 800421FC 00003821 */   addu      $a3, $zero, $zero
/* 42E00 80042200 8FBF0010 */  lw         $ra, 0x10($sp)
/* 42E04 80042204 03E00008 */  jr         $ra
/* 42E08 80042208 27BD0018 */   addiu     $sp, $sp, 0x18
