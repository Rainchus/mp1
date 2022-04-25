	.set noat
	.set noreorder

glabel func_8004FA48
/* 50648 8004FA48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5064C 8004FA4C AFBF0018 */  sw         $ra, 0x18($sp)
/* 50650 8004FA50 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 50654 8004FA54 8FA20034 */  lw         $v0, 0x34($sp)
/* 50658 8004FA58 000420C0 */  sll        $a0, $a0, 3
/* 5065C 8004FA5C 00052C00 */  sll        $a1, $a1, 0x10
/* 50660 8004FA60 E7A00010 */  swc1       $f0, 0x10($sp)
/* 50664 8004FA64 00021400 */  sll        $v0, $v0, 0x10
/* 50668 8004FA68 00021403 */  sra        $v0, $v0, 0x10
/* 5066C 8004FA6C AFA20014 */  sw         $v0, 0x14($sp)
/* 50670 8004FA70 3C01800E */  lui        $at, %hi(D_800D8264)
/* 50674 8004FA74 00240821 */  addu       $at, $at, $a0
/* 50678 8004FA78 8C248264 */  lw         $a0, %lo(D_800D8264)($at)
/* 5067C 8004FA7C 0C0085E5 */  jal        func_80021794
/* 50680 8004FA80 00052C03 */   sra       $a1, $a1, 0x10
/* 50684 8004FA84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 50688 8004FA88 03E00008 */  jr         $ra
/* 5068C 8004FA8C 27BD0020 */   addiu     $sp, $sp, 0x20
