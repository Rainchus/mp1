	.set noat
	.set noreorder

glabel func_800760AC
/* 76CAC 800760AC 00042400 */  sll        $a0, $a0, 0x10
/* 76CB0 800760B0 00042403 */  sra        $a0, $a0, 0x10
/* 76CB4 800760B4 00041040 */  sll        $v0, $a0, 1
/* 76CB8 800760B8 00441021 */  addu       $v0, $v0, $a0
/* 76CBC 800760BC 00021080 */  sll        $v0, $v0, 2
/* 76CC0 800760C0 00441021 */  addu       $v0, $v0, $a0
/* 76CC4 800760C4 000210C0 */  sll        $v0, $v0, 3
/* 76CC8 800760C8 3C01800F */  lui        $at, %hi(D_800ED794)
/* 76CCC 800760CC 00220821 */  addu       $at, $at, $v0
/* 76CD0 800760D0 AC25D794 */  sw         $a1, %lo(D_800ED794)($at)
/* 76CD4 800760D4 3C01800F */  lui        $at, %hi(D_800ED798)
/* 76CD8 800760D8 00220821 */  addu       $at, $at, $v0
/* 76CDC 800760DC 03E00008 */  jr         $ra
/* 76CE0 800760E0 AC26D798 */   sw        $a2, %lo(D_800ED798)($at)
