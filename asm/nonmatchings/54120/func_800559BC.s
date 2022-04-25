	.set noat
	.set noreorder

glabel func_800559BC
/* 565BC 800559BC 00002021 */  addu       $a0, $zero, $zero
/* 565C0 800559C0 00041180 */  sll        $v0, $a0, 6
.L800559C4:
/* 565C4 800559C4 3C03800E */  lui        $v1, %hi(D_800D83AD)
/* 565C8 800559C8 00621821 */  addu       $v1, $v1, $v0
/* 565CC 800559CC 906383AD */  lbu        $v1, %lo(D_800D83AD)($v1)
/* 565D0 800559D0 34630001 */  ori        $v1, $v1, 1
/* 565D4 800559D4 3C01800E */  lui        $at, %hi(D_800D83AD)
/* 565D8 800559D8 00220821 */  addu       $at, $at, $v0
/* 565DC 800559DC A02383AD */  sb         $v1, %lo(D_800D83AD)($at)
/* 565E0 800559E0 24840001 */  addiu      $a0, $a0, 1
/* 565E4 800559E4 28820004 */  slti       $v0, $a0, 4
/* 565E8 800559E8 5440FFF6 */  bnel       $v0, $zero, .L800559C4
/* 565EC 800559EC 00041180 */   sll       $v0, $a0, 6
/* 565F0 800559F0 03E00008 */  jr         $ra
/* 565F4 800559F4 00000000 */   nop
