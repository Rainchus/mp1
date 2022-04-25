	.set noat
	.set noreorder

glabel func_800790C0
/* 79CC0 800790C0 3C03800F */  lui        $v1, %hi(D_800F3FFC)
/* 79CC4 800790C4 80633FFC */  lb         $v1, %lo(D_800F3FFC)($v1)
/* 79CC8 800790C8 0460000C */  bltz       $v1, .L800790FC
/* 79CCC 800790CC 00031040 */   sll       $v0, $v1, 1
/* 79CD0 800790D0 00431021 */  addu       $v0, $v0, $v1
/* 79CD4 800790D4 00021080 */  sll        $v0, $v0, 2
/* 79CD8 800790D8 00431021 */  addu       $v0, $v0, $v1
/* 79CDC 800790DC 000210C0 */  sll        $v0, $v0, 3
/* 79CE0 800790E0 24030002 */  addiu      $v1, $zero, 2
/* 79CE4 800790E4 3C01800F */  lui        $at, %hi(D_800ED74A)
/* 79CE8 800790E8 00220821 */  addu       $at, $at, $v0
/* 79CEC 800790EC A423D74A */  sh         $v1, %lo(D_800ED74A)($at)
/* 79CF0 800790F0 3C01800F */  lui        $at, %hi(D_800ED74C)
/* 79CF4 800790F4 00220821 */  addu       $at, $at, $v0
/* 79CF8 800790F8 A420D74C */  sh         $zero, %lo(D_800ED74C)($at)
.L800790FC:
/* 79CFC 800790FC 03E00008 */  jr         $ra
/* 79D00 80079100 00000000 */   nop
