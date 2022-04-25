	.set noat
	.set noreorder

glabel func_8006DD60
/* 6E960 8006DD60 00042400 */  sll        $a0, $a0, 0x10
/* 6E964 8006DD64 00042403 */  sra        $a0, $a0, 0x10
/* 6E968 8006DD68 00041080 */  sll        $v0, $a0, 2
/* 6E96C 8006DD6C 00441021 */  addu       $v0, $v0, $a0
/* 6E970 8006DD70 00021140 */  sll        $v0, $v0, 5
/* 6E974 8006DD74 00441023 */  subu       $v0, $v0, $a0
/* 6E978 8006DD78 00021080 */  sll        $v0, $v0, 2
/* 6E97C 8006DD7C 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E980 8006DD80 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E984 8006DD84 03E00008 */  jr         $ra
/* 6E988 8006DD88 00431021 */   addu      $v0, $v0, $v1
