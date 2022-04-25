	.set noat
	.set noreorder

glabel func_800F71C4_CE634
/* CE634 800F71C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE638 800F71C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE63C 800F71CC AFB00010 */  sw         $s0, 0x10($sp)
/* CE640 800F71D0 0C03E3D6 */  jal        func_800F8F58_D03C8
/* CE644 800F71D4 00808021 */   addu      $s0, $a0, $zero
/* CE648 800F71D8 0C03E45E */  jal        func_800F9178_D05E8
/* CE64C 800F71DC 00000000 */   nop
/* CE650 800F71E0 0C03DF88 */  jal        func_800F7E20_CF290
/* CE654 800F71E4 00000000 */   nop
/* CE658 800F71E8 0C03DE5B */  jal        func_800F796C_CEDDC
/* CE65C 800F71EC 02002021 */   addu      $a0, $s0, $zero
/* CE660 800F71F0 0C03E407 */  jal        func_800F901C_D048C
/* CE664 800F71F4 00000000 */   nop
/* CE668 800F71F8 3042FFFF */  andi       $v0, $v0, 0xffff
/* CE66C 800F71FC 14400003 */  bnez       $v0, .L800F720C
/* CE670 800F7200 24020001 */   addiu     $v0, $zero, 1
/* CE674 800F7204 3C018010 */  lui        $at, %hi(D_800FE2C4)
/* CE678 800F7208 A422E2C4 */  sh         $v0, %lo(D_800FE2C4)($at)
.L800F720C:
/* CE67C 800F720C 3C028010 */  lui        $v0, %hi(D_800FE30E)
/* CE680 800F7210 8442E30E */  lh         $v0, %lo(D_800FE30E)($v0)
/* CE684 800F7214 28420002 */  slti       $v0, $v0, 2
/* CE688 800F7218 1040001C */  beqz       $v0, .L800F728C
/* CE68C 800F721C 00000000 */   nop
/* CE690 800F7220 3C028010 */  lui        $v0, %hi(D_800FD86E)
/* CE694 800F7224 9042D86E */  lbu        $v0, %lo(D_800FD86E)($v0)
/* CE698 800F7228 24430001 */  addiu      $v1, $v0, 1
/* CE69C 800F722C 3C018010 */  lui        $at, %hi(D_800FD86E)
/* CE6A0 800F7230 A023D86E */  sb         $v1, %lo(D_800FD86E)($at)
/* CE6A4 800F7234 2C42001F */  sltiu      $v0, $v0, 0x1f
/* CE6A8 800F7238 14400033 */  bnez       $v0, .L800F7308
/* CE6AC 800F723C 24020002 */   addiu     $v0, $zero, 2
/* CE6B0 800F7240 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CE6B4 800F7244 A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CE6B8 800F7248 3C01800F */  lui        $at, %hi(D_800ED430)
/* CE6BC 800F724C AC20D430 */  sw         $zero, %lo(D_800ED430)($at)
/* CE6C0 800F7250 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CE6C4 800F7254 A420DE2C */  sh         $zero, %lo(D_800FDE2C)($at)
/* CE6C8 800F7258 3C028010 */  lui        $v0, %hi(D_800FE180)
/* CE6CC 800F725C 8442E180 */  lh         $v0, %lo(D_800FE180)($v0)
/* CE6D0 800F7260 14400004 */  bnez       $v0, .L800F7274
/* CE6D4 800F7264 00000000 */   nop
/* CE6D8 800F7268 3C02800F */  lui        $v0, %hi(func_800F73A4_CE814)
/* CE6DC 800F726C 0803DC9F */  j          .L800F727C
/* CE6E0 800F7270 244273A4 */   addiu     $v0, $v0, %lo(func_800F73A4_CE814)
.L800F7274:
/* CE6E4 800F7274 3C02800F */  lui        $v0, %hi(func_800F7874_CECE4)
/* CE6E8 800F7278 24427874 */  addiu      $v0, $v0, %lo(func_800F7874_CECE4)
.L800F727C:
/* CE6EC 800F727C 0C01E430 */  jal        func_800790C0
/* CE6F0 800F7280 AE020014 */   sw        $v0, 0x14($s0)
/* CE6F4 800F7284 0803DCBE */  j          .L800F72F8
/* CE6F8 800F7288 00000000 */   nop
.L800F728C:
/* CE6FC 800F728C 3C028010 */  lui        $v0, %hi(D_800FE2C4)
/* CE700 800F7290 9442E2C4 */  lhu        $v0, %lo(D_800FE2C4)($v0)
/* CE704 800F7294 1040001C */  beqz       $v0, .L800F7308
/* CE708 800F7298 00000000 */   nop
/* CE70C 800F729C 3C04800F */  lui        $a0, %hi(D_800F3FB0)
/* CE710 800F72A0 0C03E6F2 */  jal        func_800F9BC8_D1038
/* CE714 800F72A4 8C843FB0 */   lw        $a0, %lo(D_800F3FB0)($a0)
/* CE718 800F72A8 00021400 */  sll        $v0, $v0, 0x10
/* CE71C 800F72AC 10400016 */  beqz       $v0, .L800F7308
/* CE720 800F72B0 24020002 */   addiu     $v0, $zero, 2
/* CE724 800F72B4 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CE728 800F72B8 A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CE72C 800F72BC 3C01800F */  lui        $at, %hi(D_800ED430)
/* CE730 800F72C0 AC20D430 */  sw         $zero, %lo(D_800ED430)($at)
/* CE734 800F72C4 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CE738 800F72C8 A420DE2C */  sh         $zero, %lo(D_800FDE2C)($at)
/* CE73C 800F72CC 3C028010 */  lui        $v0, %hi(D_800FE180)
/* CE740 800F72D0 8442E180 */  lh         $v0, %lo(D_800FE180)($v0)
/* CE744 800F72D4 14400005 */  bnez       $v0, .L800F72EC
/* CE748 800F72D8 00000000 */   nop
/* CE74C 800F72DC 3C02800F */  lui        $v0, %hi(func_800F73A4_CE814)
/* CE750 800F72E0 244273A4 */  addiu      $v0, $v0, %lo(func_800F73A4_CE814)
/* CE754 800F72E4 0803DCBE */  j          .L800F72F8
/* CE758 800F72E8 AE020014 */   sw        $v0, 0x14($s0)
.L800F72EC:
/* CE75C 800F72EC 3C02800F */  lui        $v0, %hi(func_800F7874_CECE4)
/* CE760 800F72F0 24427874 */  addiu      $v0, $v0, %lo(func_800F7874_CECE4)
/* CE764 800F72F4 AE020014 */  sw         $v0, 0x14($s0)
.L800F72F8:
/* CE768 800F72F8 0C0025CC */  jal        func_80009730
/* CE76C 800F72FC 00000000 */   nop
/* CE770 800F7300 0C018075 */  jal        func_800601D4
/* CE774 800F7304 24040028 */   addiu     $a0, $zero, 0x28
.L800F7308:
/* CE778 800F7308 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE77C 800F730C 8FB00010 */  lw         $s0, 0x10($sp)
/* CE780 800F7310 03E00008 */  jr         $ra
/* CE784 800F7314 27BD0018 */   addiu     $sp, $sp, 0x18
