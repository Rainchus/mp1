	.set noat
	.set noreorder

glabel func_80059CB8
/* 5A8B8 80059CB8 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 5A8BC 80059CBC 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 5A8C0 80059CC0 00031840 */  sll        $v1, $v1, 1
/* 5A8C4 80059CC4 3C02800F */  lui        $v0, %hi(D_800F2CF0)
/* 5A8C8 80059CC8 00431021 */  addu       $v0, $v0, $v1
/* 5A8CC 80059CCC 94422CF0 */  lhu        $v0, %lo(D_800F2CF0)($v0)
/* 5A8D0 80059CD0 30420F00 */  andi       $v0, $v0, 0xf00
/* 5A8D4 80059CD4 3C01800F */  lui        $at, %hi(D_800EC6EA)
/* 5A8D8 80059CD8 00230821 */  addu       $at, $at, $v1
/* 5A8DC 80059CDC 9423C6EA */  lhu        $v1, %lo(D_800EC6EA)($at)
/* 5A8E0 80059CE0 03E00008 */  jr         $ra
/* 5A8E4 80059CE4 00621025 */   or        $v0, $v1, $v0
