	.set noat
	.set noreorder

glabel func_800710A4
/* 71CA4 800710A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 71CA8 800710A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 71CAC 800710AC 00042400 */  sll        $a0, $a0, 0x10
/* 71CB0 800710B0 00052C00 */  sll        $a1, $a1, 0x10
/* 71CB4 800710B4 00063400 */  sll        $a2, $a2, 0x10
/* 71CB8 800710B8 00073C00 */  sll        $a3, $a3, 0x10
/* 71CBC 800710BC 24020001 */  addiu      $v0, $zero, 1
/* 71CC0 800710C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 71CC4 800710C4 00042403 */  sra        $a0, $a0, 0x10
/* 71CC8 800710C8 00052C03 */  sra        $a1, $a1, 0x10
/* 71CCC 800710CC 00063403 */  sra        $a2, $a2, 0x10
/* 71CD0 800710D0 0C01C439 */  jal        func_800710E4
/* 71CD4 800710D4 00073C03 */   sra       $a3, $a3, 0x10
/* 71CD8 800710D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 71CDC 800710DC 03E00008 */  jr         $ra
/* 71CE0 800710E0 27BD0020 */   addiu     $sp, $sp, 0x20
