	.set noat
	.set noreorder

glabel func_8005AA5C
/* 5B65C 8005AA5C 9082004C */  lbu        $v0, 0x4c($a0)
/* 5B660 8005AA60 2442FFFF */  addiu      $v0, $v0, -1
/* 5B664 8005AA64 A082004C */  sb         $v0, 0x4c($a0)
/* 5B668 8005AA68 9082004C */  lbu        $v0, 0x4c($a0)
/* 5B66C 8005AA6C 14400004 */  bnez       $v0, .L8005AA80
/* 5B670 8005AA70 00000000 */   nop
/* 5B674 8005AA74 3C028006 */  lui        $v0, %hi(func_8005A4C0)
/* 5B678 8005AA78 2442A4C0 */  addiu      $v0, $v0, %lo(func_8005A4C0)
/* 5B67C 8005AA7C AC820014 */  sw         $v0, 0x14($a0)
.L8005AA80:
/* 5B680 8005AA80 03E00008 */  jr         $ra
/* 5B684 8005AA84 00000000 */   nop
