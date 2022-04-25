	.set noat
	.set noreorder

glabel func_8006DD30
/* 6E930 8006DD30 00042400 */  sll        $a0, $a0, 0x10
/* 6E934 8006DD34 00042403 */  sra        $a0, $a0, 0x10
/* 6E938 8006DD38 00041080 */  sll        $v0, $a0, 2
/* 6E93C 8006DD3C 00441021 */  addu       $v0, $v0, $a0
/* 6E940 8006DD40 00021140 */  sll        $v0, $v0, 5
/* 6E944 8006DD44 00441023 */  subu       $v0, $v0, $a0
/* 6E948 8006DD48 00021080 */  sll        $v0, $v0, 2
/* 6E94C 8006DD4C 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E950 8006DD50 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E954 8006DD54 00431021 */  addu       $v0, $v0, $v1
/* 6E958 8006DD58 03E00008 */  jr         $ra
/* 6E95C 8006DD5C A0450005 */   sb        $a1, 5($v0)
