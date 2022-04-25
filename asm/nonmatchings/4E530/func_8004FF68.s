	.set noat
	.set noreorder

glabel func_8004FF68
/* 50B68 8004FF68 00042840 */  sll        $a1, $a0, 1
/* 50B6C 8004FF6C 00A42821 */  addu       $a1, $a1, $a0
/* 50B70 8004FF70 00052900 */  sll        $a1, $a1, 4
/* 50B74 8004FF74 3C03800F */  lui        $v1, %hi(D_800F32BC)
/* 50B78 8004FF78 00651821 */  addu       $v1, $v1, $a1
/* 50B7C 8004FF7C 846332BC */  lh         $v1, %lo(D_800F32BC)($v1)
/* 50B80 8004FF80 00031140 */  sll        $v0, $v1, 5
/* 50B84 8004FF84 00431023 */  subu       $v0, $v0, $v1
/* 50B88 8004FF88 00021080 */  sll        $v0, $v0, 2
/* 50B8C 8004FF8C 00431021 */  addu       $v0, $v0, $v1
/* 50B90 8004FF90 000210C0 */  sll        $v0, $v0, 3
/* 50B94 8004FF94 3C03800F */  lui        $v1, %hi(D_800F32B8)
/* 50B98 8004FF98 00651821 */  addu       $v1, $v1, $a1
/* 50B9C 8004FF9C 846332B8 */  lh         $v1, %lo(D_800F32B8)($v1)
/* 50BA0 8004FFA0 03E00008 */  jr         $ra
/* 50BA4 8004FFA4 00431021 */   addu      $v0, $v0, $v1
