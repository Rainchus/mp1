	.set noat
	.set noreorder

glabel func_8001D4D4
/* 1E0D4 8001D4D4 00042400 */  sll        $a0, $a0, 0x10
/* 1E0D8 8001D4D8 00042403 */  sra        $a0, $a0, 0x10
/* 1E0DC 8001D4DC 00041080 */  sll        $v0, $a0, 2
/* 1E0E0 8001D4E0 00441021 */  addu       $v0, $v0, $a0
/* 1E0E4 8001D4E4 00021140 */  sll        $v0, $v0, 5
/* 1E0E8 8001D4E8 00441023 */  subu       $v0, $v0, $a0
/* 1E0EC 8001D4EC 000210C0 */  sll        $v0, $v0, 3
/* 1E0F0 8001D4F0 3C03800C */  lui        $v1, %hi(D_800C3110)
/* 1E0F4 8001D4F4 8C633110 */  lw         $v1, %lo(D_800C3110)($v1)
/* 1E0F8 8001D4F8 00431021 */  addu       $v0, $v0, $v1
/* 1E0FC 8001D4FC C4A00000 */  lwc1       $f0, ($a1)
/* 1E100 8001D500 E44000D8 */  swc1       $f0, 0xd8($v0)
/* 1E104 8001D504 C4A00004 */  lwc1       $f0, 4($a1)
/* 1E108 8001D508 E44000DC */  swc1       $f0, 0xdc($v0)
/* 1E10C 8001D50C C4A00008 */  lwc1       $f0, 8($a1)
/* 1E110 8001D510 E44000E0 */  swc1       $f0, 0xe0($v0)
/* 1E114 8001D514 C4A0000C */  lwc1       $f0, 0xc($a1)
/* 1E118 8001D518 03E00008 */  jr         $ra
/* 1E11C 8001D51C E44000E4 */   swc1      $f0, 0xe4($v0)
