	.set noat
	.set noreorder

glabel func_8002B3A8
/* 2BFA8 8002B3A8 94830006 */  lhu        $v1, 6($a0)
/* 2BFAC 8002B3AC 94820004 */  lhu        $v0, 4($a0)
/* 2BFB0 8002B3B0 10620008 */  beq        $v1, $v0, .L8002B3D4
/* 2BFB4 8002B3B4 00001021 */   addu      $v0, $zero, $zero
/* 2BFB8 8002B3B8 94820006 */  lhu        $v0, 6($a0)
/* 2BFBC 8002B3BC 24430001 */  addiu      $v1, $v0, 1
/* 2BFC0 8002B3C0 A4830006 */  sh         $v1, 6($a0)
/* 2BFC4 8002B3C4 8C830000 */  lw         $v1, ($a0)
/* 2BFC8 8002B3C8 00021080 */  sll        $v0, $v0, 2
/* 2BFCC 8002B3CC 00431021 */  addu       $v0, $v0, $v1
/* 2BFD0 8002B3D0 8C420000 */  lw         $v0, ($v0)
.L8002B3D4:
/* 2BFD4 8002B3D4 03E00008 */  jr         $ra
/* 2BFD8 8002B3D8 00000000 */   nop
