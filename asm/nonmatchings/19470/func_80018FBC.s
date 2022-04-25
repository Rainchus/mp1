	.set noat
	.set noreorder

glabel func_80018FBC
/* 19BBC 80018FBC 00C04021 */  addu       $t0, $a2, $zero
/* 19BC0 80018FC0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19BC4 80018FC4 000410C0 */  sll        $v0, $a0, 3
/* 19BC8 80018FC8 00441021 */  addu       $v0, $v0, $a0
/* 19BCC 80018FCC 00021080 */  sll        $v0, $v0, 2
/* 19BD0 80018FD0 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19BD4 80018FD4 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19BD8 80018FD8 00431821 */  addu       $v1, $v0, $v1
/* 19BDC 80018FDC 94620000 */  lhu        $v0, ($v1)
/* 19BE0 80018FE0 34420002 */  ori        $v0, $v0, 2
/* 19BE4 80018FE4 A4620000 */  sh         $v0, ($v1)
/* 19BE8 80018FE8 00063400 */  sll        $a2, $a2, 0x10
/* 19BEC 80018FEC 18C00002 */  blez       $a2, .L80018FF8
/* 19BF0 80018FF0 A465001C */   sh        $a1, 0x1c($v1)
/* 19BF4 80018FF4 A468001E */  sh         $t0, 0x1e($v1)
.L80018FF8:
/* 19BF8 80018FF8 03E00008 */  jr         $ra
/* 19BFC 80018FFC A4670020 */   sh        $a3, 0x20($v1)
