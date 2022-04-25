	.set noat
	.set noreorder

glabel func_8005DA64
/* 5E664 8005DA64 3082FFFF */  andi       $v0, $a0, 0xffff
/* 5E668 8005DA68 00021100 */  sll        $v0, $v0, 4
/* 5E66C 8005DA6C 3C03800F */  lui        $v1, %hi(D_800ED618)
/* 5E670 8005DA70 2463D618 */  addiu      $v1, $v1, %lo(D_800ED618)
/* 5E674 8005DA74 00433021 */  addu       $a2, $v0, $v1
/* 5E678 8005DA78 94C30004 */  lhu        $v1, 4($a2)
/* 5E67C 8005DA7C 94C20002 */  lhu        $v0, 2($a2)
/* 5E680 8005DA80 10620012 */  beq        $v1, $v0, .L8005DACC
/* 5E684 8005DA84 00000000 */   nop
/* 5E688 8005DA88 A4A4000C */  sh         $a0, 0xc($a1)
/* 5E68C 8005DA8C 94C20000 */  lhu        $v0, ($a2)
/* 5E690 8005DA90 A4A2000E */  sh         $v0, 0xe($a1)
/* 5E694 8005DA94 94C20000 */  lhu        $v0, ($a2)
/* 5E698 8005DA98 8CC3000C */  lw         $v1, 0xc($a2)
/* 5E69C 8005DA9C 00021080 */  sll        $v0, $v0, 2
/* 5E6A0 8005DAA0 00431021 */  addu       $v0, $v0, $v1
/* 5E6A4 8005DAA4 AC450000 */  sw         $a1, ($v0)
/* 5E6A8 8005DAA8 94C20000 */  lhu        $v0, ($a2)
/* 5E6AC 8005DAAC 8CC30008 */  lw         $v1, 8($a2)
/* 5E6B0 8005DAB0 00021040 */  sll        $v0, $v0, 1
/* 5E6B4 8005DAB4 00431021 */  addu       $v0, $v0, $v1
/* 5E6B8 8005DAB8 94420000 */  lhu        $v0, ($v0)
/* 5E6BC 8005DABC A4C20000 */  sh         $v0, ($a2)
/* 5E6C0 8005DAC0 94C20004 */  lhu        $v0, 4($a2)
/* 5E6C4 8005DAC4 24420001 */  addiu      $v0, $v0, 1
/* 5E6C8 8005DAC8 A4C20004 */  sh         $v0, 4($a2)
.L8005DACC:
/* 5E6CC 8005DACC 03E00008 */  jr         $ra
/* 5E6D0 8005DAD0 00000000 */   nop
