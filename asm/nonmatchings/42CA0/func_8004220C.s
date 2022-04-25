	.set noat
	.set noreorder

glabel func_8004220C
/* 42E0C 8004220C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42E10 80042210 AFBF0010 */  sw         $ra, 0x10($sp)
/* 42E14 80042214 3C048004 */  lui        $a0, %hi(func_800420A0)
/* 42E18 80042218 248420A0 */  addiu      $a0, $a0, %lo(func_800420A0)
/* 42E1C 8004221C 3405EFFF */  ori        $a1, $zero, 0xefff
/* 42E20 80042220 00003021 */  addu       $a2, $zero, $zero
/* 42E24 80042224 0C01770A */  jal        func_8005DC28
/* 42E28 80042228 00003821 */   addu      $a3, $zero, $zero
/* 42E2C 8004222C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 42E30 80042230 03E00008 */  jr         $ra
/* 42E34 80042234 27BD0018 */   addiu     $sp, $sp, 0x18
/* 42E38 80042238 00000000 */  nop
/* 42E3C 8004223C 00000000 */  nop
