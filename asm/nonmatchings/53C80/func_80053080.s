	.set noat
	.set noreorder

glabel func_80053080
/* 53C80 80053080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53C84 80053084 AFBF0010 */  sw         $ra, 0x10($sp)
/* 53C88 80053088 3C05800C */  lui        $a1, %hi(D_800C54C0)
/* 53C8C 8005308C 24A554C0 */  addiu      $a1, $a1, %lo(D_800C54C0)
/* 53C90 80053090 3C014180 */  lui        $at, 0x4180
/* 53C94 80053094 44810000 */  mtc1       $at, $f0
/* 53C98 80053098 00000000 */  nop
/* 53C9C 8005309C E4A00000 */  swc1       $f0, ($a1)
/* 53CA0 800530A0 3C014140 */  lui        $at, 0x4140
/* 53CA4 800530A4 44810000 */  mtc1       $at, $f0
/* 53CA8 800530A8 00000000 */  nop
/* 53CAC 800530AC E4A00004 */  swc1       $f0, 4($a1)
/* 53CB0 800530B0 3C014398 */  lui        $at, 0x4398
/* 53CB4 800530B4 44810000 */  mtc1       $at, $f0
/* 53CB8 800530B8 00000000 */  nop
/* 53CBC 800530BC E4A00008 */  swc1       $f0, 8($a1)
/* 53CC0 800530C0 3C014364 */  lui        $at, 0x4364
/* 53CC4 800530C4 44810000 */  mtc1       $at, $f0
/* 53CC8 800530C8 00000000 */  nop
/* 53CCC 800530CC E4A0000C */  swc1       $f0, 0xc($a1)
/* 53CD0 800530D0 0C007535 */  jal        func_8001D4D4
/* 53CD4 800530D4 00002021 */   addu      $a0, $zero, $zero
/* 53CD8 800530D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 53CDC 800530DC 03E00008 */  jr         $ra
/* 53CE0 800530E0 27BD0018 */   addiu     $sp, $sp, 0x18
