	.set noat
	.set noreorder

glabel func_8004D008
/* 4DC08 8004D008 3C02800F */  lui        $v0, %hi(D_800ED5C6)
/* 4DC0C 8004D00C 9442D5C6 */  lhu        $v0, %lo(D_800ED5C6)($v0)
/* 4DC10 8004D010 3C03800F */  lui        $v1, %hi(D_800ED5C8)
/* 4DC14 8004D014 9463D5C8 */  lhu        $v1, %lo(D_800ED5C8)($v1)
/* 4DC18 8004D018 00431023 */  subu       $v0, $v0, $v1
/* 4DC1C 8004D01C 24420001 */  addiu      $v0, $v0, 1
/* 4DC20 8004D020 00021400 */  sll        $v0, $v0, 0x10
/* 4DC24 8004D024 03E00008 */  jr         $ra
/* 4DC28 8004D028 00021403 */   sra       $v0, $v0, 0x10
